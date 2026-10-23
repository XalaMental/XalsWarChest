-- AppearanceData.lua
-- Xal's Warchest - the data layer.
--
-- No external database ships and none is needed. Everything here is read live
-- from C_TransmogCollection, so it can't go out of date when a patch adds
-- appearances.
--
-- Weapons ONLY - this is Armoire's counterpart, and Armoire already covers
-- every armor slot. GetCategoryAppearances returns UNIQUE VISUALS, not items;
-- Blizzard already folds every item that shares one weapon model into a
-- single visualID, so "unique looks" is the game's own unit here too.

local addonName, addonTable = ...
local Data = addonTable.AppearanceData

-- ── Categories ───────────────────────────────────────────────
-- Enum.TransmogCollectionType runs 0 (None) through 29 (Paired). 0 is not a
-- real slot and Paired is an internal pairing type rather than something a
-- player collects, so the usable range is 1..28. Built at runtime rather
-- than hardcoded so a patch adding a category is picked up for free.
--
-- Confirmed against Armoire's own research: armor and weapons are reached by
-- two DIFFERENT routes. Weapons use GetCategoryInfo, which returns
-- isWeapon/canMainHand/canOffHand/canRanged and nil for every armor
-- category - exactly the filter this file needs, since it only wants the
-- weapon half.
local FIRST_CATEGORY, LAST_CATEGORY = 1, 28

Data.categories = {}   -- ordered list of { id, name, canMainHand, canOffHand, canRanged }
Data.byCategory = {}   -- [categoryID] = { entries = {...}, total, collected, resolved }
Data.stats = { total = 0, collected = 0 }
Data.built = false

-- Entries waiting on the server for their item name, keyed by itemID so an
-- ITEM_DATA_LOAD_RESULT can fill them in without walking the whole roster.
Data.pendingByItem = {}

-- Categories that produced no rows, and why. Purely diagnostic - read by
-- /xwc dump so a missing slot can be explained rather than just absent.
Data.skipped = {}

-- ── Source labels ────────────────────────────────────────────
-- Same numbering Armoire confirmed live from the real client globals:
-- 1 Boss Drop, 2 Quest, 3 Vendor, 4 World Drop, 5 Achievement, 6 Profession,
-- 7 Trading Post. The client carries localised text in TRANSMOG_SOURCE_<n>
-- globals - read those first, fall back to English only if one is missing.
local FALLBACK_SOURCE = {
    [0] = "Unknown",
    [1] = "Dungeon or Raid",
    [2] = "Quest",
    [3] = "Vendor",
    [4] = "World Drop",
    [5] = "Achievement",
    [6] = "Profession",
    [7] = "Trading Post",
}

-- Order groups appear in the tracker. Anything not listed sorts to the end.
local SOURCE_ORDER = { 1, 2, 3, 5, 6, 7, 4, 0 }
local SOURCE_RANK = {}
for i = 1, #SOURCE_ORDER do SOURCE_RANK[SOURCE_ORDER[i]] = i end

function Data:SourceLabel(sourceType)
    if not sourceType then return FALLBACK_SOURCE[0] end
    local g = _G["TRANSMOG_SOURCE_" .. sourceType]
    if type(g) == "string" and g ~= "" then return g end
    return FALLBACK_SOURCE[sourceType] or ("Source " .. tostring(sourceType))
end

