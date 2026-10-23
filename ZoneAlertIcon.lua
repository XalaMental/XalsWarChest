-- ZoneAlertIcon.lua
-- Xal's Warchest - a floating icon, separate from the fixed minimap button,
-- that only exists on screen while the zone you're standing in has a weapon
-- appearance you can actually go and get right now.
--
-- Deliberately NOT a persistent icon - there is no "idle" state. If this
-- zone has nothing, there is no icon, full stop. Left-click does nothing
-- yet (reserved). Right-click opens the tracker.
--
-- Same glow technique as Armoire's version - Interface\Cooldown\star4, ADD
-- blend, 2.4x the icon, Brand.ACCENT, 0.35-0.85 alpha bounce over 1.1s.

local addonName, addonTable = ...
addonTable.ZoneAlertIcon = addonTable.ZoneAlertIcon or {}
local Alert = addonTable.ZoneAlertIcon
local Brand = addonTable.BrandStyle
local Data  = addonTable.AppearanceData

local ICON_SIZE = 52
-- Same chest art as the minimap button - one piece of custom art, used
-- everywhere a launcher icon is needed, per the family's "same visual
-- language" convention.
local ICON_PATH = "Interface\\AddOns\\XalsWarchest\\Textures\\MinimapIcon_v1.png"
-- Badge stays proportional to the icon (same technique/ratio as Xal's
-- Compendium's floating icon badge), not a fixed size, so it keeps reading
-- as "smaller than the icon" regardless of the size slider.
local BADGE_RATIO = 22 / 64

local icon
local DEFAULT_POS = { x = -250, y = 260 }

-- Every entry in the to-do list that matches the zone you're standing in
-- right now. Reuses the exact same to-do/zone-matching MainTracker's own
-- Zone tab uses, so the icon and the badge count can never disagree.
local function ZoneEntries()
    local todo = Data:GetTodoList()
    local zoneNames = Data:CurrentZoneNames()
    local matches = {}
    for i = 1, #todo do
        if Data:MatchesCurrentZone(todo[i], zoneNames) then
            matches[#matches + 1] = todo[i]
        end
    end
    return matches
end

-- Xal's Keep installed: the Keep's rook is the one zone alert for the whole
-- collection suite. This icon never shows; the rook asks this count instead.
if XalsKeep and XalsKeep.RegisterZoneCount then
    XalsKeep:RegisterZoneCount("warchest", function() return #ZoneEntries() end)
end

local function BuildIcon()
    if icon then return icon end

    local f = CreateFrame("Button", "XalsWarchestZoneAlertIcon", UIParent)
    f:SetSize(ICON_SIZE, ICON_SIZE)
    f:SetFrameStrata("MEDIUM")
    f:SetMovable(true)
    f:EnableMouse(true)
    f:RegisterForDrag("LeftButton")
    f:RegisterForClicks("LeftButtonUp", "RightButtonUp")

    -- Scale first, then position - SetPoint offsets are in the frame's own
    -- scaled units, so applying scale afterward shifted the icon off the
    -- spot it was saved at.
    local scale = type(XalsWarchestDB) == "table" and XalsWarchestDB.zoneIconScale or nil
    f:SetScale(scale or 1.0)

    local pos = type(XalsWarchestDB) == "table" and XalsWarchestDB.zoneIconPos or nil
    if pos and pos.point then
        f:SetPoint(pos.point, UIParent, pos.relPoint, pos.x, pos.y)
    else
        f:SetPoint("CENTER", UIParent, "CENTER", DEFAULT_POS.x, DEFAULT_POS.y)
    end

    local glow = f:CreateTexture(nil, "BACKGROUND")
    glow:SetTexture("Interface\\Cooldown\\star4")
    glow:SetBlendMode("ADD")
    glow:SetSize(ICON_SIZE * 2.4, ICON_SIZE * 2.4)
    glow:SetPoint("CENTER")
    glow:SetVertexColor(Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3])
    f.glow = glow

    local glowAnim = glow:CreateAnimationGroup()
    glowAnim:SetLooping("BOUNCE")
    local glowAlpha = glowAnim:CreateAnimation("Alpha")
    glowAlpha:SetFromAlpha(0.35)
    glowAlpha:SetToAlpha(0.85)
    glowAlpha:SetDuration(1.1)
    glowAlpha:SetSmoothing("IN_OUT")
    f.glowAnim = glowAnim

    local tex = f:CreateTexture(nil, "ARTWORK")
    tex:SetAllPoints()
    -- No TexCoord crop - that 7% inset is for trimming a stock Blizzard
    -- square icon's own border; this is custom full-bleed art (the chest
    -- already has its own transparent padding and gold ring baked in), so
    -- cropping it would just cut into the ring.
    tex:SetTexture(ICON_PATH)

    -- Count badge - a real circle (Blizzard's own round indicator asset,
    -- recolored via SetVertexColor), not a backdrop-textured square - same
    -- technique as Xal's Compendium's floating icon badge (a plain WHITE8x8
    -- backdrop box was confirmed rendering as an actual visible square block
    -- there). A slightly larger dark copy sits behind it as a thin ring so
    -- the badge doesn't blend into the icon art under it.
    local badgeSize = math.floor(ICON_SIZE * BADGE_RATIO + 0.5)
    local badgeRing = f:CreateTexture(nil, "OVERLAY", nil, 1)
    badgeRing:SetTexture("Interface\\COMMON\\Indicator-Gray")
    badgeRing:SetSize(badgeSize + 4, badgeSize + 4)
    badgeRing:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", 4, -4)
    badgeRing:SetVertexColor(Brand.BG[1], Brand.BG[2], Brand.BG[3])
    f.badgeRing = badgeRing

    local badge = f:CreateTexture(nil, "OVERLAY", nil, 2)
    badge:SetTexture("Interface\\COMMON\\Indicator-Gray")
    badge:SetSize(badgeSize, badgeSize)
    badge:SetPoint("CENTER", badgeRing, "CENTER", 0, 0)
    badge:SetVertexColor(Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3])
    f.badge = badge

    local badgeText = f:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    badgeText:SetPoint("CENTER", badge, "CENTER", 0, 0)
    badgeText:SetTextColor(1, 1, 1, 1)
    badge.text = badgeText

    f:SetScript("OnDragStart", function(self) self:StartMoving() end)
    f:SetScript("OnDragStop", function(self)
        self:StopMovingOrSizing()
        if type(XalsWarchestDB) == "table" then
            local point, _, relPoint, x, y = self:GetPoint()
            XalsWarchestDB.zoneIconPos = { point = point, relPoint = relPoint, x = x, y = y }
        end
    end)

    f:SetScript("OnClick", function(self, button)
        if button == "RightButton" then
            addonTable.MainTracker:Show()
        end
    end)

    f:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
        GameTooltip:SetText("Xal's Warchest", Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3])
        local matches = ZoneEntries()
        if #matches == 1 then
            GameTooltip:AddLine((matches[1].name or "Something") .. " is here", 1, 1, 1)
        elseif #matches > 1 then
            GameTooltip:AddLine(#matches .. " weapons still to get in this zone", 1, 1, 1)
        end
        GameTooltip:AddLine("|cff999999Right-click:|r open the tracker")
        GameTooltip:Show()
    end)
    f:SetScript("OnLeave", function() GameTooltip:Hide() end)

    icon = f
    return f
