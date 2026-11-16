-- WhatsNew.lua
-- Xal's Warchest
--
-- Shows a "what's new" splash automatically the FIRST time a player logs in
-- after the addon has been updated to a new version - never during normal,
-- unchanged play. Compares the addon's real installed version (read from the
-- .toc at runtime) against the last version this player actually saw, and
-- only pops up when they differ.
--
-- CHANGELOG.md gets written by hand before every release, in Dev, before
-- anything gets committed/pushed - update WHATS_NEW below (the "date" field
-- and the intro/sections content) at the same time, to match. The version
-- NUMBER shown on the splash does NOT need updating here - it's read live
-- from the real installed .toc version.
local addonName, addonTable = ...
addonTable.WhatsNew = {}
local W = addonTable.WhatsNew
local Brand = addonTable.BrandStyle

-- ── Update this block every release to match CHANGELOG.md ──────
W.WHATS_NEW = {
    date = "November 2026",
    intro = "",
    sections = {
        { heading = "New", items = {
            "A small chest now marks weapons you're missing on loot, group-loot rolls, vendor items and quest rewards, and weapon tooltips say whether you have the look. Both can be turned off on the new Items page in settings.",
            "Favorites: right-click any weapon to pin it. Favorites float to the top with a star.",
            "Six color skins, on the new Skin page in settings. Every window changes right away.",
            "Open-world drops: rares and creatures that drop weapons out in the world now show up too.",
            "Warchest now also runs on WoW Forever.",
        } },
    },
}

-- WoW Forever has its own release notes - the Retail ones above talk about
-- the Keep and Retail patch builds that don't apply there.
W.WHATS_NEW_FOREVER = {
    date = "November 2026",
    intro = "Warchest is now on WoW Forever: every vanilla weapon you're missing, and where each one comes from.",
    sections = {
        { heading = "New", items = {
            "A tracker of every weapon appearance you don't own yet, with where it comes from: boss drops in every dungeon and raid, quest rewards and who starts them, vendors, crafted weapons and open-world drops.",
            "Zone, All, Raids and Dungeons tabs, a count badge on the zone icon, and a My Collection window.",
            "On a vendor weapon, Go to nearest vendor points you at the closest vendor for your faction. Install Shortest Path Forever and it draws a real walking route there.",
            "A small chest marks weapons you're missing on loot, rolls, vendors and quest rewards, and tooltips say whether you have the look. Favorites, six color skins and a new settings window too.",
        } },
        { heading = "Good to know", items = {
            "A weapon with no recorded source just shows the game's own label for how it's obtained.",
        } },
    },
}

local FOREVER = WOW_PROJECT_CAMELOT ~= nil and WOW_PROJECT_ID == WOW_PROJECT_CAMELOT

-- ── Version check ────────────────────────────────────────────
local function GetInstalledVersion()
    local v
    if C_AddOns and C_AddOns.GetAddOnMetadata then
        v = C_AddOns.GetAddOnMetadata(addonName, "Version")
    elseif _G.GetAddOnMetadata then
        v = _G.GetAddOnMetadata(addonName, "Version")
    end
    if v == "@project-version@" then
        return "dev"
    end
    return v
end

local FW = 460
local MAX_FH = 560

