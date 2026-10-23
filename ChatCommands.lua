-- ChatCommands.lua
-- Xal's Warchest - the slash command.
--
-- This is the power-user fallback, not the main way in: every feature gets
-- a real visual control as its primary interface. Right now there's no
-- tracker window built yet, so this only opens settings and prints help.

local addonName, addonTable = ...
local ChatCommands = addonTable.ChatCommands
local Data          = addonTable.AppearanceData

local ACCENT = "|cff681417"
local WHITE  = "|cffffffff"
local GREY   = "|cff999999"
local RESET  = "|r"

local function Say(msg)
    print(ACCENT .. "Xal's Warchest:" .. RESET .. " " .. msg)
end

local function ShowHelp()
    Say("commands:")
    print("  " .. WHITE .. "/xwc" .. RESET .. " " .. GREY ..
        "- open or close the weapon tracker" .. RESET)
    print("  " .. WHITE .. "/xwc collection" .. RESET .. " " .. GREY ..
        "- open what you already own" .. RESET)
    print("  " .. WHITE .. "/xwc debug" .. RESET .. " " .. GREY ..
        "- diagnose why the to-do list is showing the wrong count" .. RESET)
    print("  " .. WHITE .. "/xwc dump" .. RESET .. " " .. GREY ..
        "- per-category counts, to check what the game actually reports" .. RESET)
    print("  " .. WHITE .. "/xwc find <name>" .. RESET .. " " .. GREY ..
        "- look up a weapon by name" .. RESET)
    print("  " .. WHITE .. "/xwc zone" .. RESET .. " " .. GREY ..
        "- check why the floating zone icon is or isn't showing" .. RESET)
    print("  " .. WHITE .. "/xwc options" .. RESET .. " " .. GREY ..
        "- open the settings window" .. RESET)
    print("  " .. WHITE .. "/xwc help" .. RESET .. " " .. GREY ..
        "- show this list" .. RESET)
end

-- Searches every weapon category rather than just one. Only looks at
-- entries already resolved (name/source known), and says so when some
-- aren't - resolving everything on the spot could lock the client for a
-- moment on a big account.
local function Find(needle)
    Data:Ensure()
    needle = needle:lower()

    local hits, unresolved = 0, 0
    for i = 1, #Data.categories do
        local c = Data.categories[i]
        local bucket = Data.byCategory[c.id]
        if not bucket.resolved then unresolved = unresolved + 1 end

        for e = 1, #bucket.entries do
            local entry = bucket.entries[e]
            if entry.name and entry.name:lower():find(needle, 1, true) then
                hits = hits + 1
                if hits <= 20 then
                    local mark = entry.isCollected and "|cff44dd44collected|r"
                        or "|cffdd8844missing|r"
                    print(string.format("  %s%s%s  %s%s%s  %s  %s",
                        WHITE, entry.name, RESET,
                        GREY, c.name, RESET,
                        Data:SourceLabel(entry.sourceType), mark))
                end
            end
        end
    end

    if hits == 0 then
        Say("nothing matching " .. WHITE .. needle .. RESET .. " found.")
    else
        Say(WHITE .. hits .. RESET .. " match(es)" ..
            (hits > 20 and ", showing the first 20" or "") .. ".")
    end
    if unresolved > 0 then
        print("  " .. GREY .. unresolved .. " categor(y/ies) haven't fully resolved yet" .. RESET)
    end
end

