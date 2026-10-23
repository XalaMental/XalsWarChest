-- AchievementSources.lua
-- Xal's Warchest - which achievement grants which weapon appearance.
--
-- C_TransmogCollection.GetSourceInfo hands back an itemID and sourceType = 5
-- ("achievement") but records nothing about WHICH achievement. This table is
-- the missing half, for WEAPONS specifically, across every expansion in the
-- game's history.
--
-- Merged from the per-expansion research files in
-- D:\WoW_Addons\Dev\warchest_research\ - see those files for the full ID
-- policy. Achievement-sourced weapons are genuinely rare across the whole
-- game - most expansions here have zero.
--
-- COVERAGE CAVEAT: every expansion except Legion hit Wowhead's 1,000-item
-- listing display cap, so items past that cap were never seen. The older-
-- expansions research pass also found a real gap in the source-tag method
-- itself: some genuine achievement-sourced weapons (confirmed: Shadowlands'
-- Dune Dominance set) carry no explicit achievement source tag in Wowhead's
-- own listing data at all, and were only caught by cross-checking against
-- Armoire's broader (non-weapon-filtered) achievement candidate pool. Treat
-- every expansion here as thorough, not exhaustive.

local addonName, addonTable = ...
addonTable.AchievementSources = {

    ------------------------------------------------------------
    -- WARLORDS OF DRAENOR
    ------------------------------------------------------------
    -- source: https://www.wowhead.com/achievement=8899   ("Challenge Warlord: Gold")
    [118395] = { name = "Claws of Creation", achievementID = 8899, achievement = "Challenge Warlord: Gold" },
    [118396] = { name = "Bloodmaw Gargoyle", achievementID = 8899, achievement = "Challenge Warlord: Gold" },
    [118397] = { name = "Equus", achievementID = 8899, achievement = "Challenge Warlord: Gold" },
    [118398] = { name = "Soul Eater", achievementID = 8899, achievement = "Challenge Warlord: Gold" },
    [118399] = { name = "Sunblade", achievementID = 8899, achievement = "Challenge Warlord: Gold" },
    [118401] = { name = "Arcana Shard Spire", achievementID = 8899, achievement = "Challenge Warlord: Gold" },
    [118402] = { name = "Greatstaff of Infinite Knowledge", achievementID = 8899, achievement = "Challenge Warlord: Gold" },
    [118403] = { name = "Dimension-Ripper's Staff", achievementID = 8899, achievement = "Challenge Warlord: Gold" },
    [118404] = { name = "Living Longbow", achievementID = 8899, achievement = "Challenge Warlord: Gold" },
    [118405] = { name = "Shifting Felblade", achievementID = 8899, achievement = "Challenge Warlord: Gold" },
    [118408] = { name = "Elemental Crescent", achievementID = 8899, achievement = "Challenge Warlord: Gold" },
    [118409] = { name = "Cloudsong Glaive", achievementID = 8899, achievement = "Challenge Warlord: Gold" },
    [118411] = { name = "Crystal-Shot Longrifle", achievementID = 8899, achievement = "Challenge Warlord: Gold" },
    [118412] = { name = "Greatsword of the Inferno", achievementID = 8899, achievement = "Challenge Warlord: Gold" },
    [118413] = { name = "Flamegrinder", achievementID = 8899, achievement = "Challenge Warlord: Gold" },

    ------------------------------------------------------------
    -- LEGION
    ------------------------------------------------------------
    -- source: https://www.wowhead.com/achievement=11210   ("Fight for the Alliance")
    -- The achievement's own page also lists item=141000 ("Replica Lion's
    -- Heart") as a reward alongside this one, but that item is a Shield
    -- (Off Hand slot, confirmed on its own Wowhead item page) -- armor, not
    -- a weapon -- so it correctly does not appear here.
    [140999] = { name = "Replica Lion's Fang", achievementID = 11210, achievement = "Fight for the Alliance" },

    -- source: https://www.wowhead.com/achievement=11211   ("Fight for the Horde")
    [141001] = { name = "Replica Blood Guard's Cleaver", achievementID = 11211, achievement = "Fight for the Horde" },
    [141002] = { name = "Replica Staff of Gul'dan", achievementID = 11211, achievement = "Fight for the Horde" },

    ------------------------------------------------------------
    -- SHADOWLANDS
    ------------------------------------------------------------
    -- source: https://www.wowhead.com/achievement=15392   ("Dune Dominance")
    -- Part of the "Arsenal: Weapons of Glorious Dominion" weapon-appearance
    -- set, unlocked all at once by defeating a set of rare encounters in
    -- Zereth Mortis. These three items are present in Wowhead's own weapons
    -- listing (confirming they are weapon-slotted, not armor) but -- unlike
    -- every other entry in this whole research batch -- do NOT carry a
    -- "source":[12] tag in that listing's own data at all, which is why the
    -- filter-and-tag method used everywhere else in this file missed them.
    -- Found instead by cross-checking Armoire's own shadowlands_achievements
    -- .lua candidate pool (built from a broader, non-slot-restricted
    -- sourceType-5 itemID list) for weapon-slotted items, then independently
    -- re-confirmed here: each itemID is directly named in a comment on
    -- achievement=15392's own Wowhead page, and each item's own page
    -- confirms a weapon equip slot (Flail = one-hand, slotbak 13; War Beacon
    -- and Impaler's Graceful Lance = two-hand, slotbak 17).
    [190110] = { name = "Flail of Balletic Carnage", achievementID = 15392, achievement = "Dune Dominance" },
    [190112] = { name = "Glimmering War Beacon", achievementID = 15392, achievement = "Dune Dominance" },
    [190462] = { name = "Impaler's Graceful Lance", achievementID = 15392, achievement = "Dune Dominance" },

    ------------------------------------------------------------
    -- DRAGONFLIGHT
    ------------------------------------------------------------
    -- source: https://www.wowhead.com/achievement=16444   ("Leftovers' Revenge")
    [200882] = {
        name = "Big Kinook's Spare Ladle",
        achievementID = 16444,
        achievement = "Leftovers' Revenge",
    },

    ------------------------------------------------------------
    -- THE WAR WITHIN
    ------------------------------------------------------------
    -- source: https://www.wowhead.com/achievement=42583   ("Mythic: Antorus the Burning Throne")
    -- CAVEAT: read this comment before trusting this entry at face value.
    -- The achievement itself is real Legion raid content, not anything The
    -- War Within added. Wowhead tags this specific itemID's own "added in
    -- expansion" facet as The War Within, and the achievement page directly
    -- links this itemID, so it passes this file's two-page ID policy -- but
    -- the itemID (253285, a high/recent-looking number) almost certainly
    -- exists because of a War Within-era Legion Timewalking pass that
    -- reintroduced the old Antorus achievement reward under a new itemID,
    -- not because the achievement is new. Flagged rather than silently
    -- presented as equal-grade to a genuinely-new-this-expansion entry.
    [253285] = {
        name = "Felscorned Scythe of the Unmaker",
        achievementID = 42583,
        achievement = "Mythic: Antorus the Burning Throne",
    },

}

