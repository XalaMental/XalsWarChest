-- BrandStyle.lua
-- Xal's Warchest
--
-- Xal's shared visual brand. Background/accent/title treatment are from Xal's
-- Craft Courier's splash panel; the button style is from Xal's Compendium
-- (Courier's beveled "steel" buttons looked visually off - inconsistent
-- highlight/shadow read - once placed in a horizontal row, so Compendium's
-- flat button replaced it as the standard, confirmed 2026-08-09). Every
-- border/divider line is at least 2px - a 1px line can fail to render
-- reliably depending on UI scale, which is why Courier's border was already
-- 2px; dividers are brought up to match here too.
--
-- Use these helpers for splash screens, settings panels, and any other
-- custom-drawn frame. Standard interactive controls that AREN'T part of this
-- brand spec (sliders, edit boxes) should still use Blizzard's native
-- templates unless MakeEditBox below is a better fit - only buttons/borders/
-- titles/checkboxes get the custom treatment.
local addonName, addonTable = ...
addonTable.BrandStyle = {}
local Brand = addonTable.BrandStyle

-- ── Colours (r, g, b) ─────────────────────────────────────────
-- ONE accent color, no exceptions (confirmed 2026-09-25 family-wide, after
-- Routes) - dark brick red, used for title text, the header divider, action
-- links/buttons, and checkbox/slider labels. Brand.HEADER_COLOR is the
-- canonical name used elsewhere in the family; Brand.ACCENT is kept as the
-- same table (not a separate color) so every existing call site in this
-- addon picks up the new color without a rename pass.
Brand.HEADER_COLOR = { 0.4078, 0.0784, 0.0902 } -- #681417, dark brick red
Brand.ACCENT = Brand.HEADER_COLOR
-- Near-black indigo, for every border/divider that ISN'T the one header
-- divider under a window's title - panel/card edges, dropdown popups, the
-- outer window border itself (all confirmed 2026-09-20 family-wide).
Brand.DIVIDER_COLOR = { 0.0627, 0.0627, 0.1255 } -- #101020
Brand.BG     = { 0.03, 0.028, 0.06, 1 } -- dark indigo leaning purple, #08070f
Brand.LINE_THICKNESS = 2 -- minimum for ANY border/divider - never go below this
-- Minimum gap between a panel's true outer edge and the nearest button/text
-- (close buttons especially). DrawBorder()'s line occupies out to 8px in
-- (6px inset + 2px thick) - the FIRST version of this constant was set to
-- exactly 8, which technically cleared the border but left ZERO actual
-- visual gap (content started precisely where the border line ended), so
-- it still read as crammed/touching. Bumped to 14 (a real ~6px of clear
-- space beyond the border) after seeing this live in-game - confirmed
-- 2026-08-09.
Brand.SAFE_MARGIN = 14

-- ── T()  ─ solid-colour texture rectangle.
-- x, y measured from the parent's TOP-LEFT corner (y increases downward).
-- Uses PixelUtil so every edge snaps to a whole physical screen pixel -
-- at a non-integer UI Scale (e.g. 71%), a plain SetPoint/SetSize can land
-- a 2px line on a fractional pixel, which the renderer then blurs/dims.
function Brand.T(parent, x, y, w, h, r, g, b, a, layer)
    local tex = parent:CreateTexture(nil, layer or "ARTWORK")
    PixelUtil.SetPoint(tex, "TOPLEFT", parent, "TOPLEFT", x, -y)
    PixelUtil.SetSize(tex, w, h)
    tex:SetColorTexture(r, g, b, a or 1)
    return tex
end

-- ── FS()  ─ a FontString with a specific font/size/colour.
function Brand.FS(parent, text, fontPath, size, flags, r, g, b)
    local fs = parent:CreateFontString(nil, "OVERLAY")
    fs:SetFont(fontPath, size, flags or "")
    fs:SetText(text)
    fs:SetTextColor(r, g, b, 1)
    return fs
end