-- Reports the resolve pipeline's real state - which entries have a source
-- and which failed to resolve at all. Built to chase down a real bug: the
-- tracker showing "0 to collect" against a large owned/total gap, meaning
-- GetTodoList() found nothing even though thousands of appearances are
-- genuinely missing.
local function Debug()
    Data:Ensure()

    Say("pipeline:")
    print("  built: " .. WHITE .. tostring(Data.built) .. RESET ..
        "   resolvedAll: " .. WHITE .. tostring(Data.resolvedAll) .. RESET ..
        "   resolvingAll: " .. WHITE .. tostring(Data.resolvingAll) .. RESET)
    print("  stats: " .. WHITE .. Data.stats.collected .. RESET .. " of " ..
        WHITE .. Data.stats.total .. RESET .. " owned")

    local resolved, resolveFailed, unresolved, unobtainable, todoEligible = 0, 0, 0, 0, 0
    local sourceTypeCounts = {}

    for i = 1, #Data.categories do
        local entries = Data.byCategory[Data.categories[i].id].entries
        for e = 1, #entries do
            local entry = entries[e]
            if entry.resolved then
                resolved = resolved + 1
                local st = entry.sourceType or 0
                sourceTypeCounts[st] = (sourceTypeCounts[st] or 0) + 1
                if Data:IsUnobtainable(entry) then
                    unobtainable = unobtainable + 1
                elseif not entry.isCollected then
                    todoEligible = todoEligible + 1
                end
            elseif entry.resolveFailed then
                resolveFailed = resolveFailed + 1
            else
                unresolved = unresolved + 1
            end
        end
    end

    print("  resolved: " .. WHITE .. resolved .. RESET ..
        "   resolveFailed: " .. WHITE .. resolveFailed .. RESET ..
        "   never touched: " .. WHITE .. unresolved .. RESET)
    print("  of resolved: " .. WHITE .. unobtainable .. RESET ..
        " marked unobtainable (sourceType 0/nil), " .. WHITE .. todoEligible .. RESET ..
        " should be on the to-do list")

    print("  " .. ACCENT .. "resolved sourceType breakdown:" .. RESET)
    for st, count in pairs(sourceTypeCounts) do
        print("    " .. WHITE .. tostring(st) .. RESET .. " (" .. Data:SourceLabel(st) .. "): " ..
            WHITE .. count .. RESET)
    end

    local todo = Data:GetTodoList()
    print("  GetTodoList() actually returned: " .. WHITE .. #todo .. RESET)
end

local function ZoneDebug()
    local Alert = addonTable.ZoneAlertIcon
    Say("zone icon diagnostic:")

    local zoneNames = Data:CurrentZoneNames()
    print("  current zone names: " .. WHITE .. table.concat(zoneNames, " | ") .. RESET)

    local todo = Data:GetTodoList()
    print("  GetTodoList(): " .. WHITE .. #todo .. RESET .. " missing weapons total")

    local match, checked = nil, 0
    for i = 1, #todo do
        checked = checked + 1
        if Data:MatchesCurrentZone(todo[i], zoneNames) then
            match = todo[i]
            break
        end
    end
    print("  checked " .. WHITE .. checked .. RESET .. " entries for a zone match" ..
        (match and "" or " - none matched"))

    if match then
        print("  " .. ACCENT .. "match:" .. RESET .. " " .. WHITE .. tostring(match.name) .. RESET)
    end

    local f = _G["XalsWarchestZoneAlertIcon"]
    print("  icon frame exists: " .. WHITE .. tostring(f ~= nil) .. RESET ..
        (f and ("   shown: " .. tostring(f:IsShown())) or ""))

    if Alert and Alert.UpdateVisibility then
        Say("re-running Alert:UpdateVisibility() now.")
        Alert:UpdateVisibility()
    end
end

function ChatCommands:Handle(input)
    input = input or ""
    local cmd, rest = input:lower():match("^%s*(%S*)%s*(.-)%s*$")

    if cmd == "options" or cmd == "config" or cmd == "settings" then
        addonTable.SettingsPanel:Open()

    elseif cmd == "collection" then
        addonTable.CollectionWindow:Toggle()

    elseif cmd == "dump" then
        Data:Dump()

    elseif cmd == "debug" then
        Debug()

    elseif cmd == "zone" then
        ZoneDebug()

    elseif cmd == "find" then
        if rest == "" then
            Say("give me something to look for - " .. WHITE .. "/xwc find bulwark" .. RESET)
        else
            Find(rest)
        end

    elseif cmd == "" then
        addonTable.MainTracker:Toggle()

    elseif cmd == "help" then
        ShowHelp()

    else
        Say("unknown command " .. WHITE .. cmd .. RESET .. ".")
        ShowHelp()
    end
end

SLASH_XALSWARCHEST1 = "/xwc"
SlashCmdList["XALSWARCHEST"] = function(input)
    ChatCommands:Handle(input)
end
