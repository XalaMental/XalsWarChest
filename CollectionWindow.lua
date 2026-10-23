-- CollectionWindow.lua
-- Xal's Warchest - what you already own.
--
-- Deliberately separate from the tracker. The tracker is a to-do list and
-- only ever shows work that's left; mixing "already done" into it would
-- make it stop shrinking as you collect. This window is opened on purpose,
-- from the tracker's "My Collection" link or /xwc collection.

local addonName, addonTable = ...
local Collection = addonTable.CollectionWindow
local Brand       = addonTable.BrandStyle
local Data        = addonTable.AppearanceData

local WIN_W, WIN_H = 400, 520
local ROW_H        = 28

local frame, scrollFrame, scrollChild, content, countText, searchBox
local slotLink, slotList, progressText
local rows = {}

local activeCategory = nil
local typedText = ""

local function AcquireRow(index)
    local row = rows[index]
    if row then return row end

    row = CreateFrame("Button", nil, content)
    row:SetHeight(ROW_H)
    row:SetPoint("TOPLEFT", content, "TOPLEFT", 0, -((index - 1) * ROW_H))
    row:SetPoint("TOPRIGHT", content, "TOPRIGHT", 0, -((index - 1) * ROW_H))

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

    local count = Brand.FS(row, "", Brand.BODY_FONT_PATH, 11, nil, 0.6, 0.6, 0.6)
    count:SetPoint("RIGHT", row, "RIGHT", -6, 0)
    count:SetJustifyH("RIGHT")
    row.countText = count

    local name = Brand.FS(row, "", Brand.BODY_FONT_PATH, 13, nil, 1, 1, 1)
    name:SetPoint("LEFT", icon, "RIGHT", 8, 0)
    name:SetPoint("RIGHT", count, "LEFT", -6, 0)
    name:SetJustifyH("LEFT")
    name:SetWordWrap(false)
    row.nameText = name

    row:SetScript("OnEnter", function(self) self.highlight:Show() end)
    row:SetScript("OnLeave", function(self) self.highlight:Hide() end)
    row:SetScript("OnClick", function(self)
        if self.entry then addonTable.AppearanceDetail:Show(self.entry) end
    end)

    rows[index] = row
    return row
end

