-- MainTracker.lua
-- Xal's Warchest - the main tracker window.
--
-- This is the to-do list, NOT the full collection: only unique weapon
-- appearances this account doesn't own yet. Structure mirrors Armoire's own
-- tracker point for point - tabs, search, collapsible sections, slot filter.
--
-- Raids/Dungeons tabs only show content once InstanceSources.lua (the
-- dungeon/raid drop research) exists and is merged in - until then they're
-- just empty, same as Armoire's own tracker would be with no research done.

local addonName, addonTable = ...
local Tracker = addonTable.MainTracker
local Brand   = addonTable.BrandStyle
local Data    = addonTable.AppearanceData

-- Widened from 420 (2026-09-29) - adding the Zone tab left the tab row
-- (Zone/All/Raids/Dungeons) crowding right up against the "All weapons"
-- slot filter link on the same row, with no real buffer between them.
local WIN_W, WIN_H = 460, 560
local ROW_H        = 30
local ROW_INSET    = 10

local frame, scrollFrame, scrollChild, content, countText, searchBox
local slotLink, slotList
local rows = {}
local displayList = {}

local typedText = ""
local activeTab = "all" -- "all" | "raids" | "dungeons"
local slotFilter = nil -- nil = every weapon category
local tabButtons = {}

-- ── Section collapse state ───────────────────────────────────────
-- Only the Raids and Dungeons tabs have sections - the All tab is flat.
local function IsCollapsed(name)
    local db = type(XalsWarchestDB) == "table" and XalsWarchestDB.collapsedSections
    if db and db[name] ~= nil then return db[name] end
    return false
end

local function SetCollapsed(name, state)
    if type(XalsWarchestDB) ~= "table" then return end
    XalsWarchestDB.collapsedSections = XalsWarchestDB.collapsedSections or {}
    XalsWarchestDB.collapsedSections[name] = state and true or false
end

-- ── Row construction ─────────────────────────────────────────────
-- Rows are built once and reused across refreshes; only their contents and
-- visibility change. A small fixed pool, not one frame per entry - same
-- technique Armoire's tracker uses, for the same reason (a big account can
-- have thousands of weapon appearances).
local function AcquireRow(index)
    local row = rows[index]
    if row then return row end

    row = CreateFrame("Button", nil, scrollFrame)
    row:SetHeight(ROW_H)
    row:SetPoint("TOPLEFT", scrollFrame, "TOPLEFT", 0, -((index - 1) * ROW_H))
    row:SetPoint("TOPRIGHT", scrollFrame, "TOPRIGHT", 0, -((index - 1) * ROW_H))

    local hl = row:CreateTexture(nil, "BACKGROUND")
    hl:SetAllPoints()
    hl:SetColorTexture(Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3], 0.16)
    hl:Hide()
    row.highlight = hl

    local icon = row:CreateTexture(nil, "ARTWORK")
    icon:SetSize(ROW_H - 8, ROW_H - 8)
    icon:SetPoint("LEFT", row, "LEFT", 0, 0)
    icon:SetTexCoord(0.07, 0.93, 0.07, 0.93)
    row.icon = icon

    local source = Brand.FS(row, "", Brand.BODY_FONT_PATH, 11, nil, 0.6, 0.6, 0.6)
    source:SetPoint("RIGHT", row, "RIGHT", -6, 0)
    source:SetJustifyH("RIGHT")
    row.sourceText = source

    local name = Brand.FS(row, "", Brand.BODY_FONT_PATH, 13, nil, 1, 1, 1)
    name:SetPoint("LEFT", icon, "RIGHT", 8, 0)
    name:SetPoint("RIGHT", source, "LEFT", -6, 0)
    name:SetJustifyH("LEFT")
    name:SetWordWrap(false)
    row.nameText = name

    row:SetScript("OnEnter", function(self) self.highlight:Show() end)
    row:SetScript("OnLeave", function(self) self.highlight:Hide() end)
    row:SetScript("OnClick", function(self)
        if self.sectionKey then
            SetCollapsed(self.sectionKey, not IsCollapsed(self.sectionKey))
            Tracker:Refresh()
        elseif self.entry then
            addonTable.AppearanceDetail:Show(self.entry)
        end
    end)

    rows[index] = row
    return row