-- ── Font paths ────────────────────────────────────────────────
-- Header/title font: Cinzel Bold (bundled, SIL OFL). Body/label font:
-- Inter Regular (bundled, SIL OFL) - Inter SemiBold also bundled for a
-- heavier body weight where one's wanted. Current family-wide pairing,
-- confirmed 2026-09-19 (Guild Council), supersedes the old Simply Sans
-- Bold/Fira Sans Medium pairing this addon shipped with at scaffold time.
Brand.TITLE_FONT_PATH = "Interface\\AddOns\\XalsWarchest\\Fonts\\Cinzel-Bold.ttf"
Brand.BODY_FONT_PATH = "Interface\\AddOns\\XalsWarchest\\Fonts\\Inter-Regular.ttf"
Brand.BODY_SEMIBOLD_FONT_PATH = "Interface\\AddOns\\XalsWarchest\\Fonts\\Inter-SemiBold.ttf"

-- ── Title()  ─ the branded Cinzel-Bold title treatment, with its
-- drop-shadow layer, in one call. Returns the visible (front) fontstring.
function Brand.Title(parent, text, size, anchorPoint, relTo, relPoint, x, y)
    local shadow = Brand.FS(parent, text, Brand.TITLE_FONT_PATH, size, "OUTLINE", 0, 0, 0)
    PixelUtil.SetPoint(shadow, anchorPoint, relTo, relPoint, x + 4, y - 4)
    shadow:SetJustifyH("CENTER")

    local title = Brand.FS(parent, text, Brand.TITLE_FONT_PATH, size, "OUTLINE",
        Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3])
    PixelUtil.SetPoint(title, anchorPoint, relTo, relPoint, x, y)
    title:SetJustifyH("CENTER")
    return title
end

-- ── MakeButton()  ─ Xal's Compendium's flat button (the confirmed standard):
-- thin border, semi-transparent dark fill, no bevel/gradient. Selected vs.
-- normal state is carried by fill brightness AND label color. Call
-- btn:SetSelected(true/false) for a brighter fill + white label (tabs).
local BTN_BORDER = { Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3], 1 }
local BTN_BORDER_SELECTED = { Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3], 1 }
local BTN_LABEL_UNSELECTED = Brand.ACCENT

