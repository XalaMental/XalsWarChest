-- Waypoint.lua
-- Xal's Warchest - our own "take me there" for a vendor (or any spot on a map):
-- an on-screen arrow with a live distance, a pin on the minimap and a pin on
-- the world map. Used when TomTom and the game's own waypoint aren't there to
-- do it. Needs only the game's own map calls, so it works on every client.
--
-- Positions are a map id plus x/y as a 0-1 fraction of that map.

local addonName, addonTable = ...
local Waypoint = addonTable.Waypoint
local Brand    = addonTable.BrandStyle

local ARROW_TEXTURE = "Interface\\AddOns\\XalsWarchest\\Textures\\WaypointArrow"
local PIN_TEXTURE   = "Interface\\AddOns\\XalsWarchest\\Textures\\WaypointPin"
local ARROW_SIZE    = 52
local ARRIVE_YARDS  = 15
local TICK          = 0.05

local target          -- { map, x, y, label }
local arrowFrame, arrowTex, distText, labelText
local miniPin, worldPin, trailLine
local driver
local TRAIL_WIDTH = 2 -- thin but noticeable, same as Xal's Xpedited Routes' trail

local function IsNumber(v)
    return type(v) == "number" and v == v and not (issecretvalue and issecretvalue(v))
end

-- ── Map maths (from the game's own map-to-world conversion) ──────
local function WorldPoint(mapID, x, y)
    if not (C_Map and C_Map.GetWorldPosFromMapPos and CreateVector2D) then return nil end
    local ok, continent, pos = pcall(C_Map.GetWorldPosFromMapPos, mapID, CreateVector2D(x, y))
    if not ok or not continent or not pos then return nil end
    local wx, wy = pos:GetXY()
    if not IsNumber(wx) or not IsNumber(wy) then return nil end
    return continent, wx, wy
end

-- A zone map's real size in yards, from two spans across it.
local sizeCache = {}
local function ZoneSize(mapID)
    local cached = sizeCache[mapID]
    if cached ~= nil then return cached or nil end
    local _, x1, y1 = WorldPoint(mapID, 0.4, 0.5)
    local _, x2, y2 = WorldPoint(mapID, 0.6, 0.5)
    local _, x3, y3 = WorldPoint(mapID, 0.5, 0.4)
    local _, x4, y4 = WorldPoint(mapID, 0.5, 0.6)
    local size = false
    if x1 and x2 and x3 and x4 then
        local w = math.sqrt((x2 - x1) ^ 2 + (y2 - y1) ^ 2) / 0.2
        local h = math.sqrt((x4 - x3) ^ 2 + (y4 - y3) ^ 2) / 0.2
        -- A real zone is hundreds to thousands of yards across; anything else
        -- is a bad conversion, not a zone.
        if w > 300 and w < 30000 and h > 300 and h < 30000 then
            size = { w = w, h = h }
        end
    end
    sizeCache[mapID] = size
    return size or nil
end

-- East and north as unit vectors in a continent's own world axes, measured
-- from a zone map on it (so no axis convention is assumed). Cached per continent.
local axesCache = {}
local function Axes(mapID)
    local continent, ax, ay = WorldPoint(mapID, 0.5, 0.5)
    if not continent then return nil end
    if axesCache[continent] then return axesCache[continent] end
    local _, ex, ey = WorldPoint(mapID, 0.6, 0.5)
    local _, nx, ny = WorldPoint(mapID, 0.5, 0.4)
    if not (ex and nx) then return nil end
    local elen = math.sqrt((ex - ax) ^ 2 + (ey - ay) ^ 2)
    local nlen = math.sqrt((nx - ax) ^ 2 + (ny - ay) ^ 2)
    if elen == 0 or nlen == 0 then return nil end
    axesCache[continent] = { (ex - ax) / elen, (ey - ay) / elen, (nx - ax) / nlen, (ny - ay) / nlen }
    return axesCache[continent]
end

-- Where the player is: x, y (0-1) and the map id.
local function PlayerSpot()
    if not (C_Map and C_Map.GetBestMapForUnit and C_Map.GetPlayerMapPosition) then return nil end
    local mapID = C_Map.GetBestMapForUnit("player")
    if not mapID then return nil end
    local pos = C_Map.GetPlayerMapPosition(mapID, "player")
    if not pos then return nil end
    local x, y = pos:GetXY()
    if not IsNumber(x) or not IsNumber(y) or (x == 0 and y == 0) then return nil end
    return x, y, mapID
end

-- Distance in yards, then east and north offsets, from the player to the target.
local function VectorToTarget()
    local px, py, pmap = PlayerSpot()
    if not px then return nil end
    if pmap == target.map then
        local size = ZoneSize(pmap)
        if not size then return nil end
        local dx, dy = (target.x - px) * size.w, (py - target.y) * size.h
        return math.sqrt(dx * dx + dy * dy), dx, dy, px, py, pmap
    end
    -- Another zone: only when it's on the same continent.
    local c1, x1, y1 = WorldPoint(pmap, px, py)
    local c2, x2, y2 = WorldPoint(target.map, target.x, target.y)
    if not (c1 and c2 and c1 == c2) then return nil end
    local axes = Axes(pmap)
    if not axes then return nil end
    local dx, dy = x2 - x1, y2 - y1
    return math.sqrt(dx * dx + dy * dy), dx * axes[1] + dy * axes[2], dx * axes[3] + dy * axes[4],
        px, py, pmap
end

-- ── The arrow ────────────────────────────────────────────────────
local function BuildArrow()
    if arrowFrame then return end

    local f = CreateFrame("Frame", "XalsWarchestWaypointArrow", UIParent)
    f:SetSize(70, 70)
    f:SetFrameStrata("MEDIUM")
    f:SetMovable(true)
    f:EnableMouse(true)
    f:RegisterForDrag("LeftButton")
    f:SetClampedToScreen(true)

    local pos = type(XalsWarchestDB) == "table" and XalsWarchestDB.waypointPos or nil
    if pos and pos.point then
        f:SetPoint(pos.point, UIParent, pos.relPoint, pos.x, pos.y)
    else
        f:SetPoint("CENTER", UIParent, "CENTER", 0, 160)
    end

    f:SetScript("OnDragStart", function(self) self:StartMoving() end)
    f:SetScript("OnDragStop", function(self)
        self:StopMovingOrSizing()
        if type(XalsWarchestDB) == "table" then
            local point, _, relPoint, x, y = self:GetPoint()
            XalsWarchestDB.waypointPos = { point = point, relPoint = relPoint, x = x, y = y }
        end
    end)
    f:SetScript("OnMouseUp", function(_, button)
        if button == "RightButton" then Waypoint:Clear() end
    end)
    f:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_BOTTOM")
        GameTooltip:SetText("Xal's Warchest", Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3])
        if target and target.label then GameTooltip:AddLine(target.label, 1, 1, 1) end
        GameTooltip:AddLine("|cff999999Drag:|r move   |cff999999Right-click:|r cancel")
        GameTooltip:Show()
    end)
    f:SetScript("OnLeave", function() GameTooltip:Hide() end)

    arrowTex = f:CreateTexture(nil, "ARTWORK")
    arrowTex:SetPoint("CENTER")
    arrowTex:SetSize(ARROW_SIZE, ARROW_SIZE)
    arrowTex:SetTexture(ARROW_TEXTURE)

    distText = f:CreateFontString(nil, "OVERLAY")
    distText:SetFont(Brand.BODY_FONT_PATH, 15, "OUTLINE")
    distText:SetPoint("BOTTOM", f, "BOTTOM", 0, -18)
    distText:SetTextColor(1, 1, 1, 1)

    labelText = f:CreateFontString(nil, "OVERLAY")
    labelText:SetFont(Brand.BODY_FONT_PATH, 11, "OUTLINE")
    labelText:SetPoint("TOP", f, "TOP", 0, 14)
    labelText:SetTextColor(Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3], 1)

    f:Hide()
    arrowFrame = f
