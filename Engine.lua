-- Engine.lua
-- Xal's Warchest - startup, saved variables, and the events that keep the
-- cached appearance data honest while you play.

local addonName, addonTable = ...
local Engine = addonTable.Engine
local Data   = addonTable.AppearanceData

local frame = CreateFrame("Frame")

local function EnsureDB()
    if type(XalsWarchestDB) ~= "table" then XalsWarchestDB = {} end
    if type(XalsWarchestCharDB) ~= "table" then XalsWarchestCharDB = {} end
end

function Engine:Init()
    EnsureDB()

    -- Registered before the collection scan, so a wardrobe that isn't ready
    -- yet can't cost the player their minimap button or settings entry.
    addonTable.SettingsPanel:Init()
    addonTable.MinimapButton:Register()

    -- The transmog collection occasionally isn't populated the instant
    -- PLAYER_LOGIN fires. Data:Ensure() rebuilds on first real use, so a
    -- failure here is soft rather than something to error on.
    Data:Build()

    addonTable.WhatsNew:CheckAndShow()

    -- The zone alert icon needs every entry resolved (entry.place, for the
    -- zone match) to work at all, and nothing else guarantees that happens
    -- if the player never opens the tracker window this session.
    addonTable.ZoneAlertIcon:Init()
end

frame:RegisterEvent("PLAYER_LOGIN")
frame:RegisterEvent("TRANSMOG_COLLECTION_SOURCE_ADDED")
frame:RegisterEvent("TRANSMOG_COLLECTION_SOURCE_REMOVED")
frame:RegisterEvent("TRANSMOG_COLLECTION_UPDATED")
frame:RegisterEvent("ITEM_DATA_LOAD_RESULT")

-- A full rescan on every collection event would be wasteful - looting a bag
-- of quest rewards can fire several in a row. Coalesce into one rebuild.
local rescanPending = false
local function QueueRescan()
    if rescanPending then return end
    rescanPending = true
    C_Timer.After(1, function()
        rescanPending = false
        Data:Refresh()

        -- Refresh() throws away every entry table and builds brand new
        -- ones, so nothing is "resolved" anymore even though resolvedAll
        -- may have been true a moment ago. Nothing else guarantees a fresh
        -- resolve pass happens after this - without it, any window left
        -- open (or reopened later) would show "0 to collect" until the
        -- player closed and reopened it by hand.
        Data:ResolveAll(function(_, _, finished)
            if not finished then return end
            if addonTable.MainTracker and addonTable.MainTracker:IsShown() then
                addonTable.MainTracker:Refresh()
            end
            if addonTable.CollectionWindow and addonTable.CollectionWindow:IsShown() then
                addonTable.CollectionWindow:Refresh()
            end
            -- Nothing else re-checks the zone alert icon after a rescan - it
            -- only reacts to ZONE_CHANGED_NEW_AREA/TRANSMOG_COLLECTION_SOURCE_
            -- ADDED directly, which can fire (and get evaluated) BEFORE this
            -- coalesced rebuild actually finishes a second later. Without this
            -- call the icon can get stuck on stale (sometimes empty, if the
            -- transmog API wasn't ready the instant PLAYER_LOGIN fired) data
            -- for the rest of the session, even once Data genuinely has real
            -- entries - confirmed real bug (2026-09-29): the icon never
            -- showed at all despite /xwc zone finding a real match once
            -- run manually.
            if addonTable.ZoneAlertIcon then
                addonTable.ZoneAlertIcon:UpdateVisibility()
            end
        end)
    end)
end

-- Item names arrive one ITEM_DATA_LOAD_RESULT event at a time, and there can
-- be hundreds in flight after opening a big category - redrawing per event
-- would be brutal, so names are filled in immediately (RequestName/
-- FillItemName above) and the actual redraw is coalesced into one pass.
-- This was missing entirely before (2026-09-29) - names WERE arriving and
-- being written onto their entries correctly, nothing ever told an already-
-- drawn row to redraw with the new name, so rows stayed on "Loading..."
-- forever unless some unrelated action (switching tabs, searching, scrolling)
-- happened to trigger a full Refresh() afterward.
local namePassPending = false
local function QueueNameRedraw()
    if namePassPending then return end
    namePassPending = true
    C_Timer.After(0.2, function()
        namePassPending = false
        if addonTable.MainTracker and addonTable.MainTracker:IsShown() then
            addonTable.MainTracker:Refresh()
        end
        if addonTable.CollectionWindow and addonTable.CollectionWindow:IsShown() then
            addonTable.CollectionWindow:Refresh()
        end
        if addonTable.AppearanceDetail and addonTable.AppearanceDetail:IsShown() then
            addonTable.AppearanceDetail:Refresh()
        end
    end)
end

frame:SetScript("OnEvent", function(_, event, arg1, arg2)
    if event == "PLAYER_LOGIN" then
        Engine:Init()

    elseif event == "ITEM_DATA_LOAD_RESULT" then
        -- arg2 is success. Since 10.0.5 the server genuinely refuses some
        -- item IDs, so a false here is a real answer, not something to retry.
        local touched
        if arg2 then
            touched = Data:FillItemName(arg1)
        else
            touched = Data:FailItemName(arg1)
        end
        if touched then QueueNameRedraw() end

    elseif event == "TRANSMOG_COLLECTION_SOURCE_ADDED" then
        -- arg1 is an itemModifiedAppearanceID (a source), not a visualID, so
        -- it has to be resolved back to the appearance it belongs to before
        -- the cached totals can be updated.
        local info = arg1 and C_TransmogCollection.GetSourceInfo(arg1)
        local entry = info and Data:MarkCollected(info.visualID)
        if not entry then QueueRescan() end

    elseif event == "TRANSMOG_COLLECTION_SOURCE_REMOVED"
        or event == "TRANSMOG_COLLECTION_UPDATED" then
        -- Neither of these reliably names a single visual, so the only
        -- honest answer is a rescan. It's one API call per category, not
        -- expensive.
        QueueRescan()
    end
end)