end

-- Player can turn this icon off entirely from Settings, same idea as the
-- minimap button's own show/hide checkbox. Defaults to shown.
local function IsEnabled()
    return not (type(XalsWarchestDB) == "table" and XalsWarchestDB.zoneIconHide)
end

function Alert:UpdateVisibility()
    if XalsKeep then
        if icon then icon:Hide() end
        XalsKeep:ZoneUpdated()
        return
    end

    local matches = IsEnabled() and ZoneEntries() or {}

    if #matches == 0 then
        if icon then icon:Hide() end
        return
    end

    local f = BuildIcon()
    f.badge.text:SetText(tostring(#matches))
    f:Show()
    f.glow:Show()
    if not f.glowAnim:IsPlaying() then f.glowAnim:Play() end
end

-- Backing the Settings checkbox.
function Alert:SetShown(shown)
    if type(XalsWarchestDB) == "table" then
        XalsWarchestDB.zoneIconHide = not shown
    end
    Alert:UpdateVisibility()
end

-- Backing the Settings size slider. Takes effect live - just a frame scale,
-- no rebuild needed.
function Alert:ApplyScale()
    if not icon then return end
    local scale = type(XalsWarchestDB) == "table" and XalsWarchestDB.zoneIconScale or nil
    icon:SetScale(scale or 1.0)
end

-- Backing the Settings "Reset icon position" link - the actual fix for "I
-- can't find it," since a dragged-off-screen or forgotten position has no
-- other way back.
function Alert:ResetPosition()
    if type(XalsWarchestDB) == "table" then
        XalsWarchestDB.zoneIconPos = nil
    end
    if icon then
        icon:ClearAllPoints()
        icon:SetPoint("CENTER", UIParent, "CENTER", DEFAULT_POS.x, DEFAULT_POS.y)
    end
end

-- Call once from Engine's Init. Does NOT wait on a full ResolveAll pass -
-- MatchesCurrentZone/PlacesFor already resolve each entry's place on demand
-- (see ResolvePlace calls in AppearanceData.lua), so gating on ResolveAll's
-- "finished" callback was never actually necessary for correctness. It was
-- also the real bug behind the icon never appearing: ResolveAll's ticker
-- cancels itself without ever calling back "finished" if a rescan happens
-- mid-pass (buildGeneration changes) - extremely common during login, since
-- TRANSMOG_COLLECTION_SOURCE_ADDED fires in bursts as the client syncs. That
-- orphaned the one-shot callback this used to wait on, so the icon was never
-- built at all (confirmed via /xwc zone: "icon frame exists: false").
function Alert:Init()
    Data:Ensure()
    Alert:UpdateVisibility()
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ZONE_CHANGED_NEW_AREA")
frame:RegisterEvent("TRANSMOG_COLLECTION_SOURCE_ADDED")
frame:SetScript("OnEvent", function()
    Alert:UpdateVisibility()
end)
