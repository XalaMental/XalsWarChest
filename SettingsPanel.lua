-- SettingsPanel.lua
-- Xal's Warchest - settings.
--
-- Two ways in, per the standard: a standalone floating window (the PRIMARY
-- one, opened by /xwc options) and an entry in Blizzard's own AddOns list
-- (secondary, so it's findable where people expect it).
--
-- Structure matches Roster Roundup's real Options.lua, scaled down to this
-- addon's much smaller feature set: header with centered title + divider, a
-- left sidebar of section buttons, content area to the right, a Discord
-- logo pinned to the sidebar's own bottom edge. Only two sections exist
-- right now (Home, Icons) - more get added here as the addon grows, not a
-- redesign each time.

local addonName, addonTable = ...
local SettingsPanel = addonTable.SettingsPanel
local Brand         = addonTable.BrandStyle

local PANEL_NAME = "Xal's Warchest"

local SIDEBAR_W = 132
local CONTENT_W = 280
local WIN_W = 14 + SIDEBAR_W + 10 + 2 + 26 + CONTENT_W + 14
local WIN_H = 420

local RIGHT_MARGIN = 16
local PANEL_LABEL_FONT_SIZE = 14
local PANEL_DESC_FONT_SIZE  = 13

local window, rootPanel
local sidebar, content
local sectionButtons = {}
local activeSection = "Home"

-- ── Shared row helpers ────────────────────────────────────────────
local function AddToggle(parent, anchorTo, yGap, label, description, checked, onToggle)
    local cb = Brand.MakeCheckbox(parent, 20)
    if anchorTo then
        cb:SetPoint("TOPLEFT", anchorTo, "BOTTOMLEFT", 0, yGap)
    else
        cb:SetPoint("TOPLEFT", parent, "TOPLEFT", 0, 0)
    end
    cb:SetChecked(checked)
    cb.OnToggle = onToggle

    local text = Brand.FS(parent, label, Brand.BODY_FONT_PATH, PANEL_LABEL_FONT_SIZE, nil,
        Brand.HEADER_COLOR[1], Brand.HEADER_COLOR[2], Brand.HEADER_COLOR[3])
    text:SetPoint("LEFT", cb, "RIGHT", 8, 0)
    text:SetPoint("RIGHT", parent, "RIGHT", -RIGHT_MARGIN, 0)
    text:SetJustifyH("LEFT")
    text:SetWordWrap(true)

    local desc = Brand.FS(parent, description, Brand.BODY_FONT_PATH, PANEL_DESC_FONT_SIZE, nil,
        0.62, 0.62, 0.62)
    desc:SetPoint("TOPLEFT", cb, "BOTTOMLEFT", 0, -4)
    desc:SetPoint("RIGHT", parent, "RIGHT", -RIGHT_MARGIN, 0)
    desc:SetJustifyH("LEFT")
    desc:SetWordWrap(true)

    return desc, cb
end

-- OptionsSliderTemplate's Low/High/Text sub-regions are only reachable via
-- the old global-name convention (_G[name.."Low"] etc), confirmed on Roster
-- Roundup - not exposed as slider.Low/.High/.Text fields directly. Needs a
-- real frame name for this to work.
local sliderNameCounter = 0
local function AddSlider(parent, anchorTo, yGap, label, min, max, step, value, formatFn, onChange)
    local lbl = Brand.FS(parent, label, Brand.BODY_FONT_PATH, PANEL_LABEL_FONT_SIZE, nil,
        Brand.HEADER_COLOR[1], Brand.HEADER_COLOR[2], Brand.HEADER_COLOR[3])
    if anchorTo then
        lbl:SetPoint("TOPLEFT", anchorTo, "BOTTOMLEFT", 0, yGap)
    else
        lbl:SetPoint("TOPLEFT", parent, "TOPLEFT", 0, 0)
    end

    sliderNameCounter = sliderNameCounter + 1
    local sliderName = "XalsWarchestSlider" .. sliderNameCounter
    local slider = CreateFrame("Slider", sliderName, parent, "OptionsSliderTemplate")
    slider:SetPoint("TOPLEFT", lbl, "BOTTOMLEFT", 4, -22)
    slider:SetWidth(CONTENT_W - 40)
    slider:SetMinMaxValues(min, max)
    slider:SetValueStep(step)
    slider:SetObeyStepOnDrag(true)
    slider:SetValue(value)

    _G[sliderName .. "Low"]:SetText("")
    _G[sliderName .. "High"]:SetText("")
    _G[sliderName .. "Text"]:SetText(formatFn(value))
    -- Blizzard's template hardcodes these gold - doesn't read Brand.ACCENT.
    for _, suffix in ipairs({ "Low", "High", "Text" }) do
        _G[sliderName .. suffix]:SetTextColor(Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3])
    end

    slider:SetScript("OnValueChanged", function(_, val)
        _G[sliderName .. "Text"]:SetText(formatFn(val))
        onChange(val)
    end)

    return slider, lbl