function Collection:Refresh()
    if not frame then return end
    Data:Ensure()

    -- activeCategory == nil means "All weapons" - deliberately NOT defaulted
    -- to the first category anymore. Forcing a single starting category
    -- meant this window could never show everything at once, so a player
    -- browsing without a specific weapon type in mind could miss something
    -- they'd already collected just because it lived in an unselected type.
    local catName = "All weapons"
    for i = 1, #Data.categories do
        if Data.categories[i].id == activeCategory then
            catName = Data.categories[i].name
            break
        end
    end
    if slotLink and slotLink.label then
        slotLink.label:SetText(catName .. "  |cff681417v|r")
        slotLink.label:ClearAllPoints()
        slotLink.label:SetPoint("LEFT", slotLink, "LEFT", 0, 0)
        slotLink:SetWidth(math.max(40, slotLink.label:GetStringWidth() + 8))
    end

    local display = {}
    local resolving = false
    local collected, total = 0, 0

    if activeCategory then
        local bucket = Data.byCategory[activeCategory]
        if bucket then
            resolving = bucket.resolving
            collected, total = bucket.collected, bucket.total
            local groups = Data:BuildGroups(activeCategory, true, typedText)
            for i = 1, #groups do
                for r = 1, #groups[i].rows do
                    display[#display + 1] = groups[i].rows[r]
                end
            end
        end
    else
        for i = 1, #Data.categories do
            local catID = Data.categories[i].id
            local bucket = Data.byCategory[catID]
            if bucket then
                resolving = resolving or bucket.resolving
                collected = collected + bucket.collected
                total = total + bucket.total
                local groups = Data:BuildGroups(catID, true, typedText)
                for g = 1, #groups do
                    for r = 1, #groups[g].rows do
                        display[#display + 1] = groups[g].rows[r]
                    end
                end
            end
        end
    end

    table.sort(display, function(a, b) return (a.name or "") < (b.name or "") end)
    progressText:SetText(resolving and "Reading weapons..." or "")
    countText:SetText(string.format("%d collected  |cff999999(of %d%s)|r",
        collected, total, activeCategory and " in this type" or ""))

    for i = 1, #display do
        local e = display[i]
        Data:RequestName(e)
        local row = AcquireRow(i)
        row.entry = e
        row.icon:SetTexture(e.icon or "Interface\\Icons\\INV_Misc_QuestionMark")

        local displayName = e.name
        if not displayName then
            local details = Data:GetSourceDetails(e)
            for d = 1, #details do
                if details[d].name and details[d].name ~= "" then
                    displayName = details[d].name
                    break
                end
            end
        end

        row.nameText:SetText(displayName
            or (e.nameFailed and "|cff777777Name unavailable|r")
            or "|cff777777Loading...|r")
        local n = e.sourceIDs and #e.sourceIDs or 0
        row.countText:SetText(n > 1 and (n .. " items") or "")
        row:Show()
    end
    for i = #display + 1, #rows do rows[i]:Hide() end

    local height = math.max(1, #display * ROW_H)
    content:SetHeight(height)
    scrollChild:SetHeight(height)
    if frame.UpdateScrollRange then frame.UpdateScrollRange() end
end

function Collection:SelectCategory(catID)
    activeCategory = catID
    if type(XalsWarchestDB) == "table" then XalsWarchestDB.collectionCategory = catID end

    self:Refresh()

    -- ResolveCategory(nil, ...) no-ops (there's no bucket for a nil catID),
    -- so "All weapons" needs the bulk resolver instead or nothing under an
    -- unresolved category would ever finish loading.
    if catID then
        Data:ResolveCategory(catID, function(done, total)
            if not frame or not frame:IsShown() then return end
            if done >= total then
                Collection:Refresh()
            elseif progressText then
                progressText:SetText(string.format("Reading weapons... %d / %d", done, total))
            end
        end)
    else
        Data:ResolveAll(function(done, total, finished)
            if not frame or not frame:IsShown() then return end
            if finished then
                Collection:Refresh()
            elseif progressText then
                progressText:SetText(string.format("Reading weapons... %d / %d", done, total))
            end
        end)
    end
end

local function BuildWindow()
    if frame then return frame end

    local f = CreateFrame("Frame", "XalsWarchestCollection", UIParent)
    tinsert(UISpecialFrames, "XalsWarchestCollection")
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
            XalsWarchestDB.collectionPos = { point = point, relPoint = relPoint, x = x, y = y }
        end
    end)
    f:SetClampedToScreen(true)

    local pos = type(XalsWarchestDB) == "table" and XalsWarchestDB.collectionPos or nil
    if pos and pos.point then
        f:SetPoint(pos.point, UIParent, pos.relPoint, pos.x, pos.y)
    else
        f:SetPoint("CENTER", UIParent, "CENTER", -320, -120)
    end

    if type(XalsWarchestDB) == "table" then
        activeCategory = XalsWarchestDB.collectionCategory
    end

    Brand.ApplyBackground(f)
    Brand.DrawBorder(f, 1)

    Brand.Title(f, "My Collection", 22, "TOP", f, "TOP", 0, -Brand.SAFE_MARGIN - 4)

    countText = Brand.FS(f, "", Brand.BODY_FONT_PATH, 12, nil, 0.6, 0.6, 0.6)
    countText:SetPoint("TOP", f, "TOP", 0, -44)

    slotLink = Brand.MakeTextLink(f, "Weapon type", function()
        if slotList:IsShown() then slotList:Hide() else slotList:Show() end
    end, 15)
    slotLink:SetPoint("TOPLEFT", f, "TOPLEFT", Brand.SAFE_MARGIN + 14, -62)

    slotList = CreateFrame("Frame", nil, f)
    slotList:SetPoint("TOPLEFT", f, "TOPRIGHT", 8, -62)
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
        local allCollected = 0
        for i = 1, #Data.categories do
            local c = Data.categories[i]
            local bucket = Data.byCategory[c.id]
            allCollected = allCollected + (bucket and bucket.collected or 0)
            options[#options + 1] = { id = c.id, name = c.name, collected = bucket and bucket.collected or 0 }
        end
        options[1].collected = allCollected

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

                btn.count = Brand.FS(btn, "", Brand.BODY_FONT_PATH, 11, nil, 0.6, 0.6, 0.6)
                btn.count:SetPoint("RIGHT", btn, "RIGHT", -2, 0)
                btn.count:SetJustifyH("RIGHT")

                slotBtns[i] = btn
            end

            btn.label:SetText(opt.name)
            btn.count:SetText(opt.collected .. " owned")
            btn:SetScript("OnClick", function()
                slotList:Hide()
                Collection:SelectCategory(opt.id)
            end)
            btn:Show()
        end

        self:SetHeight(16 + #options * SLOT_H)
    end)

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
    placeholder:SetText("Search what you own...")

    searchBox:SetScript("OnTextChanged", function(self)
        typedText = self:GetText() or ""
        if typedText == "" then placeholder:Show() else placeholder:Hide() end
        Collection:Refresh()
    end)
    searchBox:SetScript("OnEscapePressed", function(self)
        self:SetText("")
        self:ClearFocus()
    end)

    progressText = Brand.FS(f, "", Brand.BODY_FONT_PATH, 11, nil, 0.6, 0.6, 0.6)
    progressText:SetPoint("TOPLEFT", f, "TOPLEFT", Brand.SAFE_MARGIN + 14, -119)

    Brand.DrawDivider(f, 0, 137, WIN_W - (Brand.SAFE_MARGIN * 2), Brand.HEADER_COLOR)

    scrollFrame = CreateFrame("ScrollFrame", "XalsWarchestCollectionScroll", f)
    scrollFrame:SetPoint("TOPLEFT", f, "TOPLEFT", Brand.SAFE_MARGIN + 10, -147)
    scrollFrame:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -Brand.SAFE_MARGIN - 12, 44)

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

    local suppress = false
    scrollThumb:SetScript("OnValueChanged", function(_, value)
        if suppress then return end
        scrollFrame:SetVerticalScroll(value)
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
        local visibleHeight = scrollFrame:GetHeight()
        local contentHeight = scrollChild:GetHeight()
        local maxScroll = math.max(0, contentHeight - visibleHeight)
        suppress = true
        scrollThumb:SetMinMaxValues(0, maxScroll)
        suppress = false
        if maxScroll > 0 then
            scrollTrack:Show()
            local ratio = math.min(1, visibleHeight / contentHeight)
            scrollThumbTex:SetHeight(math.max(20, visibleHeight * ratio))
        else
            scrollTrack:Hide()
            scrollFrame:SetVerticalScroll(0)
        end
    end

    local close = Brand.MakeCloseButton(f, function() f:Hide() end)
    close:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -Brand.SAFE_MARGIN - 4, Brand.SAFE_MARGIN)

    f:SetScript("OnShow", function()
        slotLink:Remeasure()
        close:Remeasure()
    end)

    f:Hide()
    frame = f
    return f
end

function Collection:Toggle()
    local f = BuildWindow()
    if f:IsShown() then
        f:Hide()
    else
        Data:Ensure()
        f:Show()
        self:SelectCategory(activeCategory)
    end
end

function Collection:IsShown()
    return frame and frame:IsShown()
end