function Brand.MakeButton(parent, text, w, h, onClick)
    local btn = CreateFrame("Button", nil, parent, "BackdropTemplate")
    PixelUtil.SetSize(btn, w, h)
    -- Fill only - no backdrop edge. Blizzard's backdrop-edge system computes
    -- each side's thickness independently and isn't guaranteed to come out
    -- symmetric at a non-integer UI Scale. Border is hand-drawn below
    -- instead, using the same pixel-snapped technique as Brand.DrawBorder.
    btn:SetBackdrop({
        bgFile = "Interface\\Buttons\\WHITE8x8",
    })
    btn:SetBackdropColor(0.1, 0.1, 0.1, 0.6)

    local thick = Brand.LINE_THICKNESS
    local borderTop = btn:CreateTexture(nil, "ARTWORK")
    PixelUtil.SetPoint(borderTop, "TOPLEFT", btn, "TOPLEFT", 0, 0)
    PixelUtil.SetPoint(borderTop, "TOPRIGHT", btn, "TOPRIGHT", 0, 0)
    PixelUtil.SetHeight(borderTop, thick)

    local borderBottom = btn:CreateTexture(nil, "ARTWORK")
    PixelUtil.SetPoint(borderBottom, "BOTTOMLEFT", btn, "BOTTOMLEFT", 0, 0)
    PixelUtil.SetPoint(borderBottom, "BOTTOMRIGHT", btn, "BOTTOMRIGHT", 0, 0)
    PixelUtil.SetHeight(borderBottom, thick)

    local borderLeft = btn:CreateTexture(nil, "ARTWORK")
    PixelUtil.SetPoint(borderLeft, "TOPLEFT", btn, "TOPLEFT", 0, 0)
    PixelUtil.SetPoint(borderLeft, "BOTTOMLEFT", btn, "BOTTOMLEFT", 0, 0)
    PixelUtil.SetWidth(borderLeft, thick)

    local borderRight = btn:CreateTexture(nil, "ARTWORK")
    PixelUtil.SetPoint(borderRight, "TOPRIGHT", btn, "TOPRIGHT", 0, 0)
    PixelUtil.SetPoint(borderRight, "BOTTOMRIGHT", btn, "BOTTOMRIGHT", 0, 0)
    PixelUtil.SetWidth(borderRight, thick)

    local function SetBorderColor(r, g, b, a)
        borderTop:SetColorTexture(r, g, b, a)
        borderBottom:SetColorTexture(r, g, b, a)
        borderLeft:SetColorTexture(r, g, b, a)
        borderRight:SetColorTexture(r, g, b, a)
    end
    SetBorderColor(BTN_BORDER[1], BTN_BORDER[2], BTN_BORDER[3], BTN_BORDER[4])

    local label = btn:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    label:SetPoint("CENTER")
    label:SetText(text)
    label:SetTextColor(BTN_LABEL_UNSELECTED[1], BTN_LABEL_UNSELECTED[2], BTN_LABEL_UNSELECTED[3], 1)
    btn.label = label

    btn:SetScript("OnEnter", function(self)
        if not self.selected then self:SetBackdropColor(0.18, 0.18, 0.18, 0.75) end
    end)
    btn:SetScript("OnLeave", function(self)
        if not self.selected then self:SetBackdropColor(0.1, 0.1, 0.1, 0.6) end
    end)
    if onClick then btn:SetScript("OnClick", onClick) end

    function btn:SetSelected(selected)
        self.selected = selected
        if selected then
            self:SetBackdropColor(0.22, 0.22, 0.22, 0.85)
            SetBorderColor(BTN_BORDER_SELECTED[1], BTN_BORDER_SELECTED[2], BTN_BORDER_SELECTED[3], BTN_BORDER_SELECTED[4])
            label:SetTextColor(1, 1, 1, 1)
        else
            self:SetBackdropColor(0.1, 0.1, 0.1, 0.6)
            SetBorderColor(BTN_BORDER[1], BTN_BORDER[2], BTN_BORDER[3], BTN_BORDER[4])
            label:SetTextColor(BTN_LABEL_UNSELECTED[1], BTN_LABEL_UNSELECTED[2], BTN_LABEL_UNSELECTED[3], 1)
        end
    end

    function btn:SetBorderColor(r, g, bC, a)
        SetBorderColor(r, g, bC, a)
    end

    return btn
end

-- ── DrawBorder()  ─ single clean line around a frame. Defaults to
-- DIVIDER_COLOR (confirmed 2026-09-20 - was Brand.ACCENT before, now
-- reserved for the ONE header divider instead) - pass a color explicitly to
-- override. Outer window edges use inset 1; panel/card/popup edges keep
-- whatever inset they already used (unchanged).
function Brand.DrawBorder(f, inset, color)
    inset = inset or 6
    color = color or Brand.DIVIDER_COLOR
    local thick = Brand.LINE_THICKNESS
    local r, g, b = color[1], color[2], color[3]

    local top = f:CreateTexture(nil, "ARTWORK")
    PixelUtil.SetPoint(top, "TOPLEFT", f, "TOPLEFT", inset, -inset)
    PixelUtil.SetPoint(top, "TOPRIGHT", f, "TOPRIGHT", -inset, -inset)
    PixelUtil.SetHeight(top, thick)
    top:SetColorTexture(r, g, b, 1)

    local bottom = f:CreateTexture(nil, "ARTWORK")
    PixelUtil.SetPoint(bottom, "BOTTOMLEFT", f, "BOTTOMLEFT", inset, inset)
    PixelUtil.SetPoint(bottom, "BOTTOMRIGHT", f, "BOTTOMRIGHT", -inset, inset)
    PixelUtil.SetHeight(bottom, thick)
    bottom:SetColorTexture(r, g, b, 1)

    local left = f:CreateTexture(nil, "ARTWORK")
    PixelUtil.SetPoint(left, "TOPLEFT", f, "TOPLEFT", inset, -inset)
    PixelUtil.SetPoint(left, "BOTTOMLEFT", f, "BOTTOMLEFT", inset, inset)
    PixelUtil.SetWidth(left, thick)
    left:SetColorTexture(r, g, b, 1)

    local right = f:CreateTexture(nil, "ARTWORK")
    PixelUtil.SetPoint(right, "TOPRIGHT", f, "TOPRIGHT", -inset, -inset)
    PixelUtil.SetPoint(right, "BOTTOMRIGHT", f, "BOTTOMRIGHT", -inset, inset)
    PixelUtil.SetWidth(right, thick)
    right:SetColorTexture(r, g, b, 1)

    return top, bottom, left, right