function Data:SourceRank(sourceType)
    return SOURCE_RANK[sourceType or 0] or (#SOURCE_ORDER + 1)
end

function Data:AddCategory(catID, name, canMainHand, canOffHand, canRanged, list)
    local entries, collected = {}, 0

    for i = 1, #list do
        local a = list[i]
        -- isHideVisual is the "hide weapon" pseudo appearance, not something
        -- to collect. Never a row.
        if not a.isHideVisual then
            local entry = {
                visualID    = a.visualID,
                categoryID  = catID,
                isCollected = a.isCollected and true or false,
                uiOrder     = a.uiOrder,
            }

            entries[#entries + 1] = entry
            if entry.isCollected then collected = collected + 1 end
        end
    end

    self.byCategory[catID] = {
        entries   = entries,
        total     = #entries,
        collected = collected,
        resolved  = false,
    }
    self.categories[#self.categories + 1] = {
        id          = catID,
        name        = name,
        canMainHand = canMainHand and true or false,
        canOffHand  = canOffHand and true or false,
        canRanged   = canRanged and true or false,
    }

    self.stats.total     = self.stats.total + #entries
    self.stats.collected = self.stats.collected + collected
end

-- ── Build ────────────────────────────────────────────────────
-- Cheap enough to run at login: one GetCategoryAppearances call per category.
-- Deliberately does NOT resolve names, icons or source types here - those
-- need a call per visual and there can be thousands of them. They're
-- resolved per category, on demand, in ResolveEntry below.
function Data:Build()
    if not C_TransmogCollection or not C_TransmogCollection.GetCategoryAppearances
        or not C_TransmogCollection.GetCategoryInfo then
        return false
    end

    wipe(self.categories)
    wipe(self.byCategory)
    wipe(self.pendingByItem)
    wipe(self.skipped)

    self.stats.total, self.stats.collected = 0, 0

    for catID = FIRST_CATEGORY, LAST_CATEGORY do
        local name, isWeapon, canMainHand, canOffHand, canRanged =
            C_TransmogCollection.GetCategoryInfo(catID)

        if name and isWeapon then
            local list = C_TransmogCollection.GetCategoryAppearances(catID)
            if not list or #list == 0 then
                self.skipped[catID] = name .. ": GetCategoryAppearances returned "
                    .. (list and "an empty list" or "nil")
            else
                self:AddCategory(catID, name, canMainHand, canOffHand, canRanged, list)
            end
        elseif not name then
            self.skipped[catID] = "GetCategoryInfo returned nil"
        end
        -- name and not isWeapon: a real armor category, silently skipped -
        -- Armoire already covers those.
    end

    table.sort(self.categories, function(a, b) return a.id < b.id end)

    -- Bumped every real rebuild. A ResolveAll ticker in flight when a rescan
    -- (TRANSMOG_COLLECTION_UPDATED etc.) calls Refresh() mid-resolve is
    -- iterating a `queue` of entry objects that Build() has just thrown away
    -- and replaced - letting it finish anyway and set resolvedAll = true
    -- would falsely claim the BRAND NEW entries are resolved (real bug hit
    -- live: resolvedAll ended up true with every single entry still
    -- "resolved: 0, never touched: N" - and since ResolveAll bails out
    -- immediately whenever resolvedAll is already true, nothing could ever
    -- trigger a real resolve pass again for the rest of the session). The
    -- ticker checks this before trusting its own completion.
    self.buildGeneration = (self.buildGeneration or 0) + 1

    -- Every player always has real weapon categories, so coming back with
    -- zero is never a legitimate empty state - it means the transmog API
    -- just wasn't ready the instant this ran (confirmed real case: PLAYER_
    -- LOGIN). Leaving `built` false here lets a later Ensure() call retry
    -- for real, instead of permanently locking in an empty result that
    -- nothing but an actual rescan event would ever undo.
    self.built = #self.categories > 0
    return self.built
end

function Data:Ensure()
    if not self.built then self:Build() end
    return self.built
end

-- ── Per-visual detail, resolved on demand ────────────────────
-- One visual can be granted by many items. GetAllAppearanceSources gives
-- every sourceID for a visual; GetSourceInfo turns a sourceID into the real
-- item. Both are too expensive to run across the whole collection at login,
-- so nothing calls them until a row actually needs to be drawn.
function Data:ResolveEntry(entry)
    if entry.resolved or entry.resolveFailed then return entry end

    local sources = C_TransmogCollection.GetAllAppearanceSources(entry.visualID)
    if not sources or #sources == 0 then
        entry.resolveFailed = true
        return entry
    end

    entry.sourceIDs = sources

    local info = C_TransmogCollection.GetSourceInfo(sources[1])
    if not info then
        entry.resolveFailed = true
        return entry
    end

    entry.sourceType = info.sourceType
    entry.itemID     = info.itemID
    entry.canCollect = info.playerCanCollect
    entry.useError   = info.useError

    -- sourceType and itemID come from transmog data and are available
    -- immediately. The NAME comes from the item cache, which for an item
    -- this character has never seen means a round trip to the server. An
    -- entry whose name hasn't arrived is NOT a failed entry - it still
    -- knows where it comes from, so it still belongs in the list.
    if info.name and info.name ~= "" then
        entry.name = info.name
    else
        for k = 2, #sources do
            local alt = C_TransmogCollection.GetSourceInfo(sources[k])
            if alt and alt.name and alt.name ~= "" then
                entry.name = alt.name
                if not entry.itemID then entry.itemID = alt.itemID end
                break
            end
        end
    end

    -- NOTE: deliberately does NOT ask the server for a missing name here.
    -- Names are requested per ROW instead, by RequestName below, so only
    -- what's actually on screen costs anything (see Armoire's own note on
    -- this - bulk-requesting thousands of names at once gets throttled).

    if entry.itemID and C_Item and C_Item.GetItemInfoInstant then
        local _, _, _, _, icon = C_Item.GetItemInfoInstant(entry.itemID)
        entry.icon = icon
    end

    entry.resolved = true
    return entry
