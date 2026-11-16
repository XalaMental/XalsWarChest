-- AppearanceDetail.lua
-- Xal's Warchest - the "where does this come from" popup.
--
-- Opens when an appearance is clicked in the tracker or collection window.
-- No dedicated research files exist yet for weapons (Armoire's Quest/Vendor/
-- Profession/Achievement source write-ups took a whole separate research
-- pass) - this reads whatever the client itself knows and says so plainly
-- when that's all there is.
--
-- Lua can't open a browser, so the link button pops the copy-a-URL dialog
-- instead - same mechanism as the Discord link.

local addonName, addonTable = ...
local Detail = addonTable.AppearanceDetail
local Brand  = addonTable.BrandStyle
local Data   = addonTable.AppearanceData

local WIN_W, WIN_H = 430, 420

-- WoW Forever tells every source table's items apart by itemID alone: the
-- game's own source type on a vanilla item isn't something this addon has
-- verified, so a researched entry is shown whenever one exists. On Retail the
-- source type still decides which table is consulted.
local FOREVER = WOW_PROJECT_CAMELOT ~= nil and WOW_PROJECT_ID == WOW_PROJECT_CAMELOT

local frame

local function QualityColor(quality)
    local c = quality and ITEM_QUALITY_COLORS and ITEM_QUALITY_COLORS[quality]
    if c and c.hex then return c.hex end
    return "" .. Brand.HEX.BRIGHT .. ""
end

