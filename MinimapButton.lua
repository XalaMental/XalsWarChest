-- MinimapButton.lua
-- Xal's Warchest
--
-- The minimap launcher icon, via LibDataBroker + LibDBIcon - same
-- combination Armoire uses. Left-click opens the tracker, right-click opens
-- options.
--
-- ICON ART: the addon's own chest artwork, resized down to 64px with a
-- gold ring added (Gaussian-dilation technique, not MaxFilter - see the
-- minimap-icon skill). Full custom shape via LibDBIcon's
-- SetButtonSize/RemoveButtonBorder/RemoveButtonBackground/SetButtonIcon,
-- not Blizzard's circular mask.
local addonName, addonTable = ...
local MinimapButton = addonTable.MinimapButton

local MINIMAP_ICON = "Interface\\AddOns\\XalsWarchest\\Textures\\MinimapIcon_v1.png"
local MINIMAP_ICON_SIZE = 26

function MinimapButton:Register()
    local ldb = LibStub("LibDataBroker-1.1"):NewDataObject("XalsWarchest", {
        type = "launcher",
        text = "Xal's Warchest",
        icon = MINIMAP_ICON,
        OnClick = function(_, button)
            if button == "RightButton" then
                if addonTable.SettingsPanel and addonTable.SettingsPanel.Open then
                    addonTable.SettingsPanel:Open()
                end
            else
                addonTable.MainTracker:Toggle()
            end
        end,
        OnTooltipShow = function(tooltip)
            tooltip:AddLine("Xal's Warchest")

            local Data = addonTable.AppearanceData
            if Data then
                Data:Ensure()
                local s = Data.stats
                if s and s.total > 0 then
                    tooltip:AddLine("|cffffffff" .. s.collected .. "|r of |cffffffff" ..
                        s.total .. "|r unique weapons collected")
                end
            end

            tooltip:AddLine("|cff999999Left-click|r to open the weapon tracker")
            tooltip:AddLine("|cff999999Right-click|r for options")
        end,
    })

    XalsWarchestDB.minimap = XalsWarchestDB.minimap or { hide = false }
    local icon = LibStub("LibDBIcon-1.0")
    icon:Register("XalsWarchest", ldb, XalsWarchestDB.minimap)

    if icon.SetButtonSize then
        icon:SetButtonSize("XalsWarchest", MINIMAP_ICON_SIZE)
        icon:RemoveButtonBorder("XalsWarchest")
        icon:RemoveButtonBackground("XalsWarchest")
        icon:SetButtonIcon("XalsWarchest", MINIMAP_ICON, MINIMAP_ICON_SIZE, "CENTER", 0, 0)
    end
end

-- Backing the Options checkbox - LibDBIcon's own Show/Hide API.
function MinimapButton:SetShown(shown)
    XalsWarchestDB.minimap = XalsWarchestDB.minimap or { hide = false }
    XalsWarchestDB.minimap.hide = not shown

    local icon = LibStub("LibDBIcon-1.0", true)
    if not icon then return end

    if shown then
        icon:Show("XalsWarchest")
    else
        icon:Hide("XalsWarchest")
    end
end
