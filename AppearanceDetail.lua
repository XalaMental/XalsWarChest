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

local frame

local function QualityColor(quality)
    local c = quality and ITEM_QUALITY_COLORS and ITEM_QUALITY_COLORS[quality]
    if c and c.hex then return c.hex end
    return "|cffffffff"
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

    local category = Brand.FS(f, "", Brand.BODY_FONT_PATH, 12, nil, 0.6, 0.6, 0.6)
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

    local source = Brand.FS(f, "", Brand.BODY_FONT_PATH, 13, nil, 1, 1, 1)
    source:SetPoint("TOPLEFT", heading, "BOTTOMLEFT", 0, -6)
    source:SetPoint("RIGHT", f, "RIGHT", -Brand.SAFE_MARGIN - 4, 0)
    source:SetJustifyH("LEFT")
    source:SetWordWrap(true)
    source:SetSpacing(3)
    f.sourceText = source

    local blocked = Brand.FS(f, "", Brand.BODY_FONT_PATH, 12, nil, 0.87, 0.33, 0.33)
    blocked:SetPoint("TOPLEFT", source, "BOTTOMLEFT", 0, -10)
    blocked:SetPoint("RIGHT", f, "RIGHT", -Brand.SAFE_MARGIN - 4, 0)
    blocked:SetJustifyH("LEFT")
    blocked:SetWordWrap(true)
    f.blockedText = blocked

    local itemsHeading = Brand.FS(f, "", Brand.TITLE_FONT_PATH, 15, nil,
        Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3])
    itemsHeading:SetPoint("TOPLEFT", blocked, "BOTTOMLEFT", 0, -12)
    f.itemsHeading = itemsHeading

    local items = Brand.FS(f, "", Brand.BODY_FONT_PATH, 12, nil, 1, 1, 1)
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
        category = category .. "  |cff999999(" .. #details .. " items share this look)|r"
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

        if st == 2 then
            researchable = true
            local q = itemID and addonTable.QuestSources and addonTable.QuestSources[itemID]
            if q and q.quest then
                local line = "Rewarded by |cffffffff" .. q.quest .. "|r"
                if q.start and q.start ~= "" then
                    line = line .. "\n   |cff999999" .. q.start .. "|r"
                end
                Add(line)
            end

        elseif st == 3 then
            researchable = true
            local v = itemID and addonTable.VendorSources and addonTable.VendorSources[itemID]
            if v then
                local list = v.vendors
                if not list and v.vendor then list = { v } end
                for k = 1, #(list or {}) do
                    local e = list[k]
                    local line = "|cffffffff" .. (e.vendor or "?") .. "|r"
                    if e.zone and e.zone ~= "" then
                        line = line .. "  |cff999999-|r  " .. e.zone
                    end
                    Add(line)
                end
            end

        elseif st == 5 then
            researchable = true
            local a = itemID and addonTable.AchievementSources
                and addonTable.AchievementSources[itemID]
            if a and a.achievement then
                Add("Awarded by |cffffffff" .. a.achievement .. "|r")
            end

        elseif st == 6 then
            researchable = true
            local p = itemID and addonTable.ProfessionSources
                and addonTable.ProfessionSources[itemID]
            if p and p.profession then
                local line = "Crafted with |cffffffff" .. p.profession .. "|r"
                if p.recipe and p.recipe ~= "" and p.recipe ~= (p.name or entry.name) then
                    line = line .. "\n   |cff999999Recipe: " .. p.recipe .. "|r"
                end
                if p.recipeSource and p.recipeSource ~= "" then
                    line = line .. "\n   |cff999999" .. p.recipeSource .. "|r"
                end
                Add(line)
            end
        end
    end

    for i = 1, #details do
        for k = 1, #details[i].drops do
            local drop = details[i].drops[k]
            local where = drop.instance or ""
            if drop.encounter and drop.encounter ~= "" then
                where = where .. "  |cff999999-|r  " .. drop.encounter
            end
            if drop.difficulties and #drop.difficulties > 0 then
                where = where .. "  |cff777777(" ..
                    table.concat(drop.difficulties, ", ") .. ")|r"
            end
            if where ~= "" and not seen[where] then
                seen[where] = true
                lines[#lines + 1] = where
            end
        end
    end

    f.hasResearchedSource = researched

    if #lines > 0 then
        f.sourceText:SetText(table.concat(lines, "\n"))
    elseif entry.sourceType == 3 then
        f.sourceText:SetText("Sold by a vendor - check the Wowhead link below for exactly who and where.")
    elseif entry.sourceType == 0 then
        f.sourceText:SetText("Blizzard records no source for this weapon.")
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
            f.itemsHeading:SetText("Items with this look  |cff44dd66(you have it)|r")
        else
            f.itemsHeading:SetText("Items with this look  |cff999999(any one grants it)|r")
        end

        local itemLines = {}
        for i = 1, #details do
            local d = details[i]
            local mark = d.isCollected and "|cff44dd66v|r  " or "|cff777777-|r  "
            local label = d.name
                or (d.nameFailed and "|cff777777Name unavailable|r")
                or "|cff777777Loading...|r"
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

    local top, bottom = f:GetTop(), f.itemsText:GetBottom()
    if top and bottom then
        local needed = (top - bottom) + Brand.SAFE_MARGIN + 30
        f:SetHeight(math.max(WIN_H, math.min(needed, 700)))
    else
        f:SetHeight(WIN_H)
    end

    f:Show()
end

function Detail:Refresh()
    if frame and frame:IsShown() and frame.entry then
        self:Show(frame.entry)
    end
end

function Detail:IsShown()
    return frame and frame:IsShown()
end