local function BuildFrame()
    if frame then return frame end

    local f = CreateFrame("Frame", "XalsWarchestDetail", UIParent)
    tinsert(UISpecialFrames, "XalsWarchestDetail")
    f:SetSize(WIN_W, WIN_H)
    f:SetFrameStrata("DIALOG")
    f:SetToplevel(true)
    f:SetMovable(true)
    f:EnableMouse(true)
    f:RegisterForDrag("LeftButton")
    f:SetScript("OnDragStart", f.StartMoving)
    f:SetScript("OnDragStop", function(self)
        self:StopMovingOrSizing()
        if type(XalsWarchestDB) == "table" then
            local point, _, relPoint, x, y = self:GetPoint()
            XalsWarchestDB.detailPos = { point = point, relPoint = relPoint, x = x, y = y }
        end
    end)
    f:SetClampedToScreen(true)

    local pos = type(XalsWarchestDB) == "table" and XalsWarchestDB.detailPos or nil
    if pos and pos.point then
        f:SetPoint(pos.point, UIParent, pos.relPoint, pos.x, pos.y)
    else
        f:SetPoint("CENTER", UIParent, "CENTER", -140, -140)
    end

    Brand.ApplyBackground(f)
    Brand.DrawBorder(f, 1)

    local icon = f:CreateTexture(nil, "ARTWORK")
    icon:SetSize(44, 44)
    icon:SetPoint("TOPLEFT", f, "TOPLEFT", Brand.SAFE_MARGIN + 4, -Brand.SAFE_MARGIN - 4)
    icon:SetTexCoord(0.07, 0.93, 0.07, 0.93)
    f.icon = icon

    local title = Brand.FS(f, "", Brand.TITLE_FONT_PATH, 20, nil,
        Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3])
    title:SetPoint("TOPLEFT", icon, "TOPRIGHT", 12, -4)
    title:SetPoint("RIGHT", f, "RIGHT", -Brand.SAFE_MARGIN, 0)
    title:SetJustifyH("LEFT")
    title:SetWordWrap(true)
    f.titleText = title

    local category = Brand.FS(f, "", Brand.BODY_FONT_PATH, 12, nil, Brand.DESC_COLOR[1], Brand.DESC_COLOR[2], Brand.DESC_COLOR[3])
    category:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -4)
    category:SetJustifyH("LEFT")
    f.categoryText = category

    local divider = Brand.DrawDivider(f, 0, 72, WIN_W - (Brand.SAFE_MARGIN * 2), Brand.HEADER_COLOR)
    divider:ClearAllPoints()
    divider:SetPoint("TOPLEFT", category, "BOTTOMLEFT", -6, -10)
    divider:SetPoint("RIGHT", f, "RIGHT", -Brand.SAFE_MARGIN, 0)

    local heading = Brand.FS(f, "Where it comes from", Brand.TITLE_FONT_PATH, 15, nil,
        Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3])
    heading:SetPoint("TOPLEFT", divider, "BOTTOMLEFT", 6, -12)

    local source = Brand.FS(f, "", Brand.BODY_FONT_PATH, 13, nil, Brand.BODY_COLOR[1], Brand.BODY_COLOR[2], Brand.BODY_COLOR[3])
    source:SetPoint("TOPLEFT", heading, "BOTTOMLEFT", 0, -6)
    source:SetPoint("RIGHT", f, "RIGHT", -Brand.SAFE_MARGIN - 4, 0)
    source:SetJustifyH("LEFT")
    source:SetWordWrap(true)
    source:SetSpacing(3)
    f.sourceText = source

    -- "Go to nearest vendor" (WoW Forever vendors carry map positions). Only
    -- shown when this look has a vendor with a known spot; Detail:Show re-anchors
    -- the text below it either way.
    local nav = Brand.MakeTextLink(f, "Go to nearest vendor", function()
        Detail:GoToNearestVendor()
    end)
    nav:Hide()
    f.navLink = nav

    local blocked = Brand.FS(f, "", Brand.BODY_FONT_PATH, 12, nil, Brand.BAD_COLOR[1], Brand.BAD_COLOR[2], Brand.BAD_COLOR[3])
    blocked:SetPoint("TOPLEFT", source, "BOTTOMLEFT", 0, -10)
    blocked:SetPoint("RIGHT", f, "RIGHT", -Brand.SAFE_MARGIN - 4, 0)
    blocked:SetJustifyH("LEFT")
    blocked:SetWordWrap(true)
    f.blockedText = blocked

    local itemsHeading = Brand.FS(f, "", Brand.TITLE_FONT_PATH, 15, nil,
        Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3])
    itemsHeading:SetPoint("TOPLEFT", blocked, "BOTTOMLEFT", 0, -12)
    itemsHeading:SetPoint("RIGHT", f, "RIGHT", -Brand.SAFE_MARGIN - 4, 0)
    itemsHeading:SetJustifyH("LEFT")
    itemsHeading:SetWordWrap(true)
    f.itemsHeading = itemsHeading

    local items = Brand.FS(f, "", Brand.BODY_FONT_PATH, 12, nil, Brand.BODY_COLOR[1], Brand.BODY_COLOR[2], Brand.BODY_COLOR[3])
    items:SetPoint("TOPLEFT", itemsHeading, "BOTTOMLEFT", 0, -6)
    items:SetPoint("RIGHT", f, "RIGHT", -Brand.SAFE_MARGIN - 4, 0)
    items:SetJustifyH("LEFT")
    items:SetWordWrap(true)
    items:SetSpacing(3)
    f.itemsText = items

    local wowhead = Brand.MakeTextLink(f, "Wowhead link", function()
        if f.wowheadURL then
            Brand.ShowCopyBox("Wowhead - copy this link", f.wowheadURL)
        end
    end)
    wowhead:SetPoint("BOTTOMLEFT", f, "BOTTOMLEFT", Brand.SAFE_MARGIN + 4, Brand.SAFE_MARGIN)
    f.wowheadButton = wowhead

    local close = Brand.MakeCloseButton(f, function() f:Hide() end)
    close:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -Brand.SAFE_MARGIN - 4, Brand.SAFE_MARGIN)

    f:Hide()
    frame = f
    return f
end