end

-- Asks the server for one appearance's item name. Called from a row as it's
-- drawn, so the cost scales with what the player is actually looking at.
-- Safe to call repeatedly - the pending table doubles as the "already
-- asked" record.
local REQUEST_TIMEOUT = 12

local function ScheduleTimeout(dataSelf, itemID)
    C_Timer.After(REQUEST_TIMEOUT, function()
        if dataSelf.pendingByItem[itemID] then
            dataSelf:FailItemName(itemID)
        end
    end)
end

function Data:RequestName(entry)
    if not entry or entry.name or not entry.itemID then return end
    if self.pendingByItem[entry.itemID] then
        local list = self.pendingByItem[entry.itemID]
        for i = 1, #list do
            if list[i] == entry then return end
        end
        list[#list + 1] = entry
        return
    end

    self.pendingByItem[entry.itemID] = { entry }
    if C_Item and C_Item.RequestLoadItemDataByID then
        C_Item.RequestLoadItemDataByID(entry.itemID)
    end
    ScheduleTimeout(self, entry.itemID)
end

-- The server genuinely refuses some item IDs, and it also answers success
-- with no usable name for others. Either way the entry must STOP saying
-- "Loading..." - an honest "name unavailable" is better than a spinner that
-- never resolves.
function Data:FailItemName(itemID)
    local list = self.pendingByItem[itemID]
    if not list then return false end
    self.pendingByItem[itemID] = nil
    for i = 1, #list do
        list[i].nameFailed = true
    end
    return true
end

-- Called from the ITEM_DATA_LOAD_RESULT handler. Returns true if this
-- itemID was one we were actually waiting on, so the caller only redraws
-- when something genuinely changed.
function Data:FillItemName(itemID)
    local list = self.pendingByItem[itemID]
    if not list then return false end
    self.pendingByItem[itemID] = nil

    local name = C_Item and C_Item.GetItemNameByID and C_Item.GetItemNameByID(itemID)
    if not name or name == "" then
        for i = 1, #list do
            list[i].nameFailed = true
        end
        return true
    end

    for i = 1, #list do
        list[i].name = name
        if not list[i].icon and C_Item.GetItemInfoInstant then
            local _, _, _, _, icon = C_Item.GetItemInfoInstant(itemID)
            list[i].icon = icon
        end
    end
    return true
end

-- Resolves a whole category in background chunks so a slot with thousands
-- of appearances can't freeze the client. onProgress(done, total) fires per
-- chunk and once more at the end.
local CHUNK = 150

function Data:ResolveCategory(catID, onProgress)
    local bucket = self.byCategory[catID]
    if not bucket then
        if onProgress then onProgress(0, 0) end
        return
    end
    if bucket.resolved then
        if onProgress then onProgress(bucket.total, bucket.total) end
        return
    end
    if bucket.resolving then return end

    bucket.resolving = true
    local entries, i, total = bucket.entries, 0, bucket.total
    local myGeneration = self.buildGeneration

    C_Timer.NewTicker(0.01, function(ticker)
        -- Same stale-rebuild guard as ResolveAll - this bucket's own
        -- resolved/resolving flags are already race-safe (a rescan replaces
        -- the whole bucket table), but stop wasting cycles on orphaned
        -- entries as soon as it's known they don't matter anymore.
        if self.buildGeneration ~= myGeneration then
            ticker:Cancel()
            bucket.resolving = false
            return
        end

        local stop = math.min(i + CHUNK, total)
        while i < stop do
            i = i + 1
            self:ResolveEntry(entries[i])
        end

        if i >= total then
            ticker:Cancel()
            bucket.resolved  = true
            bucket.resolving = false
        end
        if onProgress then onProgress(i, total) end
    end)
end

function Data:ResolveAll(onProgress)
    self:Ensure()
    if self.resolvedAll then
        if onProgress then onProgress(1, 1, true) end
        return
    end

    if self.resolvingAll then return end
    self.resolvingAll = true

    local myGeneration = self.buildGeneration

    local queue = {}
    for i = 1, #self.categories do
        local bucket = self.byCategory[self.categories[i].id]
        for e = 1, #bucket.entries do
            queue[#queue + 1] = bucket.entries[e]
        end
    end
    local total = #queue

    local i = 0
    C_Timer.NewTicker(0.01, function(ticker)
        -- A rescan rebuilt the data out from under this pass - these
        -- entries no longer exist in self.byCategory. Stop touching them
        -- and DON'T claim resolvedAll, so a real resolve can still run.
        if self.buildGeneration ~= myGeneration then
            ticker:Cancel()
            self.resolvingAll = false
            return
        end

        local stop = math.min(i + CHUNK, total)
        while i < stop do
            i = i + 1
            self:ResolveEntry(queue[i])
        end
        if i >= total then
            ticker:Cancel()
            self.resolvedAll  = true
            self.resolvingAll = false
        end
        if onProgress then onProgress(i, total, i >= total) end
    end)
end

-- ── Where it comes from ──────────────────────────────────────
-- Three-level lookup for the comprehensive dungeon/raid research: itemID ->
-- pair index -> {instanceListIndex, boss} -> {name, kind}. Returns
-- instanceName, boss, or nil if this itemID isn't in the research. All three
-- tables are nil-safe - until InstanceSources.lua exists and is merged in,
-- this quietly finds nothing rather than erroring.
local function LookupInstanceDrop(itemID)
    local sources = addonTable.InstanceDropSources
    local pairs_ = addonTable.InstanceBossPairs
    local list = addonTable.InstanceList
    if not (sources and pairs_ and list and itemID) then return nil end

    local pairIndex = sources[itemID]
    if not pairIndex then return nil end
    local pair = pairs_[pairIndex]
    if not pair then return nil end
    local instRow = list[pair[1]]
    if not instRow then return nil end

    return instRow[1], pair[2]
end

function Data:ResolvePlace(entry)
    if entry.place ~= nil or entry.placeChecked then return entry end
    entry.placeChecked = true

    if not entry.sourceIDs then
        entry.placeChecked = false  -- not resolved yet; ask again later
        return entry
    end

    for i = 1, #entry.sourceIDs do
        local drops = C_TransmogCollection.GetAppearanceSourceDrops(entry.sourceIDs[i])
        if drops and #drops > 0 and drops[1].instance and drops[1].instance ~= "" then
            entry.place = drops[1].instance
            entry.placeBoss = drops[1].encounter
            return entry
        end
    end

    -- Comprehensive dungeon/raid research, for content the client doesn't
    -- self-report reliably (very new instances, gaps in older Encounter
    -- Journal data) - same three-level share Armoire's InstanceDropSources
    -- uses: InstanceList[i]={name,kind}, InstanceBossPairs[p]={instanceIndex,
    -- boss}, InstanceDropSources[itemID]=pairIndex.
    if entry.itemID then
        local instName, boss = LookupInstanceDrop(entry.itemID)
        if instName then
            entry.place     = instName
            entry.placeBoss = boss
            return entry
        end
    end

    return entry
end

-- Things nobody can collect, which have no business on a to-do list. Same
-- rule Armoire confirmed: sourceType 0 (no recorded source) is developer/
-- test assets, never a real player-facing source.
function Data:IsUnobtainable(entry)
    local st = entry.sourceType
    if st == 0 or st == nil then return true end
    return false
end

-- ── The to-do list ───────────────────────────────────────────
-- Every unique look this account does NOT own. slotFilter, when set,
-- narrows it to one category.
function Data:GetTodoList(slotFilter)
    self:Ensure()

    local todo = {}
    for i = 1, #self.categories do
        local catID = self.categories[i].id
        if not slotFilter or slotFilter == catID then
            local entries = self.byCategory[catID].entries
            for e = 1, #entries do
                local entry = entries[e]
                if not entry.isCollected and entry.resolved
                    and not self:IsUnobtainable(entry) then
                    todo[#todo + 1] = entry
                end
            end
        end
    end
    return todo
end

function Data:GetAllList(slotFilter)
    self:Ensure()

    local all = {}
    for i = 1, #self.categories do
        local catID = self.categories[i].id
        if not slotFilter or slotFilter == catID then
            local entries = self.byCategory[catID].entries
            for e = 1, #entries do
                local entry = entries[e]
                if entry.resolved and not self:IsUnobtainable(entry) then
                    all[#all + 1] = entry
                end
            end
        end
    end
    return all
end

function Data:SearchAll(needle)
    self:Ensure()
    needle = needle:lower()

    local hits = {}
    for i = 1, #self.categories do
        local entries = self.byCategory[self.categories[i].id].entries
        for e = 1, #entries do
            local entry = entries[e]
            if entry.name and entry.name:lower():find(needle, 1, true) then
                hits[#hits + 1] = entry
            end
        end
    end
    return hits
end

-- ── Sections ─────────────────────────────────────────────────
-- A handful of named sections that describe what you DO to get the thing,
-- then the instance names, then whatever's left.
function Data:GroupIntoSections(list, includeZones)
    local buckets, placeNames = {}, {}

    for i = 1, #list do
        local entry = list[i]
        local key

        self:ResolvePlace(entry)
        if entry.place then
            key = entry.place
        else
            key = self:SourceLabel(entry.sourceType)
        end

        local isNamed = (entry.place == nil)
        if not isNamed and not includeZones then
            key = "This Zone"
        end

        local bucket = buckets[key]
        if not bucket then
            bucket = {}
            buckets[key] = bucket
            if not isNamed and key ~= "This Zone" then
                placeNames[#placeNames + 1] = key
            end
        end
        bucket[#bucket + 1] = entry
    end

    table.sort(placeNames)

    local order = {}
    for _, st in ipairs({ 2, 3, 7 }) do
        order[#order + 1] = self:SourceLabel(st)
    end
    order[#order + 1] = "This Zone"
    for i = 1, #placeNames do order[#order + 1] = placeNames[i] end
    order[#order + 1] = self:SourceLabel(1)
    for _, st in ipairs({ 5, 6, 0, 4 }) do
        order[#order + 1] = self:SourceLabel(st)
    end

    local sections = {}
    for i = 1, #order do
        local key = order[i]
        if buckets[key] then
            sections[#sections + 1] = { name = key, entries = buckets[key] }
            buckets[key] = nil
        end
    end

    for key, bucket in pairs(buckets) do
        sections[#sections + 1] = { name = key, entries = bucket }
    end

    return sections
end

-- ── Keeping totals honest mid-session ────────────────────────
function Data:MarkCollected(visualID)
    if not visualID then return nil end

    for catID, bucket in pairs(self.byCategory) do
        local entries = bucket.entries
        for i = 1, #entries do
            local e = entries[i]
            if e.visualID == visualID then
                if not e.isCollected then
                    e.isCollected    = true
                    bucket.collected = bucket.collected + 1
                    self.stats.collected = self.stats.collected + 1
                end
                return e, catID
            end
        end
    end
    return nil
end

-- Full rescan. Cheaper than it looks (one API call per category) and the
-- only honest answer to a TRANSMOG_COLLECTION_UPDATED that didn't name a
-- visual.
function Data:Refresh()
    self.built = false
    self.resolvedAll  = false
    self.resolvingAll = false
    return self:Build()
end

-- ── Grouping ─────────────────────────────────────────────────
-- Builds the collapsible source groups the collection window draws.
-- `collectedWanted` picks which half of the category is being looked at.
function Data:BuildGroups(catID, collectedWanted, searchText)
    local bucket = self.byCategory[catID]
    if not bucket then return {} end

    local needle = searchText and searchText:lower()
    if needle == "" then needle = nil end

    local groups, index = {}, {}

    for i = 1, #bucket.entries do
        local e = bucket.entries[i]
        if e.isCollected == collectedWanted and e.resolved then
            if not needle or (e.name and e.name:lower():find(needle, 1, true)) then
                self:RequestName(e)
                local st = e.sourceType or 0
                local g = index[st]
                if not g then
                    g = { sourceType = st, label = self:SourceLabel(st), rows = {} }
                    index[st] = g
                    groups[#groups + 1] = g
                end
                g.rows[#g.rows + 1] = e
            end
        end
    end

    for i = 1, #groups do
        table.sort(groups[i].rows, function(a, b)
            if a.name == b.name then return (a.visualID or 0) < (b.visualID or 0) end
            return (a.name or "") < (b.name or "")
        end)
    end

    table.sort(groups, function(a, b)
        return self:SourceRank(a.sourceType) < self:SourceRank(b.sourceType)
    end)

    return groups
end

-- ── Where it comes from ──────────────────────────────────────
-- Every item that grants this visual, each with its drop locations. This is
-- what the detail popup shows.
function Data:GetSourceDetails(entry)
    self:ResolveEntry(entry)
    if not entry.sourceIDs then return {} end
    if entry.details then return entry.details end

    local details = {}
    for i = 1, #entry.sourceIDs do
        local sourceID = entry.sourceIDs[i]
        local info = C_TransmogCollection.GetSourceInfo(sourceID)
        if info then
            local row = {
                sourceID    = sourceID,
                itemID      = info.itemID,
                name        = info.name,
                quality     = info.quality,
                sourceType  = info.sourceType,
                isCollected = info.isCollected and true or false,
                canCollect  = info.playerCanCollect,
                useError    = info.useError,
                drops       = {},
            }

            -- An item this character has never seen has no name cached, so
            -- ask for it and fill in on the event. The row table itself is
            -- what gets cached below, and FillItemName/FailItemName mutate
            -- it directly.
            if not row.name or row.name == "" then
                if info.itemID then
                    local list = self.pendingByItem[info.itemID]
                    if not list then
                        list = {}
                        self.pendingByItem[info.itemID] = list
                        if C_Item and C_Item.RequestLoadItemDataByID then
                            C_Item.RequestLoadItemDataByID(info.itemID)
                        end
                        ScheduleTimeout(self, info.itemID)
                    end
                    list[#list + 1] = row
                end
            end

            local drops = C_TransmogCollection.GetAppearanceSourceDrops(sourceID)
            if drops and #drops > 0 then
                for d = 1, #drops do
                    local dr = drops[d]
                    row.drops[#row.drops + 1] = {
                        instance     = dr.instance,
                        encounter    = dr.encounter,
                        difficulties = dr.difficulties,
                    }
                end
            end

            details[#details + 1] = row
        end
    end

    entry.details = details
    return details
end

-- ── Raid or dungeon ──────────────────────────────────────────
-- Walks the Encounter Journal once and builds a name -> "raid"/"dungeon"
-- index, then looks instance names up against it. Puts the player's own
-- selected tier back afterwards.
function Data:BuildInstanceIndex()
    if self.instanceKinds then return self.instanceKinds end
    if not EJ_GetNumTiers or not EJ_SelectTier or not EJ_GetInstanceByIndex then
        return nil
    end

    if C_AddOns and C_AddOns.LoadAddOn and C_AddOns.IsAddOnLoaded
        and not C_AddOns.IsAddOnLoaded("Blizzard_EncounterJournal") then
        pcall(C_AddOns.LoadAddOn, "Blizzard_EncounterJournal")
    end

    local kinds = {}
    local restoreTier = EJ_GetCurrentTier and EJ_GetCurrentTier() or nil

    for tier = 1, (EJ_GetNumTiers() or 0) do
        EJ_SelectTier(tier)
        for _, isRaid in ipairs({ false, true }) do
            local index = 1
            while true do
                local _, name = EJ_GetInstanceByIndex(index, isRaid)
                if not name then break end
                kinds[name:lower()] = isRaid and "raid" or "dungeon"
                index = index + 1
            end
        end
    end

    if restoreTier then EJ_SelectTier(restoreTier) end

    if next(kinds) == nil then return nil end

    self.instanceKinds = kinds
    return kinds
end

-- A second, separate source from BuildInstanceIndex()'s Encounter Journal
-- walk, since the Journal doesn't know about the newest instances yet.
-- Built once, lazily, straight out of InstanceList (once InstanceSources.lua
-- exists and is merged in).
local instanceListKinds
local function InstanceListKind(place)
    if not instanceListKinds then
        instanceListKinds = {}
        local list = addonTable.InstanceList
        if list then
            for i = 1, #list do
                instanceListKinds[list[i][1]:lower()] = list[i][2]
            end
        end
    end
    return instanceListKinds[place:lower()]
end

function Data:GetInstanceKind(entry)
    self:ResolvePlace(entry)
    local place = entry.place
    if not place then return nil, nil end

    local kinds = self:BuildInstanceIndex()
    local kind = kinds and kinds[place:lower()]
    if not kind then kind = InstanceListKind(place) end

    return kind, place
end

-- `list` is the FULL roster for the current slot filter (Data:GetAllList) -
-- collected AND uncollected. An instance only shows at all if it has at
-- least one entry still missing somewhere in it.
function Data:GroupByInstance(list, wantKind)
    local buckets, names = {}, {}

    for i = 1, #list do
        local entry = list[i]
        local kind, place = self:GetInstanceKind(entry)
        if kind == wantKind and place then
            local bucket = buckets[place]
            if not bucket then
                bucket = {}
                buckets[place] = bucket
                names[#names + 1] = place
            end
            bucket[#bucket + 1] = entry
        end
    end

    table.sort(names)

    local sections = {}
    for i = 1, #names do
        local place = names[i]
        local entries = buckets[place]

        local rows, missingCount = {}, 0
        for e = 1, #entries do
            local entry = entries[e]
            if not entry.isCollected then
                rows[#rows + 1] = entry
                missingCount = missingCount + 1
            end
        end

        if missingCount > 0 then
            sections[#sections + 1] = {
                name = place, entries = rows, missingCount = missingCount,
            }
        end
    end
    return sections
end

-- ── Current zone ─────────────────────────────────────────────
function Data:CurrentZoneNames()
    local names = {}
    local function add(v)
        if v and v ~= "" then names[#names + 1] = v:lower() end
    end

    add(GetRealZoneText())
    add(GetZoneText())
    add(GetSubZoneText())

    local instanceName, instanceType = GetInstanceInfo()
    if instanceType and instanceType ~= "none" then
        add(instanceName)
    end

    return names
end

-- Every piece of text that could name a place for this appearance,
-- lowercased. GetAppearanceSourceDrops only knows about dungeon and raid
-- encounters, so an entry's `place` is nil for anything in the open world -
-- the researched vendor zones and quest givers name real places too, once
-- that research exists (see AchievementSources.lua and friends).
function Data:PlacesFor(entry)
    if entry.places then return entry.places end

    local places = {}
    local function add(v)
        if type(v) == "string" and v ~= "" then
            places[#places + 1] = v:lower()
        end
    end

    self:ResolvePlace(entry)
    add(entry.place)

    local itemID = entry.itemID
    if itemID then
        local v = addonTable.VendorSources and addonTable.VendorSources[itemID]
        if v then
            local list = v.vendors
            if not list and v.vendor then list = { v } end
            for i = 1, #(list or {}) do
                add(list[i].zone)
                add(list[i].note)
            end
        end

        local pr = addonTable.ProfessionSources and addonTable.ProfessionSources[itemID]
        if pr then add(pr.recipeSource) end

        local q = addonTable.QuestSources and addonTable.QuestSources[itemID]
        if q then
            add(q.start)
            add(q.note)
        end
    end

    entry.places = places
    return places
end

function Data:MatchesCurrentZone(entry, zoneNames)
    zoneNames = zoneNames or self:CurrentZoneNames()
    if #zoneNames == 0 then return false end

    local places = self:PlacesFor(entry)
    if #places == 0 then return false end

    for i = 1, #places do
        local place = places[i]
        for k = 1, #zoneNames do
            if place == zoneNames[k] or place:find(zoneNames[k], 1, true) then
                return true
            end
        end
    end
    return false
end

-- ── Verification ─────────────────────────────────────────────
-- Backs /xwc dump. Same diagnostic Armoire's did: prints every weapon
-- category this character can see, and which ones returned nothing.
function Data:Dump()
    self:Ensure()

    local ACCENT, WHITE, GREY, RESET = "|cff681417", "|cffffffff", "|cff999999", "|r"
    print(ACCENT .. "Xal's Warchest:" .. RESET .. " " .. WHITE .. #self.categories ..
        RESET .. " weapon categories visible to this character.")

    for i = 1, #self.categories do
        local c = self.categories[i]
        local b = self.byCategory[c.id]
        print(string.format("  %s%-22s%s %s%d%s of %s%d%s collected  %s(type %d)%s",
            WHITE, c.name, RESET,
            WHITE, b.collected, RESET,
            WHITE, b.total, RESET,
            GREY, c.id, RESET))
    end

    print(ACCENT .. "  Total:" .. RESET .. " " .. WHITE .. self.stats.collected ..
        RESET .. " of " .. WHITE .. self.stats.total .. RESET .. " unique weapons.")

    local any = false
    for catID, why in pairs(self.skipped) do
        if not any then
            print(ACCENT .. "  Categories that returned nothing:" .. RESET)
            any = true
        end
        print(string.format("    %s%s%s  %s%s%s", WHITE, tostring(catID), RESET,
            GREY, why, RESET))
    end
    if not any then
        print(GREY .. "  Every weapon category 1-28 returned data." .. RESET)
    end
end