end

-- ── Pins ─────────────────────────────────────────────────────────
local function MakePin(parent, size)
    local pin = CreateFrame("Frame", nil, parent)
    pin:SetSize(size, size)
    local tex = pin:CreateTexture(nil, "OVERLAY")
    tex:SetAllPoints()
    tex:SetTexture(PIN_TEXTURE)
    pin:Hide()
    return pin
end

local function UpdateMinimapPin(dx, dy, onMap)
    if not (Minimap and C_Minimap and C_Minimap.GetViewRadius) then return end
    if not miniPin then miniPin = MakePin(Minimap, 18) end
    if not trailLine then
        -- A thin line from the middle of the minimap (you) to the pin, drawn
        -- the way Xal's Xpedited Routes draws its trail: a solid texture
        -- stretched to length and rotated.
        trailLine = Minimap:CreateTexture(nil, "ARTWORK")
        trailLine:SetTexture("Interface\\Buttons\\WHITE8x8")
        trailLine:SetVertexColor(1, 1, 1, 0.9)
        trailLine:Hide()
    end
    local radiusYards = C_Minimap.GetViewRadius()
    if not onMap or not IsNumber(radiusYards) or radiusYards <= 0 then
        miniPin:Hide()
        trailLine:Hide()
        return
    end

    local mmRadius = Minimap:GetWidth() / 2
    local scale = mmRadius / radiusYards
    -- A rotating minimap keeps your facing at the top.
    if GetCVar and GetCVar("rotateMinimap") == "1" and GetPlayerFacing then
        local ok, facing = pcall(GetPlayerFacing)
        if ok and IsNumber(facing) then
            local s, c = math.sin(facing), math.cos(facing)
            dx, dy = dx * c + dy * s, -dx * s + dy * c
        end
    end
    local sx, sy = dx * scale, dy * scale
    local square = GetMinimapShape and GetMinimapShape() == "SQUARE"
    local len = square and math.max(math.abs(sx), math.abs(sy)) or math.sqrt(sx * sx + sy * sy)
    -- Past the edge it stays on the rim, pointing the way.
    if len > mmRadius and len > 0 then
        sx, sy = sx / len * mmRadius, sy / len * mmRadius
    end
    miniPin:ClearAllPoints()
    miniPin:SetPoint("CENTER", Minimap, "CENTER", sx, sy)
    miniPin:SetFrameLevel(Minimap:GetFrameLevel() + 6)
    miniPin:Show()

    local dist = math.sqrt(sx * sx + sy * sy)
    if dist < 2 then
        trailLine:Hide() -- right on top of you: a line would just be noise
    else
        trailLine:ClearAllPoints()
        trailLine:SetSize(dist, TRAIL_WIDTH)
        trailLine:SetPoint("CENTER", Minimap, "CENTER", sx / 2, sy / 2)
        trailLine:SetRotation(math.atan2(sy, sx))
        trailLine:Show()
    end