end

-- ── Filtering ────────────────────────────────────────────────────
local function FilteredTodo()
    if typedText ~= "" then
        return Data:SearchAll(typedText)
    end
    local todo = Data:GetTodoList(slotFilter)
    if activeTab ~= "zone" then return todo end

    local zoneNames = Data:CurrentZoneNames()
    local out = {}
    for i = 1, #todo do
        if Data:MatchesCurrentZone(todo[i], zoneNames) then
            out[#out + 1] = todo[i]
        end
    end
    return out
end

-- Flattens sections into the row list, skipping the contents of anything
-- collapsed. A search bypasses sections entirely.
local function BuildDisplayList(todo)
    if typedText ~= "" then
        local flat = {}
        for i = 1, #todo do flat[#flat + 1] = { entry = todo[i] } end
        return flat
    end

    if activeTab ~= "raids" and activeTab ~= "dungeons" then
        local flat = {}
        for i = 1, #todo do flat[#flat + 1] = todo[i] end

        -- Alphabetical, because that's how people look for a piece by
        -- name. Anything still waiting on its name from the server sorts
        -- to the bottom rather than jumbling the middle of the list.
        table.sort(flat, function(a, b)
            local an, bn = a.name, b.name
            if an and bn then return an < bn end
            if an then return true end
            if bn then return false end
            return (a.visualID or 0) < (b.visualID or 0)
        end)

        local out = {}
        for i = 1, #flat do out[i] = { entry = flat[i] } end
        return out
    end

    -- The full roster (collected AND not), same slot filter as `todo` - a
    -- boss whose items are all already collected still needs to show up as
    -- a header, not just vanish and read like a bug.
    local all = Data:GetAllList(slotFilter)
    local sections = Data:GroupByInstance(all, activeTab == "raids" and "raid" or "dungeon")

    local display = {}
    for i = 1, #sections do
        local section = sections[i]
        local collapsed = IsCollapsed(section.name)
        display[#display + 1] = {
            sectionName = section.name,
            count = section.missingCount,
            collapsed = collapsed,
        }
        if not collapsed then
            for j = 1, #section.entries do
                display[#display + 1] = { entry = section.entries[j] }
            end
        end
    end
    return display
end

-- Fills the fixed pool from whatever part of the list is currently in view.
local function FillRows()
    if not content then return end

    local offset = math.floor((scrollFrame:GetVerticalScroll() or 0) / ROW_H)
    local visible = math.max(1, math.floor((scrollFrame:GetHeight() or 0) / ROW_H))

    for i = 1, visible do
        local item = displayList[offset + i]
        local row = AcquireRow(i)

        if not item then
            row:Hide()
            row.entry = nil
            row.sectionKey = nil
        else
            row.entry = item.entry
            row.sectionKey = item.sectionName

            if item.sectionName then
                row.icon:SetTexture(nil)
                row.sourceText:SetText("|cff999999" .. (item.count or 0) .. "|r")
                local prefix = (item.collapsed and "+  " or "-  ")
                row.nameText:SetText(prefix .. item.sectionName)
                row.nameText:SetTextColor(Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3])
                row:Show()
            else
                local entry = item.entry
                -- Only rows actually being drawn cost a server request.
                Data:RequestName(entry)
                row.icon:SetTexture(entry.icon or "Interface\\Icons\\INV_Misc_QuestionMark")

                row.nameText:SetText(entry.name
                    or (entry.nameFailed and "|cff777777Name unavailable|r")
                    or "|cff777777Loading...|r")
                row.nameText:SetTextColor(1, 1, 1)

                local n = entry.sourceIDs and #entry.sourceIDs or 0
                if n > 1 then
                    row.sourceText:SetText(Data:SourceLabel(entry.sourceType) ..
                        "  |cff777777(" .. n .. ")|r")
                else
                    row.sourceText:SetText(Data:SourceLabel(entry.sourceType))
                end

                row:Show()
            end
        end
    end

    for i = visible + 1, #rows do
        rows[i]:Hide()
        rows[i].entry = nil
        rows[i].sectionKey = nil
    end
end

-- ── Refresh ──────────────────────────────────────────────────────
function Tracker:Refresh()
    if not frame then return end
    Data:Ensure()

    local catName = "All weapons"
    if slotFilter then
        for i = 1, #Data.categories do
            if Data.categories[i].id == slotFilter then
                catName = Data.categories[i].name
                break
            end
        end
    end
    if slotLink and slotLink.label then
        slotLink.label:SetText(catName .. "  |cff681417v|r")
        slotLink.label:ClearAllPoints()
        slotLink.label:SetPoint("RIGHT", slotLink, "RIGHT", 0, 0)
        slotLink:SetWidth(math.max(40, slotLink.label:GetStringWidth() + 8))
    end

    local todo = FilteredTodo()
    local display = BuildDisplayList(todo)
    displayList = display

    -- On the Raids/Dungeons tabs the grouping itself does the filtering, so
    -- the count has to come from what the sections CONTAIN, not the rows on
    -- screen - collapsed sections contribute no item rows.
    local shown = 0
    for i = 1, #display do
        local item = display[i]
        if item.entry then
            shown = shown + 1
        elseif item.sectionName and item.collapsed then
            shown = shown + (item.count or 0)
        end
    end

    local stats = Data.stats
    if Data.resolvingAll then
        countText:SetText("|cff999999Reading your collection...|r")
    elseif typedText ~= "" then
        countText:SetText(#todo .. " match" .. (#todo == 1 and "" or "es") ..
            "  |cff999999across all weapons|r")
    elseif activeTab == "raids" then
        countText:SetText(shown .. " still to get from raids")
    elseif activeTab == "dungeons" then
        countText:SetText(shown .. " still to get from dungeons")
    elseif activeTab == "zone" then
        countText:SetText(#todo .. " still to get  |cff999999in this zone|r")
    elseif slotFilter then
        countText:SetText(#todo .. " to collect  |cff999999in " .. catName .. "|r")
    elseif stats then
        countText:SetText(#todo .. " to collect  |cff999999(" ..
            stats.collected .. " of " .. stats.total .. " owned)|r")
    else
        countText:SetText(#todo .. " to collect")
    end

    local height = math.max(1, #displayList * ROW_H)
    content:SetHeight(height)
    scrollChild:SetHeight(height)
    if frame.UpdateScrollRange then frame.UpdateScrollRange() end
    FillRows()
end

-- ── The window ───────────────────────────────────────────────────
local function BuildWindow()
    if frame then return frame end

    local f = CreateFrame("Frame", "XalsWarchestTracker", UIParent)
    tinsert(UISpecialFrames, "XalsWarchestTracker") -- Escape closes it
    f:SetSize(WIN_W, WIN_H)
    f:SetFrameStrata("MEDIUM")
    f:SetToplevel(true)
    f:SetMovable(true)
    f:EnableMouse(true)
    f:RegisterForDrag("LeftButton")
    f:SetScript("OnDragStart", f.StartMoving)
    f:SetScript("OnDragStop", function(self)
        self:StopMovingOrSizing()
        if type(XalsWarchestDB) == "table" then
            local point, _, relPoint, x, y = self:GetPoint()
            XalsWarchestDB.trackerPos = { point = point, relPoint = relPoint, x = x, y = y }
        end
    end)
    f:SetClampedToScreen(true)

    -- Distinct default offset from Armoire's tracker (80, 160) so the two
    -- can't land on top of each other.
    local pos = type(XalsWarchestDB) == "table" and XalsWarchestDB.trackerPos or nil
    if pos and pos.point then
        f:SetPoint(pos.point, UIParent, pos.relPoint, pos.x, pos.y)
    else
        f:SetPoint("CENTER", UIParent, "CENTER", -80, -160)
    end

    if type(XalsWarchestDB) == "table" then
        activeTab  = XalsWarchestDB.activeTab or "all"
        slotFilter = XalsWarchestDB.slotFilter
    end

    -- Kept as f.keepChrome so Xal's Keep can hide them while this window
    -- sits inside it (the Keep draws its own).
    local bg = Brand.ApplyBackground(f)
    local bTop, bBottom, bLeft, bRight = Brand.DrawBorder(f, 1)
    f.keepChrome = { bg, bTop, bBottom, bLeft, bRight }

    Brand.Title(f, "Weapons to Collect", 22, "TOP", f, "TOP", 0, -Brand.SAFE_MARGIN - 4)

    countText = Brand.FS(f, "", Brand.BODY_FONT_PATH, 12, nil, 0.6, 0.6, 0.6)
    countText:SetPoint("TOP", f, "TOP", 0, -44)

    -- Tabs. Text links, active one white, the others accent. Zone leads -
    -- "what can I get right here, right now" is the most immediately
    -- actionable question, ahead of browsing the full to-do list.
    local TABS = {
        { key = "zone",     label = "Zone" },
        { key = "all",      label = "All" },
        { key = "raids",    label = "Raids" },
        { key = "dungeons", label = "Dungeons" },
    }

    local function UpdateTabLook()
        for key, btn in pairs(tabButtons) do
            if key == activeTab then
                btn.label:SetTextColor(1, 1, 1, 1)
            else
                btn.label:SetTextColor(Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3], 1)
            end
        end
    end
    -- Reachable from Tracker:ShowZoneOnly(), outside this build closure.
    f.UpdateTabLook = UpdateTabLook

    local previousTab
    for i = 1, #TABS do
        local tab = TABS[i]
        local btn = Brand.MakeTextLink(f, tab.label, function()
            activeTab = tab.key
            if type(XalsWarchestDB) == "table" then XalsWarchestDB.activeTab = activeTab end
            UpdateTabLook()
            Tracker:Refresh()
        end, 15, true)
        btn:SetScript("OnLeave", function() UpdateTabLook() end)

        if previousTab then
            btn:SetPoint("LEFT", previousTab, "RIGHT", 14, 0)
        else
            btn:SetPoint("TOPLEFT", f, "TOPLEFT", Brand.SAFE_MARGIN + 14, -62)
        end
        previousTab = btn
        tabButtons[tab.key] = btn
    end
    UpdateTabLook()

    -- Search box.
    searchBox = CreateFrame("EditBox", nil, f, "InputBoxTemplate")
    searchBox:SetHeight(20)
    searchBox:SetPoint("TOPLEFT", f, "TOPLEFT", Brand.SAFE_MARGIN + 14, -93)
    searchBox:SetPoint("TOPRIGHT", f, "TOPRIGHT", -Brand.SAFE_MARGIN - 4, -93)
    searchBox:SetAutoFocus(false)
    searchBox:SetFontObject("GameFontHighlightSmall")

    local placeholder = searchBox:CreateFontString(nil, "OVERLAY")
    placeholder:SetFont(Brand.BODY_FONT_PATH, 12, "")
    placeholder:SetTextColor(0.5, 0.5, 0.5)
    placeholder:SetPoint("LEFT", searchBox, "LEFT", 4, 0)
    placeholder:SetText("Search weapons...")

    searchBox:SetScript("OnTextChanged", function(self)
        typedText = self:GetText() or ""
        if typedText == "" then placeholder:Show() else placeholder:Hide() end
        Tracker:Refresh()
    end)
    searchBox:SetScript("OnEscapePressed", function(self)
        self:SetText("")
        self:ClearFocus()
    end)

    -- Slot (weapon category) filter.
    slotLink = Brand.MakeTextLink(f, "All weapons", function()
        if slotList:IsShown() then slotList:Hide() else slotList:Show() end
    end, 15)
    slotLink:SetPoint("TOPRIGHT", f, "TOPRIGHT", -Brand.SAFE_MARGIN - 4, -60)

    slotList = CreateFrame("Frame", nil, f)
    slotList:SetPoint("TOPLEFT", f, "TOPRIGHT", 8, -60)
    slotList:SetWidth(200)
    slotList:SetFrameStrata("DIALOG")
    Brand.ApplyBackground(slotList)
    Brand.DrawBorder(slotList)
    slotList:Hide()

    local slotBtns = {}
    local SLOT_H = 20

    slotList:SetScript("OnShow", function(self)
        Data:Ensure()
        for _, b in ipairs(slotBtns) do b:Hide() end

        local options = { { id = nil, name = "All weapons" } }
        for i = 1, #Data.categories do
            options[#options + 1] = {
                id = Data.categories[i].id,
                name = Data.categories[i].name,
            }
        end

        for i = 1, #options do
            local opt = options[i]
            local btn = slotBtns[i]
            if not btn then
                btn = CreateFrame("Button", nil, self)
                btn:SetHeight(SLOT_H)
                btn:SetPoint("TOPLEFT", self, "TOPLEFT", 8, -(8 + (i - 1) * SLOT_H))
                btn:SetPoint("TOPRIGHT", self, "TOPRIGHT", -8, -(8 + (i - 1) * SLOT_H))

                local bh = btn:CreateTexture(nil, "BACKGROUND")
                bh:SetAllPoints()
                bh:SetColorTexture(Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3], 0.16)
                bh:Hide()
                btn.highlight = bh
                btn:SetScript("OnEnter", function(s) s.highlight:Show() end)
                btn:SetScript("OnLeave", function(s) s.highlight:Hide() end)

                btn.label = Brand.FS(btn, "", Brand.BODY_FONT_PATH, 12, nil, 1, 1, 1)
                btn.label:SetPoint("LEFT", btn, "LEFT", 2, 0)
                btn.label:SetJustifyH("LEFT")

                slotBtns[i] = btn
            end

            btn.label:SetText(opt.name)
            btn:SetScript("OnClick", function()
                slotList:Hide()
                slotFilter = opt.id
                if type(XalsWarchestDB) == "table" then
                    XalsWarchestDB.slotFilter = slotFilter
                end
                Tracker:Refresh()
            end)
            btn:Show()
        end

        self:SetHeight(16 + #options * SLOT_H)
    end)

    Brand.DrawDivider(f, 0, 145, WIN_W - (Brand.SAFE_MARGIN * 2), Brand.HEADER_COLOR)

    -- Plain ScrollFrame with a thin custom accent scrollbar.
    scrollFrame = CreateFrame("ScrollFrame", "XalsWarchestTrackerScroll", f)
    scrollFrame:SetPoint("TOPLEFT", f, "TOPLEFT", Brand.SAFE_MARGIN + ROW_INSET, -155)
    scrollFrame:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -Brand.SAFE_MARGIN - 12, 48)

    local scrollTrack = CreateFrame("Frame", nil, f, "BackdropTemplate")
    scrollTrack:SetPoint("TOPRIGHT", scrollFrame, "TOPRIGHT", 10, 0)
    scrollTrack:SetPoint("BOTTOMRIGHT", scrollFrame, "BOTTOMRIGHT", 10, 0)
    scrollTrack:SetWidth(8)
    scrollTrack:SetBackdrop({ bgFile = "Interface\\Buttons\\WHITE8x8" })
    scrollTrack:SetBackdropColor(1, 1, 1, 0.08)
    scrollTrack:Hide()

    local scrollThumb = CreateFrame("Slider", nil, scrollTrack)
    scrollThumb:SetOrientation("VERTICAL")
    scrollThumb:SetPoint("TOP", scrollTrack, "TOP", 0, 0)
    scrollThumb:SetPoint("BOTTOM", scrollTrack, "BOTTOM", 0, 0)
    scrollThumb:SetWidth(8)
    scrollThumb:SetThumbTexture("Interface\\Buttons\\WHITE8x8")
    local scrollThumbTex = scrollThumb:GetThumbTexture()
    scrollThumbTex:SetVertexColor(Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3], 1)
    scrollThumbTex:SetWidth(8)

    local suppressScrollCallback = false
    scrollThumb:SetScript("OnValueChanged", function(_, value)
        if suppressScrollCallback then return end
        scrollFrame:SetVerticalScroll(value)
        FillRows()
    end)

    scrollChild = CreateFrame("Frame", nil, scrollFrame)
    scrollChild:SetPoint("TOPLEFT", scrollFrame, "TOPLEFT", 0, 0)
    scrollChild:SetWidth(scrollFrame:GetWidth())
    scrollChild:SetHeight(1)
    scrollFrame:SetScrollChild(scrollChild)
    scrollFrame:SetScript("OnSizeChanged", function(_, width) scrollChild:SetWidth(width) end)

    content = CreateFrame("Frame", nil, scrollChild)
    content:SetPoint("TOPLEFT", scrollChild, "TOPLEFT", 0, 0)
    content:SetPoint("TOPRIGHT", scrollChild, "TOPRIGHT", 0, 0)
    content:SetHeight(1)

    scrollFrame:EnableMouseWheel(true)
    scrollFrame:SetScript("OnMouseWheel", function(_, delta)
        scrollThumb:SetValue(scrollThumb:GetValue() - delta * 40)
    end)

    function f.UpdateScrollRange()
        local w = scrollFrame:GetWidth()
        if w and w > 0 and math.abs((scrollChild:GetWidth() or 0) - w) > 0.5 then
            scrollChild:SetWidth(w)
        end

        local visibleHeight = scrollFrame:GetHeight()
        local contentHeight = scrollChild:GetHeight()
        local maxScroll = math.max(0, contentHeight - visibleHeight)
        suppressScrollCallback = true
        scrollThumb:SetMinMaxValues(0, maxScroll)

        local cur = scrollFrame:GetVerticalScroll() or 0
        if cur > maxScroll then
            cur = maxScroll
            scrollFrame:SetVerticalScroll(cur)
        end
        scrollThumb:SetValue(cur)
        suppressScrollCallback = false
        if maxScroll > 0 then
            scrollTrack:Show()
            local ratio = math.min(1, visibleHeight / contentHeight)
            scrollThumbTex:SetHeight(math.max(20, visibleHeight * ratio))
        else
            scrollTrack:Hide()
            scrollFrame:SetVerticalScroll(0)
        end
    end

    local collection = Brand.MakeTextLink(f, "My Collection", function()
        addonTable.CollectionWindow:Toggle()
    end, 15)
    collection:SetPoint("BOTTOMLEFT", f, "BOTTOMLEFT", Brand.SAFE_MARGIN + 4, Brand.SAFE_MARGIN)

    local close = Brand.MakeCloseButton(f, function() f:Hide() end)
    close:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -Brand.SAFE_MARGIN - 4, Brand.SAFE_MARGIN)
    f.keepChrome[#f.keepChrome + 1] = close

    f:SetScript("OnShow", function()
        local w = scrollFrame:GetWidth()
        if w and w > 0 then scrollChild:SetWidth(w) end
        scrollFrame:SetVerticalScroll(0)
        for _, btn in pairs(tabButtons) do btn:Remeasure() end
        collection:Remeasure()
        close:Remeasure()
        Tracker:Refresh()
    end)

    f:Hide()
    frame = f
    return f
end

-- Kicks off the background resolve pass and redraws as it lands.
local lastProgressRefresh = 0

local function StartResolving()
    Data:ResolveAll(function(done, total, finished)
        if not frame or not frame:IsShown() then return end

        local now = GetTime()
        if finished or (now - lastProgressRefresh) > 0.5 then
            lastProgressRefresh = now
            if finished then
                Tracker:Refresh()
            else
                countText:SetText(string.format(
                    "|cff999999Reading your collection... %d / %d|r", done, total))
            end
        end
    end)
end

-- ── Xal's Keep ───────────────────────────────────────────────────
-- When Xal's Keep is installed, this window lives inside the Keep instead of
-- floating on its own, and every way of opening it (minimap button, /xwc,
-- the zone alert) opens the Keep on the Warchest tab. Without the Keep,
-- nothing here runs and the window behaves exactly as before.
local KEEP_KEY = "warchest"

-- Re-homes the window into the Keep's content area. The Keep supplies the
-- background, border, Close and dragging, so ours step aside; mouse goes off
-- on the window itself so a click on empty space drags the Keep instead.
-- Rows, tabs and links are their own frames and still take clicks.
local function AttachToKeep(container)
    local f = BuildWindow()
    f.keepHost = container
    f:SetParent(container)
    f:ClearAllPoints()
    f:SetPoint("TOP", container, "TOP", 0, 0)
    f:SetPoint("BOTTOM", container, "BOTTOM", 0, 0)
    f:SetFrameStrata(container:GetFrameStrata())
    f:SetFrameLevel(container:GetFrameLevel() + 1)
    f:SetToplevel(false)
    f:SetMovable(false)
    f:EnableMouse(false)
    f:SetClampedToScreen(false)
    for _, region in ipairs(f.keepChrome) do region:Hide() end
    -- Escape closes the Keep as a whole, not just this tab.
    for i = #UISpecialFrames, 1, -1 do
        if UISpecialFrames[i] == "XalsWarchestTracker" then table.remove(UISpecialFrames, i) end
    end
    return f
end

local function ShowInKeep()
    Tracker:Refresh()
    frame:Show()
    StartResolving()
end

-- Opens on the Zone tab - the Keep's rook zone alert lands here.
function Tracker:ShowZoneOnly()
    local f = BuildWindow()
    if activeTab ~= "zone" then
        activeTab = "zone"
        if type(XalsWarchestDB) == "table" then XalsWarchestDB.activeTab = "zone" end
        f.UpdateTabLook()
    end
    if XalsKeep then return XalsKeep:Show(KEEP_KEY) end
    self:Refresh()
    f:Show()
    StartResolving()
end

if XalsKeep and XalsKeep.Register then
    XalsKeep:Register(KEEP_KEY, {
        label    = "Warchest",
        addon    = "XalsWarchest",
        attach   = AttachToKeep,
        show     = ShowInKeep,
        showZone = function() Tracker:ShowZoneOnly() end,
    })
end

function Tracker:Toggle()
    if XalsKeep then return XalsKeep:Toggle(KEEP_KEY) end
    local f = BuildWindow()
    if f:IsShown() then
        f:Hide()
    else
        self:Refresh()
        f:Show()
        StartResolving()
    end
end

function Tracker:Show()
    if XalsKeep then return XalsKeep:Show(KEEP_KEY) end
    BuildWindow()
    self:Refresh()
    frame:Show()
    StartResolving()
end

-- Inside the Keep, "shown" has to mean actually on screen - the window stays
-- flagged shown while the Keep is closed or on another tab.
function Tracker:IsShown()
    if frame and frame.keepHost then return frame:IsVisible() end
    return frame and frame:IsShown()
end