local function BuildFrame(installedVersion)
    local f = CreateFrame("Frame", "XalsWarchestWhatsNewFrame", UIParent)
    f:SetSize(FW, 360)
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
            XalsWarchestDB.whatsNewPos = { point = point, relPoint = relPoint, x = x, y = y }
        end
    end)
    f:SetClampedToScreen(true)

    -- Own offset (not bare CENTER) so it never lands on another Xal's addon's
    -- window; see the registry in project_addon_visual_brand.md.
    local pos = type(XalsWarchestDB) == "table" and XalsWarchestDB.whatsNewPos or nil
    if pos and pos.point then
        f:SetPoint(pos.point, UIParent, pos.relPoint, pos.x, pos.y)
    else
        f:SetPoint("CENTER", UIParent, "CENTER", -60, 220)
    end

    Brand.ApplyBackground(f)
    Brand.DrawBorder(f, 1)

    local data = FOREVER and W.WHATS_NEW_FOREVER or W.WHATS_NEW
    Brand.Title(f, "What's New", 26, "TOP", f, "TOP", 0, -24)

    local discord = Brand.MakeDiscordLink(f)
    discord:SetPoint("TOPRIGHT", f, "TOPRIGHT", -Brand.SAFE_MARGIN, -Brand.SAFE_MARGIN)

    local verLine = Brand.FS(f, "Version " .. installedVersion .. (data.date and ("  ·  " .. data.date) or ""),
        Brand.BODY_FONT_PATH, 12, "", Brand.DESC_COLOR[1], Brand.DESC_COLOR[2], Brand.DESC_COLOR[3])
    verLine:SetPoint("TOP", f, "TOP", 0, -58)
    verLine:SetJustifyH("CENTER")

    Brand.DrawDivider(f, 30, 78, FW - 60, Brand.HEADER_COLOR)

    -- Every line is anchored to the one above it, so wrapped text pushes the
    -- rest down by its real height. (Reading GetStringHeight right after
    -- SetText is unreliable - it can report a single line - which is what made
    -- lines pile onto each other.) The window height is measured after layout.
    local anchor = f:CreateTexture(nil, "ARTWORK")
    anchor:SetColorTexture(0, 0, 0, 0)
    anchor:SetSize(1, 1)
    anchor:SetPoint("TOPLEFT", f, "TOPLEFT", 30, -92)
    local last = anchor

    if data.intro and data.intro ~= "" then
        local intro = Brand.FS(f, data.intro, Brand.BODY_FONT_PATH, 12, "", Brand.BODY_COLOR[1], Brand.BODY_COLOR[2], Brand.BODY_COLOR[3])
        intro:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, 0)
        intro:SetWidth(FW - 60)
        intro:SetJustifyH("LEFT")
        intro:SetWordWrap(true)
        last = intro
    end

    for _, section in ipairs(data.sections or {}) do
        local head = Brand.FS(f, section.heading, Brand.BODY_FONT_PATH, 13, "OUTLINE",
            Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3])
        head:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, -(last == anchor and 0 or 16))
        last = head

        for _, item in ipairs(section.items or {}) do
            local bullet = Brand.FS(f, "-  " .. item, Brand.BODY_FONT_PATH, 12, "", Brand.BODY_COLOR[1], Brand.BODY_COLOR[2], Brand.BODY_COLOR[3])
            bullet:SetPoint("TOPLEFT", last, "BOTTOMLEFT", last == head and 6 or 0, -8)
            bullet:SetWidth(FW - 76)
            bullet:SetJustifyH("LEFT")
            bullet:SetWordWrap(true)
            last = bullet
        end
    end

    local closeBtn = Brand.MakeButton(f, "Got it", 110, 28, function()
        f:Hide()
    end)
    closeBtn:SetPoint("BOTTOM", f, "BOTTOM", 0, 18)

    -- Fit the window to the text once it has laid out (a frame after showing).
    local function FitHeight()
        local top, bottom = f:GetTop(), last:GetBottom()
        if top and bottom then
            f:SetHeight(math.min((top - bottom) + 30 + 28 + 18 + 12, MAX_FH))
        end
    end
    f:SetScript("OnShow", function()
        C_Timer.After(0, FitHeight)
    end)

    return f
end

-- Opens the splash on demand (/xwc whatsnew), whether or not it's been seen.
local shownFrame
function W:Show()
    if shownFrame then
        shownFrame:Show()
        return
    end
    local ok, frame = pcall(BuildFrame, GetInstalledVersion() or "dev")
    if ok and frame then
        shownFrame = frame
        frame:Show()
    end
end

-- Call this from Engine's Init - checks the version and shows the splash
-- only when it's genuinely changed since this player last saw it.
function W:CheckAndShow()
    local installed = GetInstalledVersion()
    if not installed then return end

    local db = _G["XalsWarchestDB"]
    if not db then return end

    if db.lastSeenVersion ~= installed then
        db.lastSeenVersion = installed
        local ok, frame = pcall(BuildFrame, installed)
        if ok and frame then frame:Show() end
    end
end