end

local function UpdateWorldPin()
    if not (WorldMapFrame and WorldMapFrame:IsShown() and WorldMapFrame.GetCanvas) then
        if worldPin then worldPin:Hide() end
        return
    end
    local canvas = WorldMapFrame:GetCanvas()
    local shownMap = WorldMapFrame.GetMapID and WorldMapFrame:GetMapID()
    if not (canvas and shownMap and target and shownMap == target.map) then
        if worldPin then worldPin:Hide() end
        return
    end
    if not worldPin then worldPin = MakePin(UIParent, 26) end
    local cs = 1
    local ok, s = pcall(function() return WorldMapFrame:GetCanvasScale() end)
    if ok and IsNumber(s) and s > 0 then cs = s end
    local scale = 1 / cs
    local w, h = canvas:GetWidth(), canvas:GetHeight()
    if worldPin:GetParent() ~= canvas then
        worldPin:SetParent(canvas)
        worldPin:SetFrameLevel(2012)
    end
    worldPin:SetScale(scale)
    worldPin:ClearAllPoints()
    worldPin:SetPoint("CENTER", canvas, "TOPLEFT", (target.x * w) / scale, -(target.y * h) / scale)
    worldPin:Show()
end

-- ── Update loop ──────────────────────────────────────────────────
local elapsedSum = 0
local function OnTick(_, elapsed)
    elapsedSum = elapsedSum + elapsed
    if elapsedSum < TICK then return end
    elapsedSum = 0
    if not target then return end

    local dist, dx, dy, _, _, pmap = VectorToTarget()
    if not dist then
        distText:SetText("--")
        if miniPin then miniPin:Hide() end
        if trailLine then trailLine:Hide() end
    else
        if dist <= ARRIVE_YARDS then
            Waypoint:Clear()
            return
        end
        distText:SetText(string.format("%d yd", dist + 0.5))
        local facing = GetPlayerFacing and GetPlayerFacing()
        if IsNumber(facing) then
            -- Bearing is measured clockwise from north; the facing is
            -- counter-clockwise, and a texture's rotation is counter-clockwise.
            arrowTex:SetRotation(-(facing + math.atan2(dx, dy)))
        end
        UpdateMinimapPin(dx, dy, pmap == target.map)
    end
    UpdateWorldPin()
end

-- ── Public ───────────────────────────────────────────────────────
function Waypoint:Set(mapID, x, y, label)
    if not (mapID and IsNumber(x) and IsNumber(y)) then return false end
    BuildArrow()
    target = { map = mapID, x = x, y = y, label = label }
    labelText:SetText(label or "Waypoint")
    arrowFrame:Show()
    if not driver then
        driver = CreateFrame("Frame")
    end
    elapsedSum = TICK
    driver:SetScript("OnUpdate", OnTick)
    return true
end

function Waypoint:Clear()
    target = nil
    if driver then driver:SetScript("OnUpdate", nil) end
    if arrowFrame then arrowFrame:Hide() end
    if miniPin then miniPin:Hide() end
    if trailLine then trailLine:Hide() end
    if worldPin then worldPin:Hide() end
end

function Waypoint:HasTarget()
    return target ~= nil
end

-- After a skin change: the label takes the new accent.
function Waypoint:ApplySkin()
    if labelText then
        labelText:SetTextColor(Brand.ACCENT[1], Brand.ACCENT[2], Brand.ACCENT[3], 1)
    end
end