end

-- ── DrawDivider()  ─ the thin section-separator line used between content
-- blocks (feature lists, header bars, etc.)
-- Defaults to DIVIDER_COLOR (confirmed 2026-09-20) - the ONE header divider
-- under a window's title is the exception and should pass Brand.HEADER_COLOR
-- explicitly; every other divider (section separators, etc.) uses the default.
function Brand.DrawDivider(parent, x, y, width, color)
    color = color or Brand.DIVIDER_COLOR
    return Brand.T(parent, x, y, width, Brand.LINE_THICKNESS, color[1], color[2], color[3], 1)
end

-- ── ApplyBackground()  ─ the standard opaque near-black frame background.
function Brand.ApplyBackground(f)
    local bg = f:CreateTexture(nil, "BACKGROUND")
    bg:SetAllPoints()
    bg:SetColorTexture(Brand.BG[1], Brand.BG[2], Brand.BG[3], Brand.BG[4])
    return bg
end

-- ── MakeCheckbox()  ─ hand-drawn checkbox, same 4-texture border technique
-- as MakeButton/DrawBorder - Blizzard's native UICheckButtonTemplate was
-- found rendering incomplete in a real in-game screenshot. This is the brand
-- standard for checkboxes.
--
-- Usage differs slightly from a native CheckButton: set `cb.OnToggle =
-- function(self) ... end` instead of `cb:SetScript("OnClick", ...)`, since
-- OnClick is used internally to flip the checked state before your handler
-- runs.
function Brand.MakeCheckbox(parent, size)
    size = size or 22
    local cb = CreateFrame("Button", nil, parent)
    PixelUtil.SetSize(cb, size, size)

    local bg = cb:CreateTexture(nil, "BACKGROUND")
    bg:SetAllPoints()
    bg:SetColorTexture(0.1, 0.1, 0.1, 0.6)

    local thick = Brand.LINE_THICKNESS
    local r, g, b = Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3]

    local borderTop = cb:CreateTexture(nil, "ARTWORK")
    PixelUtil.SetPoint(borderTop, "TOPLEFT", cb, "TOPLEFT", 0, 0)
    PixelUtil.SetPoint(borderTop, "TOPRIGHT", cb, "TOPRIGHT", 0, 0)
    PixelUtil.SetHeight(borderTop, thick)
    borderTop:SetColorTexture(r, g, b, 1)

    local borderBottom = cb:CreateTexture(nil, "ARTWORK")
    PixelUtil.SetPoint(borderBottom, "BOTTOMLEFT", cb, "BOTTOMLEFT", 0, 0)
    PixelUtil.SetPoint(borderBottom, "BOTTOMRIGHT", cb, "BOTTOMRIGHT", 0, 0)
    PixelUtil.SetHeight(borderBottom, thick)
    borderBottom:SetColorTexture(r, g, b, 1)

    local borderLeft = cb:CreateTexture(nil, "ARTWORK")
    PixelUtil.SetPoint(borderLeft, "TOPLEFT", cb, "TOPLEFT", 0, 0)
    PixelUtil.SetPoint(borderLeft, "BOTTOMLEFT", cb, "BOTTOMLEFT", 0, 0)
    PixelUtil.SetWidth(borderLeft, thick)
    borderLeft:SetColorTexture(r, g, b, 1)

    local borderRight = cb:CreateTexture(nil, "ARTWORK")
    PixelUtil.SetPoint(borderRight, "TOPRIGHT", cb, "TOPRIGHT", 0, 0)
    PixelUtil.SetPoint(borderRight, "BOTTOMRIGHT", cb, "BOTTOMRIGHT", 0, 0)
    PixelUtil.SetWidth(borderRight, thick)
    borderRight:SetColorTexture(r, g, b, 1)

    -- Texture, not a FontString "X" - a font glyph's CENTER anchor centers
    -- against the font's full line-height box, not the glyph's actual ink.
    -- Blizzard's own checkmark texture centers exactly where told.
    local check = cb:CreateTexture(nil, "OVERLAY")
    check:SetTexture("Interface\\Buttons\\UI-CheckBox-Check")
    check:SetVertexColor(r, g, b, 1)
    PixelUtil.SetSize(check, size - 4, size - 4)
    check:SetPoint("CENTER", cb, "CENTER", 0, 0)
    check:Hide()

    cb.checked = false
    function cb:SetChecked(state)
        self.checked = state and true or false
        if self.checked then check:Show() else check:Hide() end
    end
    function cb:GetChecked()
        return self.checked
    end

    cb:SetScript("OnEnter", function() bg:SetColorTexture(0.18, 0.18, 0.18, 0.75) end)
    cb:SetScript("OnLeave", function() bg:SetColorTexture(0.1, 0.1, 0.1, 0.6) end)
    cb:SetScript("OnClick", function(self)
        self:SetChecked(not self.checked)
        if self.OnToggle then self.OnToggle(self) end
    end)

    return cb