end

-- ── Sidebar link selection ───────────────────────────────────────
-- #323264, confirmed muted color for an unselected sidebar link - only the
-- active section reads as "on" instead of every link sitting at full
-- accent color all the time.
local UNSELECTED_LINK_COLOR = { 0.196, 0.196, 0.392 }
local function SetLinkSelected(btn, selected)
    local r, g, b = UNSELECTED_LINK_COLOR[1], UNSELECTED_LINK_COLOR[2], UNSELECTED_LINK_COLOR[3]
    if selected then r, g, b = Brand.HEADER_COLOR[1], Brand.HEADER_COLOR[2], Brand.HEADER_COLOR[3] end
    btn.label:SetTextColor(r, g, b, 1)
    btn.selected = selected
    btn:SetScript("OnLeave", function()
        local rr, gg, bb = UNSELECTED_LINK_COLOR[1], UNSELECTED_LINK_COLOR[2], UNSELECTED_LINK_COLOR[3]
        if btn.selected then rr, gg, bb = Brand.HEADER_COLOR[1], Brand.HEADER_COLOR[2], Brand.HEADER_COLOR[3] end
        btn.label:SetTextColor(rr, gg, bb, 1)
    end)
end

-- ── Home ─────────────────────────────────────────────────────────
local function BuildHome(parent)
    local icon = parent:CreateTexture(nil, "ARTWORK")
    icon:SetSize(100, 100)
    icon:SetPoint("TOP", parent, "TOP", 0, 0)
    icon:SetTexture("Interface\\AddOns\\XalsWarchest\\Icon.png")

    local lead = Brand.FS(parent, "Every weapon you're still missing, and where it comes from.",
        Brand.TITLE_FONT_PATH, 16, nil, Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3])
    lead:SetPoint("TOP", icon, "BOTTOM", 0, -14)
    lead:SetWidth(CONTENT_W - 20)
    lead:SetJustifyH("CENTER")
    lead:SetWordWrap(true)

    local rule = Brand.T(parent, (CONTENT_W - 50) / 2, 0, 50, Brand.LINE_THICKNESS,
        Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3], 1)
    rule:ClearAllPoints()
    rule:SetPoint("TOP", lead, "BOTTOM", 0, -14)
    rule:SetSize(50, Brand.LINE_THICKNESS)

    local body = Brand.FS(parent,
        "Xal's Warchest tracks every unique weapon look in the game - drops, "
        .. "vendors, quests, professions, achievements - researched and "
        .. "verified against the game's own data, not guessed. Armoire's "
        .. "counterpart, weapons only.",
        Brand.BODY_FONT_PATH, 12, nil, 0.85, 0.85, 0.85)
    body:SetPoint("TOP", rule, "BOTTOM", 0, -14)
    body:SetWidth(CONTENT_W - 10)
    body:SetJustifyH("CENTER")
    body:SetWordWrap(true)
end