function Detail:Show(entry)
    if not entry then return end

    local f = BuildFrame()
    f.entry = entry

    local details = Data:GetSourceDetails(entry)

    local displayName = entry.name
    if not displayName then
        for i = 1, #details do
            if details[i].name and details[i].name ~= "" then
                displayName = details[i].name
                break
            end
        end
    end

    f.icon:SetTexture(entry.icon or "Interface\\Icons\\INV_Misc_QuestionMark")
    f.titleText:SetText(displayName
        or (entry.nameFailed and "Name unavailable")
        or "Loading...")

    Data:ResolvePlace(entry)

    local category = Data:SourceLabel(entry.sourceType)
    if #details > 1 then
        category = category .. "  " .. Brand.HEX.DESC .. "(" .. #details .. " items share this look)|r"
    end
    f.categoryText:SetText(category)

    -- Where it drops, de-duplicated across every item sharing this look.
    -- Researched achievement sources come first - the client only ever
    -- gives a source TYPE, the actual achievement comes from
    -- AchievementSources.lua (see that file for coverage caveats: only
    -- Midnight/The War Within/Dragonflight have been researched so far, and
    -- even those aren't guaranteed complete yet).
    local lines, seen = {}, {}
    local researchable, researched = false, false
    local vendorSpots = {}

    local function Add(line)
        if line and line ~= "" and not seen[line] then
            seen[line] = true
            lines[#lines + 1] = line
            researched = true
        end
    end

    for i = 1, #details do
        local d = details[i]
        local st, itemID = d.sourceType, d.itemID

        if FOREVER or st == 2 then
            researchable = true
            local q = itemID and addonTable.QuestSources and addonTable.QuestSources[itemID]
            if q and q.quest then
                local line = "Rewarded by " .. Brand.HEX.BRIGHT .. "" .. q.quest .. "|r"
                if q.start and q.start ~= "" then
                    line = line .. "\n   " .. Brand.HEX.DESC .. "" .. q.start .. "|r"
                end
                if q.zone and q.zone ~= "" then
                    line = line .. "\n   " .. Brand.HEX.DESC .. "" .. q.zone .. "|r"
                end
                if FOREVER and q.note and q.note ~= "" then
                    line = line .. "\n   " .. Brand.HEX.DESC .. "" .. q.note .. "|r"
                end
                Add(line)
            end
        end

        if FOREVER or st == 3 then
            researchable = true
            local v = itemID and addonTable.VendorSources and addonTable.VendorSources[itemID]
            if v then
                local list = v.vendors
                if not list and v.vendor then list = { v } end
                for k = 1, #(list or {}) do
                    local e = list[k]
                    if e.map and e.x and e.y then
                        vendorSpots[#vendorSpots + 1] = e
                    end
                    local line = "" .. Brand.HEX.BRIGHT .. "" .. (e.vendor or "?") .. "|r"
                    if e.zone and e.zone ~= "" then
                        line = line .. "  " .. Brand.HEX.DESC .. "-|r  " .. e.zone
                    end
                    -- `cost` is deliberately NOT shown: this addon says WHERE
                    -- to get a weapon, and prices go stale in a way vendors
                    -- do not. The field stays in the data.
                    if e.note and e.note ~= "" then
                        line = line .. "\n   " .. Brand.HEX.DESC .. "" .. e.note .. "|r"
                    end
                    Add(line)
                end
            end
        end

        if st == 5 then
            researchable = true
            local a = itemID and addonTable.AchievementSources
                and addonTable.AchievementSources[itemID]
            if a and a.achievement then
                Add("Awarded by " .. Brand.HEX.BRIGHT .. "" .. a.achievement .. "|r")
            end
        end

        if FOREVER or st == 6 then
            researchable = true
            local p = itemID and addonTable.ProfessionSources
                and addonTable.ProfessionSources[itemID]
            if p and p.profession then
                local line = "Crafted with " .. Brand.HEX.BRIGHT .. "" .. p.profession .. "|r"
                if p.recipe and p.recipe ~= "" and p.recipe ~= (p.name or entry.name) then
                    line = line .. "\n   " .. Brand.HEX.DESC .. "Recipe: " .. p.recipe .. "|r"
                end
                if p.recipeSource and p.recipeSource ~= "" then
                    line = line .. "\n   " .. Brand.HEX.DESC .. "" .. p.recipeSource .. "|r"
                end
                Add(line)
            end
        end
    end

    -- Open-world drops, chests and containers (WoW Forever data): a plain line
    -- naming what drops it, then the zones involved. Read for every item.
    for i = 1, #details do
        local ds = details[i].itemID and addonTable.DropSources
            and addonTable.DropSources[details[i].itemID]
        if ds and ds.text then
            local line = ds.text
            if ds.zones and #ds.zones > 0 then
                line = line .. "\n   " .. Brand.HEX.DESC .. "" .. table.concat(ds.zones, ", ") .. "|r"
            end
            Add(line)
        end
    end

    for i = 1, #details do
        for k = 1, #details[i].drops do
            local drop = details[i].drops[k]
            local where = drop.instance or ""
            if drop.encounter and drop.encounter ~= "" then
                where = where .. "  " .. Brand.HEX.DESC .. "-|r  " .. drop.encounter
            end
            if drop.difficulties and #drop.difficulties > 0 then
                where = where .. "  " .. Brand.HEX.MUTED .. "(" ..
                    table.concat(drop.difficulties, ", ") .. ")|r"
            end
            if where ~= "" and not seen[where] then
                seen[where] = true
                lines[#lines + 1] = where
            end
        end
    end

    f.hasResearchedSource = researched

    -- The nav link sits under the source text when this look has a vendor with
    -- a known position; everything below re-anchors to whichever is last.
    f.vendorSpots = vendorSpots
    f.blockedText:ClearAllPoints()
    if #vendorSpots > 0 then
        f.navLink:ClearAllPoints()
        f.navLink:SetPoint("TOPLEFT", f.sourceText, "BOTTOMLEFT", 0, -8)
        f.navLink:Show()
        f.blockedText:SetPoint("TOPLEFT", f.navLink, "BOTTOMLEFT", 0, -10)
    else
        f.navLink:Hide()
        f.blockedText:SetPoint("TOPLEFT", f.sourceText, "BOTTOMLEFT", 0, -10)
    end
    f.blockedText:SetPoint("RIGHT", f, "RIGHT", -Brand.SAFE_MARGIN - 4, 0)

    if #lines > 0 then
        f.sourceText:SetText(table.concat(lines, "\n"))
    elseif entry.sourceType == 3 then
        f.sourceText:SetText("Sold by a vendor - check the Wowhead link below for exactly who and where.")
    elseif entry.sourceType == 0 then
        f.sourceText:SetText("Blizzard records no source for this weapon.")
    elseif FOREVER and researchable then
        -- Every researched table was consulted above and none had this
        -- weapon, so say so rather than guessing at a source type.
        f.sourceText:SetText("This comes from " .. Data:SourceLabel(entry.sourceType):lower() ..
            ", but there's no write-up for it yet.")
    elseif researchable then
        -- An achievement source the research hasn't reached yet - only
        -- Midnight/The War Within/Dragonflight have been checked so far,
        -- and that pass isn't guaranteed complete (see AchievementSources.lua).
        f.sourceText:SetText("This is awarded by an achievement, but it isn't written up yet - " ..
            "check the Wowhead link below for which one.")
    else
        -- No dedicated research pass exists for weapons yet (quest givers,
        -- vendor names, recipe sources) - honest about the gap rather than
        -- showing nothing.
        f.sourceText:SetText("This comes from " .. Data:SourceLabel(entry.sourceType):lower() ..
            " - check the Wowhead link below for the exact source.")
    end

    local why
    for i = 1, #details do
        if details[i].canCollect == false and details[i].useError
            and details[i].useError ~= "" then
            why = details[i].useError
            break
        end
    end
    f.blockedText:SetText(why and ("This character can't collect it: " .. why) or "")

    if #details > 0 then
        if entry.isCollected then
            f.itemsHeading:SetText("Items with this look  " .. Brand.HEX.GOOD .. "(you have it)|r")
        else
            f.itemsHeading:SetText("Items with this look  " .. Brand.HEX.DESC .. "(any one grants it)|r")
        end

        local itemLines = {}
        for i = 1, #details do
            local d = details[i]
            local mark = d.isCollected and "" .. Brand.HEX.GOOD .. "v|r  " or "" .. Brand.HEX.MUTED .. "-|r  "
            local label = d.name
                or (d.nameFailed and "" .. Brand.HEX.MUTED .. "Name unavailable|r")
                or "" .. Brand.HEX.MUTED .. "Loading...|r"
            itemLines[#itemLines + 1] = mark .. QualityColor(d.quality) .. label .. "|r"
        end
        f.itemsText:SetText(table.concat(itemLines, "\n"))
    else
        f.itemsHeading:SetText("")
        f.itemsText:SetText("")
    end

    local itemID = entry.itemID or (details[1] and details[1].itemID)
    if itemID then
        f.wowheadURL = "https://www.wowhead.com/item=" .. itemID
        f.wowheadButton:Show()
    else
        f.wowheadURL = nil
        f.wowheadButton:Hide()
    end

    f:Show()
    -- Height fits the content, measured a frame later once the wrapped text
    -- has really laid out (measuring in the same frame as SetText reads
    -- stale sizes, which is what pushed content past the window's edge). Done
    -- again on every Show/Refresh; no fixed minimum, capped to the screen.
    C_Timer.After(0, function() Detail:FitHeight() end)
end

function Detail:FitHeight()
    local f = frame
    if not (f and f:IsShown()) then return end
    local top = f:GetTop()
    local lowest = f.itemsText:GetBottom()
    if top and lowest then
        local maxH = (UIParent:GetHeight() or 700) - 60
        f:SetHeight(math.min((top - lowest) + Brand.SAFE_MARGIN + 34, maxH))
    end
end

-- ── Go to the nearest vendor ─────────────────────────────────
-- Picks the closest vendor (for the player's faction) out of the ones this
-- look is sold by, and points a waypoint at it: TomTom if it's installed (its
-- own /way command, same as Xal's Quest Compass), otherwise the game's own map
-- pin. Positions are a map id plus x/y as a percent of that map.
local function PlayerWorldPoint()
    if not (C_Map and C_Map.GetBestMapForUnit and C_Map.GetPlayerMapPosition
        and C_Map.GetWorldPosFromMapPos and CreateVector2D) then
        return nil
    end
    local mapID = C_Map.GetBestMapForUnit("player")
    local pos = mapID and C_Map.GetPlayerMapPosition(mapID, "player")
    if not pos then return nil end
    local px, py = pos:GetXY()
    if not px or (px == 0 and py == 0) then return nil end
    local continent, world = C_Map.GetWorldPosFromMapPos(mapID, CreateVector2D(px, py))
    if not continent or not world then return nil end
    local wx, wy = world:GetXY()
    return continent, wx, wy
end

-- Picks the vendor and starts guidance; returns a short plain-words result for
-- the link to show (or nil when there's nothing to do).
local function GoToNearestVendor(f)
    local spots = f and f.vendorSpots
    if not spots or #spots == 0 then return nil end

    local mine = UnitFactionGroup and UnitFactionGroup("player")
    local pc, pwx, pwy = PlayerWorldPoint()

    local best, bestYards
    local fallback
    for i = 1, #spots do
        local e = spots[i]
        local note = e.note or ""
        local wrongSide = (mine == "Alliance" and note:find("Horde only", 1, true))
            or (mine == "Horde" and note:find("Alliance only", 1, true))
        if not wrongSide then
            fallback = fallback or e
            if pc and C_Map.GetWorldPosFromMapPos and CreateVector2D then
                local c, world = C_Map.GetWorldPosFromMapPos(e.map, CreateVector2D(e.x / 100, e.y / 100))
                if c == pc and world then
                    local wx, wy = world:GetXY()
                    local yards = math.sqrt((wx - pwx) ^ 2 + (wy - pwy) ^ 2)
                    if not bestYards or yards < bestYards then
                        best, bestYards = e, yards
                    end
                end
            end
        end
    end
    -- Nobody on this continent (or no position): the first vendor for the
    -- player's side, so there's always somewhere to head.
    best = best or fallback
    if not best then
        return "No vendor for your faction"
    end

    -- Ways to guide the player, in order:
    --  1. Shortest Path Forever, when installed and it accepts the destination -
    --     it plans a real walking route (round mountains, through gates, with
    --     flights and boats) and draws it itself, the same as Xal's Xpedited
    --     Routes uses it. Its guide is then the only one.
    --  2. Otherwise our own arrow and map pins (the default).
    local label = best.vendor .. (best.zone and (" - " .. best.zone) or "")
    local spf = _G.ShortestPathForever
    local whyNot -- plain-words reason Shortest Path Forever didn't take it
    if type(spf) ~= "table" then
        whyNot = "Shortest Path Forever isn't loaded"
    elseif type(spf.API) ~= "table" or type(spf.API.Navigate) ~= "function" then
        whyNot = "Shortest Path Forever has no route call"
    elseif InCombatLockdown() then
        whyNot = "no routes in combat"
    elseif type(ShortestPathForeverDB) == "table" and ShortestPathForeverDB.journey == false then
        whyNot = "its Journey setting is off"
    else
        local ok, started = pcall(spf.API.Navigate, "XalsWarchest", best.map, best.x / 100, best.y / 100, label)
        if ok and started == true then
            -- Its guide is the only one: take ours down if an earlier click left it up.
            addonTable.Waypoint:Clear()
            return "Route started to " .. best.vendor -- its route and arrow are showing
        end
        whyNot = ok and "Shortest Path Forever refused the spot" or ("Shortest Path Forever errored: " .. tostring(started))
    end

    -- Our own arrow and map pins are the default (Jason, 2026-11-16). TomTom
    -- and the game's own waypoint are no longer tried: TomTom reported a
    -- waypoint set while showing nothing, and a guide that can fail silently
    -- is worse than ours, which always shows.
    -- Ours is the only guide now: end any route of ours Shortest Path Forever
    -- is still drawing from an earlier click.
    if type(spf) == "table" and type(spf.API) == "table" and type(spf.API.Cancel) == "function" then
        pcall(spf.API.Cancel, "XalsWarchest")
    end
    addonTable.Waypoint:Set(best.map, best.x / 100, best.y / 100, label)
    return "Arrow pointing to " .. best.vendor .. " (" .. whyNot .. ")"
end

-- The link's click. Says what happened in the link's own text for a few
-- seconds (so a click is never silent), and hands any error to the game's
-- error handler instead of swallowing it.
function Detail:GoToNearestVendor()
    local f = frame
    if not (f and f.navLink) then return end
    local ok, result = pcall(GoToNearestVendor, f)
    if not ok then
        geterrorhandler()(result)
        result = "Couldn't set a waypoint"
    end
    if not result then return end

    local link = f.navLink
    link.label:SetText(result)
    link:Remeasure()
    C_Timer.After(5, function()
        if link.label then
            link.label:SetText("Go to nearest vendor")
            link:Remeasure()
        end
    end)
end

function Detail:Refresh()
    if frame and frame:IsShown() and frame.entry then
        self:Show(frame.entry)
    end
end

function Detail:IsShown()
    return frame and frame:IsShown()
end

-- After a skin change: drops the popup so the next Show builds it again in the
-- new colors. Returns the entry it was showing (or nil), so the caller can
-- reopen it.
function Detail:ResetSkin()
    if not frame then return nil end
    local entry = frame:IsShown() and frame.entry or nil
    frame:Hide()
    frame = nil
    return entry
end