end

-- ── MakeEditBox()  ─ hand-drawn text input, same 4-texture border technique
-- as MakeButton/MakeCheckbox - no Blizzard InputBoxTemplate art, whose
-- endcap textures render wider than its SetSize.
function Brand.MakeEditBox(parent, w, h)
    h = h or 22
    local box = CreateFrame("EditBox", nil, parent)
    PixelUtil.SetSize(box, w, h)

    local bg = box:CreateTexture(nil, "BACKGROUND")
    bg:SetAllPoints()
    bg:SetColorTexture(0.1, 0.1, 0.1, 0.6)

    local thick = Brand.LINE_THICKNESS
    local r, g, b = Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3]

    local borderTop = box:CreateTexture(nil, "ARTWORK")
    PixelUtil.SetPoint(borderTop, "TOPLEFT", box, "TOPLEFT", 0, 0)
    PixelUtil.SetPoint(borderTop, "TOPRIGHT", box, "TOPRIGHT", 0, 0)
    PixelUtil.SetHeight(borderTop, thick)
    borderTop:SetColorTexture(r, g, b, 1)

    local borderBottom = box:CreateTexture(nil, "ARTWORK")
    PixelUtil.SetPoint(borderBottom, "BOTTOMLEFT", box, "BOTTOMLEFT", 0, 0)
    PixelUtil.SetPoint(borderBottom, "BOTTOMRIGHT", box, "BOTTOMRIGHT", 0, 0)
    PixelUtil.SetHeight(borderBottom, thick)
    borderBottom:SetColorTexture(r, g, b, 1)

    local borderLeft = box:CreateTexture(nil, "ARTWORK")
    PixelUtil.SetPoint(borderLeft, "TOPLEFT", box, "TOPLEFT", 0, 0)
    PixelUtil.SetPoint(borderLeft, "BOTTOMLEFT", box, "BOTTOMLEFT", 0, 0)
    PixelUtil.SetWidth(borderLeft, thick)
    borderLeft:SetColorTexture(r, g, b, 1)

    local borderRight = box:CreateTexture(nil, "ARTWORK")
    PixelUtil.SetPoint(borderRight, "TOPRIGHT", box, "TOPRIGHT", 0, 0)
    PixelUtil.SetPoint(borderRight, "BOTTOMRIGHT", box, "BOTTOMRIGHT", 0, 0)
    PixelUtil.SetWidth(borderRight, thick)
    borderRight:SetColorTexture(r, g, b, 1)

    box:SetFont(Brand.BODY_FONT_PATH, 13, "")
    box:SetTextColor(0.9, 0.9, 0.9, 1)
    box:SetTextInsets(6, 6, 0, 0)
    box:SetAutoFocus(false)

    return box