-- ── Icons ────────────────────────────────────────────────────────
local function BuildIcons(parent)
    local mmHeader = Brand.FS(parent, "Minimap button", Brand.TITLE_FONT_PATH, 15, nil,
        Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3])
    mmHeader:SetPoint("TOPLEFT", parent, "TOPLEFT", 0, 0)

    local mmDesc = AddToggle(parent, mmHeader, -10,
        "Show the minimap button",
        "Left-click opens the tracker, right-click opens these settings.",
        not (type(XalsWarchestDB) == "table" and XalsWarchestDB.minimap
            and XalsWarchestDB.minimap.hide),
        function(self)
            addonTable.MinimapButton:SetShown(self:GetChecked() and true or false)
        end)

    local div = Brand.DrawDivider(parent, 0, 0, CONTENT_W)
    div:ClearAllPoints()
    div:SetPoint("TOPLEFT", mmDesc, "BOTTOMLEFT", 0, -14)
    div:SetPoint("RIGHT", parent, "RIGHT", 0, 0)

    local zaHeader = Brand.FS(parent, "Zone alert icon", Brand.TITLE_FONT_PATH, 15, nil,
        Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3])
    zaHeader:SetPoint("TOPLEFT", div, "BOTTOMLEFT", 0, -14)

    local zaDesc = AddToggle(parent, zaHeader, -10,
        "Show the zone alert icon",
        "A small floating icon that appears while you're standing in a zone "
            .. "with a weapon you're still missing.",
        not (type(XalsWarchestDB) == "table" and XalsWarchestDB.zoneIconHide),
        function(self)
            addonTable.ZoneAlertIcon:SetShown(self:GetChecked() and true or false)
        end)

    local scale = (type(XalsWarchestDB) == "table" and XalsWarchestDB.zoneIconScale) or 1.0
    local slider = AddSlider(parent, zaDesc, -14, "Icon size", 0.5, 2.0, 0.1, scale,
        function(v) return math.floor(v * 100) .. "%" end,
        function(v)
            if type(XalsWarchestDB) == "table" then XalsWarchestDB.zoneIconScale = v end
            addonTable.ZoneAlertIcon:ApplyScale()
        end)

    local resetLink = Brand.MakeTextLink(parent, "Reset icon position", function()
        addonTable.ZoneAlertIcon:ResetPosition()
    end, 12)
    resetLink:SetPoint("TOPLEFT", slider, "BOTTOMLEFT", -4, -20)
end

local SECTIONS = {
    { name = "Home",  build = BuildHome },
    { name = "Icons", build = BuildIcons },
}

local function ClearContent()
    for _, child in ipairs({ content:GetChildren() }) do
        child:Hide()
        child:SetParent(nil)
    end
    for _, region in ipairs({ content:GetRegions() }) do
        region:Hide()
    end
end

local function ShowSection(name)
    activeSection = name
    for key, btn in pairs(sectionButtons) do
        SetLinkSelected(btn, key == name)
    end
    ClearContent()
    for _, section in ipairs(SECTIONS) do
        if section.name == name then
            section.build(content)
            return
        end
    end
end