end

-- ── ApplyBackgroundImage()  ─ the OLD shared dark-swirl texture art. NOT
-- called by default - the current look is ApplyBackground()'s flat indigo
-- color alone. Kept only for an addon that deliberately wants a "Classic"
-- style option.
function Brand.ApplyBackgroundImage(f)
    local img = f:CreateTexture(nil, "BORDER")
    img:SetAllPoints(f)
    img:SetTexture("Interface\\AddOns\\XalsWarchest\\Textures\\PanelBackground.jpg")
    return img
end

-- ── Discord link ──────────────────────────────────────────────
-- A permanent, standing text link (not a per-release thing) meant to live on
-- the What's New splash and the main Settings page - Lua can't open a
-- browser directly, so clicking it pops our own copy-a-URL window instead.
Brand.DISCORD_URL = "https://discord.gg/9SwrQDJeCe"

function Brand.MakeDiscordLink(parent)
    local btn = CreateFrame("Button", nil, parent)
    btn:SetSize(130, 20)

    local label = btn:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    label:SetPoint("LEFT")
    label:SetText("Join us on Discord")
    label:SetTextColor(Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3], 1)
    btn.label = label
    btn:SetWidth(label:GetStringWidth())

    btn:SetScript("OnEnter", function() label:SetTextColor(1, 1, 1, 1) end)
    btn:SetScript("OnLeave", function()
        label:SetTextColor(Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3], 1)
    end)
    btn:SetScript("OnClick", function()
        Brand.ShowCopyBox("Join us on Discord", Brand.DISCORD_URL)
    end)

    return btn
end

-- Logo-only Discord link (no text label), pinned to the sidebar's own
-- bottom edge - same technique Roster Roundup uses, but with a single
-- fixed addon-wide URL rather than a per-guild one (this addon has no
-- concept of "which guild"). Real Discord wordmark art, pre-resized to
-- 280x42 (not a huge source relying on the GPU to minify it at render
-- time - same lesson as the minimap icon technique), shared from
-- D:\WoW_Addons\Dev\Assets\Icons\DiscordLogo.png.
Brand.DISCORD_LOGO_ICON = "Interface\\AddOns\\XalsWarchest\\Textures\\DiscordLogo.png"
local DISCORD_LOGO_ASPECT = 42 / 280

function Brand.MakeDiscordLogoLink(parent, width)
    width = width or 140
    local btn = CreateFrame("Button", nil, parent)
    btn:SetSize(width, width * DISCORD_LOGO_ASPECT)

    local logo = btn:CreateTexture(nil, "ARTWORK")
    logo:SetAllPoints()
    logo:SetTexture(Brand.DISCORD_LOGO_ICON)
    logo:SetAlpha(0.9)
    btn.logo = logo

    btn:SetScript("OnEnter", function() logo:SetAlpha(1) end)
    btn:SetScript("OnLeave", function() logo:SetAlpha(0.9) end)
    btn:SetScript("OnClick", function()
        Brand.ShowCopyBox("Join us on Discord", Brand.DISCORD_URL)
    end)

    return btn
end

-- ── MakeTextLink() / MakeCloseButton() ───────────────────────────
-- Text-link style controls (accent gold, brightening to white on hover)
-- rather than boxed buttons. Neither sets its own anchor point; every call
-- site anchors it itself, same convention as Brand.MakeButton.
--
-- fontSize is optional - omit it for the original GameFontHighlightSmall look
-- (used by Close). Passing one switches the label to the addon's own body
-- font at that size instead, for a call site that wants a larger click
-- target than the default.
function Brand.MakeTextLink(parent, text, onClick, fontSize, bold)
    local btn = CreateFrame("Button", nil, parent)
    btn:SetHeight(fontSize and (fontSize + 10) or 20)

    local label
    if fontSize then
        -- Real bold (bundled Inter SemiBold), not an OUTLINE flag - an
        -- outline draws a border around the glyphs, it doesn't change the
        -- font weight (same lesson already applied to Roster Roundup's
        -- sidebar nav text). Opt-in via `bold` so every other MakeTextLink
        -- call site (Close, My Collection, section links, etc.) stays
        -- exactly as it was.
        label = Brand.FS(btn, text, bold and Brand.BODY_SEMIBOLD_FONT_PATH or Brand.BODY_FONT_PATH,
            fontSize, nil, Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3])
    else
        label = btn:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
        label:SetText(text)
        label:SetTextColor(Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3], 1)
    end
    label:SetPoint("CENTER")
    btn.label = label
    btn:SetWidth(math.max(40, label:GetStringWidth() + 8))
    function btn:Remeasure()
        self:SetWidth(math.max(40, label:GetStringWidth() + 8))
    end

    btn:SetScript("OnEnter", function() label:SetTextColor(1, 1, 1, 1) end)
    btn:SetScript("OnLeave", function()
        label:SetTextColor(Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3], 1)
    end)
    btn:SetScript("OnClick", onClick)

    return btn
end

function Brand.MakeCloseButton(parent, onClick)
    return Brand.MakeTextLink(parent, "Close", onClick or function() parent:Hide() end)
end

-- ── ShowCopyBox() ────────────────────────────────────────────────
-- Our own copy-a-URL window, carrying the addon's background, border and
-- fonts like every other frame here, instead of Blizzard's StaticPopup.
local copyFrame

function Brand.ShowCopyBox(caption, url)
    if not url or url == "" then return end

    if not copyFrame then
        local f = CreateFrame("Frame", "XalsWarchestCopyBox", UIParent)
        f:SetSize(360, 130)
        f:SetPoint("CENTER", UIParent, "CENTER", 0, 220)
        f:SetFrameStrata("FULLSCREEN_DIALOG")
        f:SetToplevel(true)
        f:SetMovable(true)
        f:EnableMouse(true)
        f:RegisterForDrag("LeftButton")
        f:SetScript("OnDragStart", f.StartMoving)
        f:SetScript("OnDragStop", f.StopMovingOrSizing)
        f:SetClampedToScreen(true)
        tinsert(UISpecialFrames, "XalsWarchestCopyBox")

        Brand.ApplyBackground(f)
        Brand.DrawBorder(f)

        f.caption = Brand.FS(f, "", Brand.TITLE_FONT_PATH, 15, nil,
            Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3])
        f.caption:SetPoint("TOP", f, "TOP", 0, -Brand.SAFE_MARGIN)

        local box = CreateFrame("EditBox", nil, f, "InputBoxTemplate")
        box:SetHeight(22)
        box:SetPoint("TOPLEFT", f, "TOPLEFT", Brand.SAFE_MARGIN + 10, -46)
        box:SetPoint("TOPRIGHT", f, "TOPRIGHT", -Brand.SAFE_MARGIN, -46)
        box:SetAutoFocus(true)
        box:SetFontObject("GameFontHighlightSmall")
        box:SetScript("OnTextChanged", function(self)
            if self.locked then return end
            self.locked = true
            self:SetText(f.url or "")
            self:HighlightText()
            self.locked = false
        end)
        box:SetScript("OnEscapePressed", function() f:Hide() end)

        box:SetScript("OnKeyUp", function(_, key)
            if key == "C" and IsControlKeyDown() then
                f:Hide()
            end
        end)

        f.box = box

        local hint = Brand.FS(f, "Ctrl+C to copy - this closes when you do",
            Brand.BODY_FONT_PATH, 11, nil, 0.6, 0.6, 0.6)
        hint:SetPoint("TOPLEFT", box, "BOTTOMLEFT", 2, -6)

        local close = Brand.MakeCloseButton(f, function() f:Hide() end)
        close:SetPoint("BOTTOM", f, "BOTTOM", 0, Brand.SAFE_MARGIN)

        copyFrame = f
    end

    copyFrame.url = url
    copyFrame.caption:SetText(caption or "Copy this link")
    copyFrame.box.locked = true
    copyFrame.box:SetText(url)
    copyFrame.box.locked = false
    copyFrame:Show()
    copyFrame.box:SetFocus()
    copyFrame.box:HighlightText()
end