local function BuildWindow()
    if window then return window end

    local f = CreateFrame("Frame", "XalsWarchestOptionsWindow", UIParent)
    tinsert(UISpecialFrames, "XalsWarchestOptionsWindow")
    f:SetSize(WIN_W, WIN_H)
    f:SetFrameStrata("HIGH")
    f:SetToplevel(true)
    f:SetMovable(true)
    f:EnableMouse(true)
    f:RegisterForDrag("LeftButton")
    f:SetScript("OnDragStart", f.StartMoving)
    f:SetScript("OnDragStop", function(self)
        self:StopMovingOrSizing()
        if type(XalsWarchestDB) == "table" then
            local point, _, relPoint, x, y = self:GetPoint()
            XalsWarchestDB.optionsPos = { point = point, relPoint = relPoint, x = x, y = y }
        end
    end)
    f:SetClampedToScreen(true)

    local pos = type(XalsWarchestDB) == "table" and XalsWarchestDB.optionsPos or nil
    if pos and pos.point then
        f:SetPoint(pos.point, UIParent, pos.relPoint, pos.x, pos.y)
    else
        f:SetPoint("CENTER", UIParent, "CENTER", 300, -60)
    end

    Brand.ApplyBackground(f)
    Brand.DrawBorder(f, 1)

    Brand.Title(f, "Xal's Warchest", 28, "TOP", f, "TOP", 0, -20)

    local headerDivider = f:CreateTexture(nil, "ARTWORK")
    headerDivider:SetColorTexture(Brand.HEADER_COLOR[1], Brand.HEADER_COLOR[2], Brand.HEADER_COLOR[3], 1)
    headerDivider:SetHeight(Brand.LINE_THICKNESS)
    headerDivider:SetPoint("TOPLEFT", f, "TOPLEFT", Brand.SAFE_MARGIN, -70)
    headerDivider:SetPoint("TOPRIGHT", f, "TOPRIGHT", -Brand.SAFE_MARGIN, -70)

    local close = Brand.MakeCloseButton(f, function() f:Hide() end)
    close:SetPoint("TOPRIGHT", f, "TOPRIGHT", -Brand.SAFE_MARGIN, -Brand.SAFE_MARGIN)

    -- Sidebar
    sidebar = CreateFrame("Frame", nil, f)
    sidebar:SetPoint("TOPLEFT", f, "TOPLEFT", Brand.SAFE_MARGIN, -88)
    sidebar:SetPoint("BOTTOMLEFT", f, "BOTTOMLEFT", Brand.SAFE_MARGIN, Brand.SAFE_MARGIN)
    sidebar:SetWidth(SIDEBAR_W)

    local vDivider = f:CreateTexture(nil, "ARTWORK")
    vDivider:SetColorTexture(Brand.DIVIDER_COLOR[1], Brand.DIVIDER_COLOR[2], Brand.DIVIDER_COLOR[3], 1)
    vDivider:SetWidth(Brand.LINE_THICKNESS)
    vDivider:SetPoint("TOPLEFT", sidebar, "TOPRIGHT", 10, 0)
    vDivider:SetPoint("BOTTOMLEFT", sidebar, "BOTTOMRIGHT", 10, 0)

    content = CreateFrame("Frame", nil, f)
    content:SetPoint("TOPLEFT", vDivider, "TOPRIGHT", 26, -32)
    content:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -Brand.SAFE_MARGIN, Brand.SAFE_MARGIN)
    content:SetWidth(CONTENT_W)

    local y = -32
    for _, section in ipairs(SECTIONS) do
        local btn = Brand.MakeTextLink(sidebar, section.name, function() ShowSection(section.name) end)
        btn:SetPoint("TOPLEFT", sidebar, "TOPLEFT", 4, y)
        sectionButtons[section.name] = btn
        y = y - 24
    end

    -- Logo-only Discord link, pinned to the sidebar's own bottom edge so it
    -- stays put regardless of how many sections get added later.
    local discordLogo = Brand.MakeDiscordLogoLink(sidebar, SIDEBAR_W - 16)
    discordLogo:SetPoint("BOTTOMLEFT", sidebar, "BOTTOMLEFT", 8, 0)

    f:Hide()
    window = f
    ShowSection(activeSection)
    return f
end

local function BuildCanvasPanel()
    if rootPanel then return rootPanel end

    local panel = CreateFrame("Frame")
    panel.name = PANEL_NAME

    local title = Brand.FS(panel, PANEL_NAME, Brand.TITLE_FONT_PATH, 22, nil,
        Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3])
    title:SetPoint("TOPLEFT", panel, "TOPLEFT", 16, -16)

    local blurb = Brand.FS(panel, "A weapon appearance tracker - the counterpart to Xal's Armoire, "
        .. "weapons only.", Brand.BODY_FONT_PATH, 13, nil, 0.85, 0.85, 0.85)
    blurb:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -10)
    blurb:SetPoint("RIGHT", panel, "RIGHT", -RIGHT_MARGIN, 0)
    blurb:SetJustifyH("LEFT")
    blurb:SetWordWrap(true)

    local open = Brand.MakeButton(panel, "Open Xal's Warchest options", 220, 28, function()
        SettingsPanel:Open()
    end)
    open:SetPoint("TOPLEFT", blurb, "BOTTOMLEFT", 0, -20)

    rootPanel = panel
    return panel
end

function SettingsPanel:Init()
    BuildCanvasPanel()

    if Settings and Settings.RegisterCanvasLayoutCategory then
        local category = Settings.RegisterCanvasLayoutCategory(rootPanel, rootPanel.name)
        category.ID = rootPanel.name
        Settings.RegisterAddOnCategory(category)
        SettingsPanel.category = category
    elseif InterfaceOptions_AddCategory then
        InterfaceOptions_AddCategory(rootPanel)
    end
end

-- The primary entry point: the standalone window.
function SettingsPanel:Open()
    local f = BuildWindow()
    if f:IsShown() then f:Hide() else f:Show() end
end
