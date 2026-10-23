-- VendorSources.lua
-- Xal's Warchest - which vendor sells which weapon appearance.
--
-- C_TransmogCollection.GetSourceInfo hands back an itemID and sourceType = 3
-- ("vendor") but records nothing about WHICH vendor. This table is the
-- missing half, for WEAPONS specifically.
--
-- Merged from the per-expansion research files in
-- D:\WoW_Addons\Dev\warchest_research\ - see those files for the full ID
-- policy. `vendors` is always a list (Armoire's own shape), even with one
-- row. `cost` is deliberately omitted everywhere.
--
-- COVERAGE: Legion (24 entries, all class Order Hall weapon
-- quartermasters), Battle for Azeroth (17 entries, the Horde/Alliance
-- "Corrupted Aspirant" PvP quartermasters), and Dragonflight are all
-- genuinely complete now. Dragonflight originally hit Wowhead's 1,000-item
-- single-query display cap - fixed by splitting the query across each
-- weapon subtype's own URL slug, each returning its own uncapped result;
-- the union matched the site's own reported item count exactly (2,348).
-- That re-scan found 305 new candidates past the old cap, on top of all
-- 221 originally-verified entries carried forward unchanged. Cataclysm/
-- MoP/WoD are each PARTIALLY checked though - a real, honest subset of
-- their candidate NPCs, not a full scan (earlier passes on those three did
-- hit rate limiting); every unverified candidate is preserved (commented
-- out) in its source file rather than silently dropped. The War Within's
-- single-facet listing came in under the cap on its own, so it was already
-- complete without needing the subtype-split fix.
--
-- VERIFICATION METHOD (older expansions): each candidate NPC's own
-- Wowhead page embeds an `id: 'sells'` Listview block only when that NPC
-- is a genuine merchant - this is a more reliable filter than location
-- alone (a quest/creature-drop mob can have a resolvable location too,
-- without being a vendor). Confirmed against known cases before trusting
-- it. See classic_vendors.lua for the full writeup.

local addonName, addonTable = ...
addonTable.VendorSources = {

    ------------------------------------------------------------
    -- CLASSIC
    ------------------------------------------------------------
    [12791] = {
        name = "Barman Shanker",
        vendors = {
            { vendor = "Plugger Spazzring", zone = "Blackrock Depths" },
        },
    },
    [19292] = {
        name = "Last Month's Mutton",
        vendors = {
            { vendor = "Rona Greenteeth", zone = "Darkmoon Island" },
        },
    },
    [19293] = {
        name = "Last Year's Mutton",
        vendors = {
            { vendor = "Rona Greenteeth", zone = "Darkmoon Island" },
        },
    },
    [21392] = {
        name = "Sickle of Unyielding Strength",
        vendors = {
            { vendor = "Warden Haro", zone = "Ahn'Qiraj: The Fallen Kingdom" },
        },
    },
    [21395] = {
        name = "Blade of Eternal Justice",
        vendors = {
            { vendor = "Warden Haro", zone = "Ahn'Qiraj: The Fallen Kingdom" },
        },
    },
    [21398] = {
        name = "Hammer of the Gathering Storm",
        vendors = {
            { vendor = "Warden Haro", zone = "Ahn'Qiraj: The Fallen Kingdom" },
        },
    },
    [21401] = {
        name = "Scythe of the Unseen Path",
        vendors = {
            { vendor = "Warden Haro", zone = "Ahn'Qiraj: The Fallen Kingdom" },
        },
    },
    [21404] = {
        name = "Dagger of Veiled Shadows",
        vendors = {
            { vendor = "Warden Haro", zone = "Ahn'Qiraj: The Fallen Kingdom" },
        },
    },
    [21407] = {
        name = "Mace of Unending Life",
        vendors = {
            { vendor = "Warden Haro", zone = "Ahn'Qiraj: The Fallen Kingdom" },
        },
    },
    [21410] = {
        name = "Gavel of Infinite Wisdom",
        vendors = {
            { vendor = "Warden Haro", zone = "Ahn'Qiraj: The Fallen Kingdom" },
        },
    },
    [21413] = {
        name = "Blade of Vaulted Secrets",
        vendors = {
            { vendor = "Warden Haro", zone = "Ahn'Qiraj: The Fallen Kingdom" },
        },
    },

    ------------------------------------------------------------
    -- THE BURNING CRUSADE
    ------------------------------------------------------------
    [25823] = {
        name = "Grunt's Waraxe",
        vendors = {
            { vendor = "Quartermaster Urgronn", zone = "Hellfire Peninsula" },
        },
    },
    [25825] = {
        name = "Footman's Longsword",
        vendors = {
            { vendor = "Logistics Officer Ulrike", zone = "Hellfire Peninsula" },
        },
    },
    [25835] = {
        name = "Explorer's Walking Stick",
        vendors = {
            { vendor = "Fedryen Swiftspear", zone = "Zangarmarsh" },
        },
    },
    [25836] = {
        name = "Preserver's Cudgel",
        vendors = {
            { vendor = "Fedryen Swiftspear", zone = "Zangarmarsh" },
        },
    },
    [27930] = {
        name = "Splintermark",
        vendors = {
            { vendor = "Horde Field Scout", zone = "Zangarmarsh" },
        },
    },
    [27931] = {
        name = "Splintermark",
        vendors = {
            { vendor = "Alliance Field Scout", zone = "Zangarmarsh" },
        },
    },
    [27939] = {
        name = "Incendic Rod",
        vendors = {
            { vendor = "Horde Field Scout", zone = "Zangarmarsh" },
        },
    },
    [28164] = {
        name = "Tranquillien Flamberge",
        vendors = {
            { vendor = "Provisioner Vredigar", zone = "Ghostlands" },
        },
    },
    [29124] = {
        name = "Vindicator's Brand",
        vendors = {
            { vendor = "Quartermaster Endarin", zone = "Shattrath City" },
        },
    },
    [29125] = {
        name = "Retainer's Blade",
        vendors = {
            { vendor = "Quartermaster Enuril", zone = "Shattrath City" },
        },
    },
    [29130] = {
        name = "Auchenai Staff",
        vendors = {
            { vendor = "Quartermaster Endarin", zone = "Shattrath City" },
        },
    },
    [29133] = {
        name = "Seer's Cane",
        vendors = {
            { vendor = "Quartermaster Enuril", zone = "Shattrath City" },
        },
    },
    [29137] = {
        name = "Hellscream's Will",
        vendors = {
            { vendor = "Provisioner Nasela", zone = "Nagrand" },
        },
    },
    [29138] = {
        name = "Arechron's Gift",
        vendors = {
            { vendor = "Trader Narasu", zone = "Nagrand" },
        },
    },
    [29149] = {
        name = "Sporeling's Firestick",
        vendors = {
            { vendor = "Mycah", zone = "Zangarmarsh" },
        },
    },
    [29150] = {
        name = "Hardened Stone Shard",
        vendors = {
            { vendor = "Mycah", zone = "Zangarmarsh" },
        },
    },
    [29151] = {
        name = "Veteran's Musket",
        vendors = {
            { vendor = "Logistics Officer Ulrike", zone = "Hellfire Peninsula" },
        },
    },
    [29152] = {
        name = "Marksman's Bow",
        vendors = {
            { vendor = "Quartermaster Urgronn", zone = "Hellfire Peninsula" },
        },
    },
    [29153] = {
        name = "Blade of the Archmage",
        vendors = {
            { vendor = "Logistics Officer Ulrike", zone = "Hellfire Peninsula" },
        },
    },
    [29155] = {
        name = "Stormcaller",
        vendors = {
            { vendor = "Quartermaster Urgronn", zone = "Hellfire Peninsula" },
        },
    },
    [29156] = {
        name = "Honor's Call",
        vendors = {
            { vendor = "Logistics Officer Ulrike", zone = "Hellfire Peninsula" },
        },
    },
    [29165] = {
        name = "Warbringer",
        vendors = {
            { vendor = "Quartermaster Urgronn", zone = "Hellfire Peninsula" },
        },
    },
    [29166] = {
        name = "Hellforged Halberd",
        vendors = {
            { vendor = "Logistics Officer Ulrike", zone = "Hellfire Peninsula" },
        },
    },
    [29167] = {
        name = "Blackened Spear",
        vendors = {
            { vendor = "Quartermaster Urgronn", zone = "Hellfire Peninsula" },
        },
    },
    [29171] = {
        name = "Earthwarden",
        vendors = {
            { vendor = "Fedryen Swiftspear", zone = "Zangarmarsh" },
        },
    },
    [29175] = {
        name = "Gavel of Pure Light",
        vendors = {
            { vendor = "Almaador", zone = "Shattrath City" },
        },
    },
    [29182] = {
        name = "Riftmaker",
        vendors = {
            { vendor = "Alurmi", zone = "Tanaris" },
        },
    },
    [29185] = {
        name = "Continuum Blade",
        vendors = {
            { vendor = "Alurmi", zone = "Tanaris" },
        },
    },
    [29275] = {
        name = "Searing Sunblade",
        vendors = {
            { vendor = "G'eras", zone = "Shattrath City" },
        },
    },
    [29371] = {
        name = "Nexus-Claw",
        vendors = {
            { vendor = "Dealer Jadyan", zone = "Netherstorm" },
        },
    },
    [29372] = {
        name = "Void-Talon",
        vendors = {
            { vendor = "Dealer Jadyan", zone = "Netherstorm" },
        },
    },
    [29377] = {
        name = "Ethereum Phase-Spear",
        vendors = {
            { vendor = "Dealer Jadyan", zone = "Netherstorm" },
        },
    },
    [29378] = {
        name = "Starheart Baton",
        vendors = {
            { vendor = "Dealer Jadyan", zone = "Netherstorm" },
        },
    },
    [29380] = {
        name = "Ethereum Phase Blade",
        vendors = {
            { vendor = "Dealer Jadyan", zone = "Netherstorm" },
        },
    },
    [29391] = {
        name = "Pulse Dagger",
        vendors = {
            { vendor = "Dealer Jadyan", zone = "Netherstorm" },
        },
    },
    [29583] = {
        name = "Sinister Scimitar",
        vendors = {
            { vendor = "Eralan", zone = "Ghostlands" },
        },
    },
    [30570] = {
        name = "Arkadian Claymore",
        vendors = {
            { vendor = "Coreiel", zone = "Nagrand" },
        },
    },
    [30597] = {
        name = "Halaani Claymore",
        vendors = {
            { vendor = "Aldraan", zone = "Nagrand" },
        },
    },
    [30830] = {
        name = "Trident of the Outcast Tribe",
        vendors = {
            { vendor = "Nakodu", zone = "Shattrath City" },
        },
    },
    [30832] = {
        name = "Gavel of Unearthed Secrets",
        vendors = {
            { vendor = "Nakodu", zone = "Shattrath City" },
        },
    },
    [33192] = {
        name = "Carved Witch Doctor's Stick",
        vendors = {
            { vendor = "G'eras", zone = "Shattrath City" },
        },
    },

    ------------------------------------------------------------
    -- WRATH OF THE LICH KING
    ------------------------------------------------------------
    [36981] = {
        name = "Hardened Vrykul Throwing Axe",
        vendors = {
            { vendor = "Lenne", zone = "Dazar'alor" },
        },
    },
    [37461] = {
        name = "Tidebreaker Trident",
        vendors = {
            { vendor = "Ahlurglgr", zone = "Borean Tundra" },
        },
    },
    [39522] = {
        name = "Wolvar Shortbow",
        vendors = {
            { vendor = "Grakjek", zone = "Sholazar Basin" },
        },
    },
    [41746] = {
        name = "Brunnhildar Bow",
        vendors = {
            { vendor = "Warsmith Sigfinna", zone = "The Storm Peaks" },
        },
    },
    [41752] = {
        name = "Brunnhildar Axe",
        vendors = {
            { vendor = "Warsmith Sigfinna", zone = "The Storm Peaks" },
        },
    },
    [42207] = {
        name = "Hateful Gladiator's Cleaver",
        vendors = {
            { vendor = "Blazik Fireclaw", zone = "Dalaran" },
        },
    },
    [42208] = {
        name = "Deadly Gladiator's Cleaver",
        vendors = {
            { vendor = "Herwin Steampop", zone = "Dalaran" },
        },
    },
    [42209] = {
        name = "Furious Gladiator's Cleaver",
        vendors = {
            { vendor = "Kylo Kelwin", zone = "Dalaran" },
        },
    },
    [42226] = {
        name = "Hateful Gladiator's Hacker",
        vendors = {
            { vendor = "Blazik Fireclaw", zone = "Dalaran" },
        },
    },
    [42229] = {
        name = "Relentless Gladiator's Hacker",
        vendors = {
            { vendor = "Zom Bocom", zone = "Dalaran" },
        },
    },
    [42231] = {
        name = "Hateful Gladiator's Chopper",
        vendors = {
            { vendor = "Blazik Fireclaw", zone = "Dalaran" },
        },
    },
    [42232] = {
        name = "Deadly Gladiator's Chopper",
        vendors = {
            { vendor = "Herwin Steampop", zone = "Dalaran" },
        },
    },
    [42234] = {
        name = "Relentless Gladiator's Chopper",
        vendors = {
            { vendor = "Zom Bocom", zone = "Dalaran" },
        },
    },
    [42243] = {
        name = "Furious Gladiator's Shanker",
        vendors = {
            { vendor = "Kylo Kelwin", zone = "Dalaran" },
        },
    },
    [42244] = {
        name = "Relentless Gladiator's Shanker",
        vendors = {
            { vendor = "Zom Bocom", zone = "Dalaran" },
        },
    },
    [42249] = {
        name = "Furious Gladiator's Shiv",
        vendors = {
            { vendor = "Kylo Kelwin", zone = "Dalaran" },
        },
    },
    [42250] = {
        name = "Relentless Gladiator's Shiv",
        vendors = {
            { vendor = "Zom Bocom", zone = "Dalaran" },
        },
    },
    [42255] = {
        name = "Deadly Gladiator's Mutilator",
        vendors = {
            { vendor = "Herwin Steampop", zone = "Dalaran" },
        },
    },
    [42260] = {
        name = "Deadly Gladiator's Ripper",
        vendors = {
            { vendor = "Herwin Steampop", zone = "Dalaran" },
        },
    },
    [42264] = {
        name = "Hateful Gladiator's Slasher",
        vendors = {
            { vendor = "Blazik Fireclaw", zone = "Dalaran" },
        },
    },
    [42265] = {
        name = "Deadly Gladiator's Slasher",
        vendors = {
            { vendor = "Herwin Steampop", zone = "Dalaran" },
        },
    },
    [42267] = {
        name = "Relentless Gladiator's Slasher",
        vendors = {
            { vendor = "Zom Bocom", zone = "Dalaran" },
        },
    },
    [42270] = {
        name = "Deadly Gladiator's Fleshslicer",
        vendors = {
            { vendor = "Herwin Steampop", zone = "Dalaran" },
        },
    },
    [42271] = {
        name = "Furious Gladiator's Fleshslicer",
        vendors = {
            { vendor = "Kylo Kelwin", zone = "Dalaran" },
        },
    },
    [42272] = {
        name = "Relentless Gladiator's Fleshslicer",
        vendors = {
            { vendor = "Zom Bocom", zone = "Dalaran" },
        },
    },
    [42275] = {
        name = "Deadly Gladiator's Pummeler",
        vendors = {
            { vendor = "Herwin Steampop", zone = "Dalaran" },
        },
    },
    [42277] = {
        name = "Relentless Gladiator's Pummeler",
        vendors = {
            { vendor = "Zom Bocom", zone = "Dalaran" },
        },
    },
    [42280] = {
        name = "Deadly Gladiator's Bonecracker",
        vendors = {
            { vendor = "Herwin Steampop", zone = "Dalaran" },
        },
    },
    [42287] = {
        name = "Relentless Gladiator's Slicer",
        vendors = {
            { vendor = "Zom Bocom", zone = "Dalaran" },
        },
    },
    [42289] = {
        name = "Hateful Gladiator's Quickblade",
        vendors = {
            { vendor = "Blazik Fireclaw", zone = "Dalaran" },
        },
    },
    [42290] = {
        name = "Deadly Gladiator's Quickblade",
        vendors = {
            { vendor = "Herwin Steampop", zone = "Dalaran" },
        },
    },
    [42291] = {
        name = "Furious Gladiator's Quickblade",
        vendors = {
            { vendor = "Kylo Kelwin", zone = "Dalaran" },
        },
    },
    [42292] = {
        name = "Relentless Gladiator's Quickblade",
        vendors = {
            { vendor = "Zom Bocom", zone = "Dalaran" },
        },
    },
    [42316] = {
        name = "Hateful Gladiator's Decapitator",
        vendors = {
            { vendor = "Blazik Fireclaw", zone = "Dalaran" },
        },
    },
    [42317] = {
        name = "Deadly Gladiator's Decapitator",
        vendors = {
            { vendor = "Herwin Steampop", zone = "Dalaran" },
        },
    },
    [42319] = {
        name = "Relentless Gladiator's Decapitator",
        vendors = {
            { vendor = "Zom Bocom", zone = "Dalaran" },
        },
    },
    [42321] = {
        name = "Hateful Gladiator's Bonegrinder",
        vendors = {
            { vendor = "Blazik Fireclaw", zone = "Dalaran" },
        },
    },
    [42323] = {
        name = "Furious Gladiator's Bonegrinder",
        vendors = {
            { vendor = "Kylo Kelwin", zone = "Dalaran" },
        },
    },
    [42324] = {
        name = "Relentless Gladiator's Bonegrinder",
        vendors = {
            { vendor = "Zom Bocom", zone = "Dalaran" },
        },
    },
    [42328] = {
        name = "Furious Gladiator's Pike",
        vendors = {
            { vendor = "Kylo Kelwin", zone = "Dalaran" },
        },
    },
    [42329] = {
        name = "Relentless Gladiator's Pike",
        vendors = {
            { vendor = "Zom Bocom", zone = "Dalaran" },
        },
    },
    [42331] = {
        name = "Hateful Gladiator's Greatsword",
        vendors = {
            { vendor = "Blazik Fireclaw", zone = "Dalaran" },
        },
    },
    [42332] = {
        name = "Deadly Gladiator's Greatsword",
        vendors = {
            { vendor = "Herwin Steampop", zone = "Dalaran" },
        },
    },
    [42333] = {
        name = "Furious Gladiator's Greatsword",
        vendors = {
            { vendor = "Kylo Kelwin", zone = "Dalaran" },
        },
    },
    [42334] = {
        name = "Relentless Gladiator's Greatsword",
        vendors = {
            { vendor = "Zom Bocom", zone = "Dalaran" },
        },
    },
    [42347] = {
        name = "Furious Gladiator's Spellblade",
        vendors = {
            { vendor = "Kylo Kelwin", zone = "Dalaran" },
        },
    },
    [42348] = {
        name = "Relentless Gladiator's Spellblade",
        vendors = {
            { vendor = "Zom Bocom", zone = "Dalaran" },
        },
    },
    [42351] = {
        name = "Hateful Gladiator's Gavel",
        vendors = {
            { vendor = "Blazik Fireclaw", zone = "Dalaran" },
        },
    },
    [42354] = {
        name = "Relentless Gladiator's Gavel",
        vendors = {
            { vendor = "Zom Bocom", zone = "Dalaran" },
        },
    },
    [42359] = {
        name = "Hateful Gladiator's Battle Staff",
        vendors = {
            { vendor = "Blazik Fireclaw", zone = "Dalaran" },
        },
    },
    [42366] = {
        name = "Relentless Gladiator's Battle Staff",
        vendors = {
            { vendor = "Zom Bocom", zone = "Dalaran" },
        },
    },
    [42385] = {
        name = "Furious Gladiator's Energy Staff",
        vendors = {
            { vendor = "Kylo Kelwin", zone = "Dalaran" },
        },
    },
    [42484] = {
        name = "Hateful Gladiator's Rifle",
        vendors = {
            { vendor = "Blazik Fireclaw", zone = "Dalaran" },
        },
    },
    [42485] = {
        name = "Deadly Gladiator's Rifle",
        vendors = {
            { vendor = "Herwin Steampop", zone = "Dalaran" },
        },
    },
    [42486] = {
        name = "Furious Gladiator's Rifle",
        vendors = {
            { vendor = "Kylo Kelwin", zone = "Dalaran" },
        },
    },
    [42489] = {
        name = "Hateful Gladiator's Longbow",
        vendors = {
            { vendor = "Blazik Fireclaw", zone = "Dalaran" },
        },
    },
    [42490] = {
        name = "Deadly Gladiator's Longbow",
        vendors = {
            { vendor = "Herwin Steampop", zone = "Dalaran" },
        },
    },
    [42491] = {
        name = "Furious Gladiator's Longbow",
        vendors = {
            { vendor = "Kylo Kelwin", zone = "Dalaran" },
        },
    },
    [42492] = {
        name = "Relentless Gladiator's Longbow",
        vendors = {
            { vendor = "Zom Bocom", zone = "Dalaran" },
        },
    },
    [42504] = {
        name = "Relentless Gladiator's Touch of Defeat",
        vendors = {
            { vendor = "Zom Bocom", zone = "Dalaran" },
        },
    },
    [42512] = {
        name = "Hateful Gladiator's Baton of Light",
        vendors = {
            { vendor = "Blazik Fireclaw", zone = "Dalaran" },
        },
    },
    [42513] = {
        name = "Deadly Gladiator's Baton of Light",
        vendors = {
            { vendor = "Herwin Steampop", zone = "Dalaran" },
        },
    },
    [42515] = {
        name = "Relentless Gladiator's Baton of Light",
        vendors = {
            { vendor = "Zom Bocom", zone = "Dalaran" },
        },
    },
    [42519] = {
        name = "Deadly Gladiator's Piercing Touch",
        vendors = {
            { vendor = "Herwin Steampop", zone = "Dalaran" },
        },
    },
    [42520] = {
        name = "Furious Gladiator's Piercing Touch",
        vendors = {
            { vendor = "Kylo Kelwin", zone = "Dalaran" },
        },
    },
    [42943] = {
        name = "Bloodied Arcanite Reaper",
        vendors = {
            { vendor = "Enchanter Erodin", zone = "Silvermoon City" },
        },
    },
    [42944] = {
        name = "Balanced Heartseeker",
        vendors = {
            { vendor = "Enchanter Erodin", zone = "Silvermoon City" },
        },
    },
    [42945] = {
        name = "Venerable Dal'Rend's Sacred Charge",
        vendors = {
            { vendor = "Enchanter Erodin", zone = "Silvermoon City" },
        },
    },
    [42946] = {
        name = "Charmed Ancient Bone Bow",
        vendors = {
            { vendor = "Enchanter Erodin", zone = "Silvermoon City" },
        },
    },
    [42947] = {
        name = "Dignified Headmaster's Charge",
        vendors = {
            { vendor = "Enchanter Erodin", zone = "Silvermoon City" },
        },
    },
    [42948] = {
        name = "Devout Aurastone Hammer",
        vendors = {
            { vendor = "Enchanter Erodin", zone = "Silvermoon City" },
        },
    },
    [43600] = {
        name = "Brunnhildar Harpoon",
        vendors = {
            { vendor = "Warsmith Sigfinna", zone = "The Storm Peaks" },
        },
    },
    [43601] = {
        name = "Brunnhildar Great Axe",
        vendors = {
            { vendor = "Warsmith Sigfinna", zone = "The Storm Peaks" },
        },
    },
    [44108] = {
        name = "Shinygem Rod",
        vendors = {
            { vendor = "Geen", zone = "Sholazar Basin" },
        },
    },
    [44166] = {
        name = "Lightblade Rivener",
        vendors = {
            { vendor = "Archmage Alvareaux", zone = "Dalaran" },
        },
    },
    [44173] = {
        name = "Flameheart Spell Scalpel",
        vendors = {
            { vendor = "Archmage Alvareaux", zone = "Dalaran" },
        },
    },
    [44174] = {
        name = "Stave of Shrouded Mysteries",
        vendors = {
            { vendor = "Archmage Alvareaux", zone = "Dalaran" },
        },
    },
    [44187] = {
        name = "Fang of Truth",
        vendors = {
            { vendor = "Cielstrasza", zone = "Dragonblight" },
        },
    },
    [44192] = {
        name = "Stalactite Chopper",
        vendors = {
            { vendor = "Lillehoff", zone = "The Storm Peaks" },
        },
    },
    [44199] = {
        name = "Gavel of the Brewing Storm",
        vendors = {
            { vendor = "Cielstrasza", zone = "Dragonblight" },
        },
    },
    [44214] = {
        name = "Purifying Torch",
        vendors = {
            { vendor = "Veteran Crusader Aliocha Segard", zone = "Icecrown" },
        },
    },
    [44244] = {
        name = "Argent Skeleton Crusher",
        vendors = {
            { vendor = "Veteran Crusader Aliocha Segard", zone = "Icecrown" },
        },
    },
    [44245] = {
        name = "Zombie Sweeper Shotgun",
        vendors = {
            { vendor = "Veteran Crusader Aliocha Segard", zone = "Icecrown" },
        },
    },
    [44249] = {
        name = "Runeblade of Demonstrable Power",
        vendors = {
            { vendor = "Duchess Mynx", zone = "Icecrown" },
        },
    },
    [44250] = {
        name = "Reaper of Dark Souls",
        vendors = {
            { vendor = "Duchess Mynx", zone = "Icecrown" },
        },
    },
    [44417] = {
        name = "Hateful Gladiator's War Staff",
        vendors = {
            { vendor = "Blazik Fireclaw", zone = "Dalaran" },
        },
    },
    [44419] = {
        name = "Deadly Gladiator's War Staff",
        vendors = {
            { vendor = "Herwin Steampop", zone = "Dalaran" },
        },
    },
    [44423] = {
        name = "Relentless Gladiator's War Staff",
        vendors = {
            { vendor = "Zom Bocom", zone = "Dalaran" },
        },
    },
    [44424] = {
        name = "Relentless Gladiator's Focus Staff",
        vendors = {
            { vendor = "Zom Bocom", zone = "Dalaran" },
        },
    },
    [48716] = {
        name = "Venerable Mass of McGowan",
        vendors = {
            { vendor = "Enchanter Erodin", zone = "Silvermoon City" },
        },
    },
    [48718] = {
        name = "Repurposed Lava Dredger",
        vendors = {
            { vendor = "Enchanter Erodin", zone = "Silvermoon City" },
        },
    },

    ------------------------------------------------------------
    -- CATACLYSM (PARTIAL)
    ------------------------------------------------------------
    [69893] = {
        name = "Bloodsoaked Skullforge Reaver",
        vendors = {
            { vendor = "Enchanter Erodin", zone = "Silvermoon City" },
        },
    },

    [60823] = {
        name = "Battlefront Sword",
        vendors = {
            { vendor = "Rocky Cliffedge", zone = "Deepholm" },
        },
    },

    [60825] = {
        name = "Earthen Sunderer",
        vendors = {
            { vendor = "Rocky Cliffedge", zone = "Deepholm" },
        },
    },

    [62455] = {
        name = "Spear of Trailing Shadows",
        vendors = {
            { vendor = "Pogg", zone = "Tol Barad Peninsula" },
        },
    },

    [62456] = {
        name = "Dagger of Restless Nights",
        vendors = {
            { vendor = "Pogg", zone = "Tol Barad Peninsula" },
        },
    },

    [62457] = {
        name = "Ravening Slicer",
        vendors = {
            { vendor = "Pogg", zone = "Tol Barad Peninsula" },
        },
    },

    [62458] = {
        name = "Insidious Staff",
        vendors = {
            { vendor = "Pogg", zone = "Tol Barad Peninsula" },
        },
    },

    [62460] = {
        name = "Sky Piercer",
        vendors = {
            { vendor = "Pogg", zone = "Tol Barad Peninsula" },
        },
    },

    [68740] = {
        name = "Darkheart Hacker",
        vendors = {
            { vendor = "Pogg", zone = "Tol Barad Peninsula" },
        },
    },

    [62475] = {
        name = "Dagger of Restless Nights",
        vendors = {
            { vendor = "Quartermaster Brazie", zone = "Tol Barad Peninsula" },
        },
    },

    [62479] = {
        name = "Sky Piercer",
        vendors = {
            { vendor = "Quartermaster Brazie", zone = "Tol Barad Peninsula" },
        },
    },

    [77256] = {
        name = "Darkmoon \"Sword\"",
        vendors = {
            { vendor = "Gelvas Grimegate", zone = "Darkmoon Island" },
        },
    },

    [78341] = {
        name = "Darkmoon Hammer",
        vendors = {
            { vendor = "Gelvas Grimegate", zone = "Darkmoon Island" },
        },
    },

    ------------------------------------------------------------
    -- MISTS OF PANDARIA (PARTIAL)
    ------------------------------------------------------------
    [79131] = {
        name = "Burnished Warden Staff",
        vendors = {
            { vendor = "Enchanter Erodin", zone = "Silvermoon City" },
        },
    },
    [86559] = {
        name = "Frying Pan",
        vendors = {
            { vendor = "Nam Ironpaw", zone = "Valley of the Four Winds" },
        },
    },
    [88535] = {
        name = "Sharpened Tuskarr Spear",
        vendors = {
            { vendor = "Nat Pagle", zone = "Krasarang Wilds" },
        },
    },
    [89392] = {
        name = "Amber Spine of Klaxxi'vess",
        vendors = {
            { vendor = "Ambersmith Zikk", zone = "Dread Wastes" },
        },
    },
    [89393] = {
        name = "Amber Slicer of Klaxxi'vess",
        vendors = {
            { vendor = "Ambersmith Zikk", zone = "Dread Wastes" },
        },
    },
    [89394] = {
        name = "Amber Spear of Klaxxi'vess",
        vendors = {
            { vendor = "Ambersmith Zikk", zone = "Dread Wastes" },
        },
    },
    [89395] = {
        name = "Amber Scythe of Klaxxi'vess",
        vendors = {
            { vendor = "Ambersmith Zikk", zone = "Dread Wastes" },
        },
    },
    [89396] = {
        name = "Amber Espada of Klaxxi'vess",
        vendors = {
            { vendor = "Ambersmith Zikk", zone = "Dread Wastes" },
        },
    },
    [89397] = {
        name = "Amber Saber of Klaxxi'vess",
        vendors = {
            { vendor = "Ambersmith Zikk", zone = "Dread Wastes" },
        },
    },
    [89398] = {
        name = "Amber Flammard of Klaxxi'vess",
        vendors = {
            { vendor = "Ambersmith Zikk", zone = "Dread Wastes" },
        },
    },
    [89399] = {
        name = "Amber Sprayer of Klaxxi'vess",
        vendors = {
            { vendor = "Ambersmith Zikk", zone = "Dread Wastes" },
        },
    },
    [89400] = {
        name = "Amber Sledge of Klaxxi'vess",
        vendors = {
            { vendor = "Ambersmith Zikk", zone = "Dread Wastes" },
        },
    },
    [89553] = {
        name = "Aspirant's Staff of Grace",
        vendors = {
            { vendor = "Master Hwang", zone = "Kun-Lai Summit" },
        },
    },
    [89566] = {
        name = "Novice's Handwraps",
        vendors = {
            { vendor = "Master Tan", zone = "Kun-Lai Summit" },
        },
    },
    [89570] = {
        name = "Initiate's Handwraps",
        vendors = {
            { vendor = "Master Tan", zone = "Kun-Lai Summit" },
        },
    },
    [89571] = {
        name = "Grappling Handwraps",
        vendors = {
            { vendor = "Master Tan", zone = "Kun-Lai Summit" },
        },
    },
    [89572] = {
        name = "Handwraps of Pilgrimage",
        vendors = {
            { vendor = "Master Tan", zone = "Kun-Lai Summit" },
        },
    },
    [89573] = {
        name = "Handwraps of Meditation",
        vendors = {
            { vendor = "Master Tan", zone = "Kun-Lai Summit" },
        },
    },
    [89574] = {
        name = "Handwraps of Fallen Blossoms",
        vendors = {
            { vendor = "Master Tan", zone = "Kun-Lai Summit" },
        },
    },
    [89575] = {
        name = "Handwraps of Serenity",
        vendors = {
            { vendor = "Master Tan", zone = "Kun-Lai Summit" },
        },
    },
    [89577] = {
        name = "Bladed Staff of the Summit's Breeze",
        vendors = {
            { vendor = "Master Hwang", zone = "Kun-Lai Summit" },
        },
    },
    [89578] = {
        name = "Tiger Lord's Razor Claws",
        vendors = {
            { vendor = "Master Tan", zone = "Kun-Lai Summit" },
        },
    },
    [90011] = {
        name = "Staff of the White Tigerlord",
        vendors = {
            { vendor = "Master Hwang", zone = "Kun-Lai Summit" },
        },
    },
    [93843] = {
        name = "Hardened Arcanite Reaper",
        vendors = {
            { vendor = "Enchanter Erodin", zone = "Silvermoon City" },
        },
    },
    [93844] = {
        name = "Refinished Warden Staff",
        vendors = {
            { vendor = "Enchanter Erodin", zone = "Silvermoon City" },
        },
    },
    [93845] = {
        name = "Gore-Steeped Skullforge Reaver",
        vendors = {
            { vendor = "Enchanter Erodin", zone = "Silvermoon City" },
        },
    },
    [93846] = {
        name = "Re-Engineered Lava Dredger",
        vendors = {
            { vendor = "Enchanter Erodin", zone = "Silvermoon City" },
        },
    },
    [93854] = {
        name = "Scholarly Headmaster's Charge",
        vendors = {
            { vendor = "Enchanter Erodin", zone = "Silvermoon City" },
        },
    },
    [93855] = {
        name = "War-Torn Ancient Bone Bow",
        vendors = {
            { vendor = "Enchanter Erodin", zone = "Silvermoon City" },
        },
    },
    [93856] = {
        name = "Noble Dal'Rend's Sacred Charge",
        vendors = {
            { vendor = "Enchanter Erodin", zone = "Silvermoon City" },
        },
    },
    [93857] = {
        name = "Vengeful Heartseeker",
        vendors = {
            { vendor = "Enchanter Erodin", zone = "Silvermoon City" },
        },
    },
    [105920] = {
        name = "Pandaren Peace Offering",
        vendors = {
            { vendor = "Mistweaver Ai", zone = "Timeless Isle" },
        },
    },
    [105921] = {
        name = "Cloudscorcher Greatstaff",
        vendors = {
            { vendor = "Mistweaver Ai", zone = "Timeless Isle" },
        },
    },
    [105923] = {
        name = "Contemplation of Shaohao",
        vendors = {
            { vendor = "Mistweaver Ai", zone = "Timeless Isle" },
        },
    },
    [105924] = {
        name = "Hozen Can Opener",
        vendors = {
            { vendor = "Mistweaver Ai", zone = "Timeless Isle" },
        },
    },
    [105925] = {
        name = "Yak-Herder's Longstaff",
        vendors = {
            { vendor = "Mistweaver Ai", zone = "Timeless Isle" },
        },
    },
    [105926] = {
        name = "Ordon Sacrificial Dagger",
        vendors = {
            { vendor = "Mistweaver Ai", zone = "Timeless Isle" },
        },
    },
    [105927] = {
        name = "Featherdraw Longbow",
        vendors = {
            { vendor = "Mistweaver Ai", zone = "Timeless Isle" },
        },
    },
    [105929] = {
        name = "Scavenged Pandaren Dagger",
        vendors = {
            { vendor = "Mistweaver Ai", zone = "Timeless Isle" },
        },
    },

    -- UNVERIFIED (Wowhead NPC page itself was cached as a WAF block; not
    -- confirmed as real merchants or excluded -- needs a live re-fetch):
    -- [94769] "Shattered Tortoiseshell Longbow" -- candidate vendor "Tortos" (npc=67977), UNVERIFIED
    -- [94805] "Giorgio's Caduceus of Pure Moods" -- candidate vendor "Ji-Kun" (npc=69712), UNVERIFIED
    -- [94814] "Durumu's Baleful Gaze" -- candidate vendor "Durumu the Forgotten" (npc=68036), UNVERIFIED
    -- [94823] "Drakkari Decapitator" -- candidate vendor "Incomplete Drakkari Colossus" (npc=69347), UNVERIFIED
    -- [94824] "Gaze of Qi'nor" -- candidate vendor "Qi'nor" (npc=69749), UNVERIFIED
    -- [94825] "Lightning Snare" -- candidate vendor "Electromancer Ju'le" (npc=69339), UNVERIFIED
    -- [94826] "Mogu Sportsman's Bow" -- candidate vendor "Ancient Mogu Guardian" (npc=69767), UNVERIFIED
    -- [94922] "Ritual Dagger of the Mind's Eye" -- candidate vendor "Durumu the Forgotten" (npc=68036), UNVERIFIED
    -- [94937] "Acid-Spine Bonemace" -- candidate vendor "Primordius" (npc=69017), UNVERIFIED
    -- [94954] "Hand of the Dark Animus" -- candidate vendor "Dark Animus" (npc=69427), UNVERIFIED
    -- [94955] "Athame of the Sanguine Ritual" -- candidate vendor "Dark Animus" (npc=69427), UNVERIFIED
    -- [94963] "Voice of the Quilen" -- candidate vendor "Iron Qon" (npc=68078), UNVERIFIED
    -- [94964] "Qon's Flaming Scimitar" -- candidate vendor "Iron Qon" (npc=68078), UNVERIFIED
    -- [94971] "Iron Qon's Boot Knife" -- candidate vendor "Iron Qon" (npc=68078), UNVERIFIED
    -- [94982] "Uroe, Harbinger of Terror" -- candidate vendor "Lei Shen" (npc=68397), UNVERIFIED
    -- [94983] "Shan-Dun, Breaker of Hope" -- candidate vendor "Lei Shen" (npc=68397), UNVERIFIED
    -- [94988] "Torall, Rod of the Shattered Throne" -- candidate vendor "Lei Shen" (npc=68397), UNVERIFIED
    -- [95678] "Shattered Tortoiseshell Longbow" -- candidate vendor "Tortos" (npc=67977), UNVERIFIED
    -- [95686] "Shellsplitter Greataxe" -- candidate vendor "Tortos" (npc=67977), UNVERIFIED
    -- [95720] "Giorgio's Caduceus of Pure Moods" -- candidate vendor "Ji-Kun" (npc=69712), UNVERIFIED
    -- [95728] "Durumu's Baleful Gaze" -- candidate vendor "Durumu the Forgotten" (npc=68036), UNVERIFIED
    -- [95743] "Ritual Dagger of the Mind's Eye" -- candidate vendor "Durumu the Forgotten" (npc=68036), UNVERIFIED
    -- [95770] "Hand of the Dark Animus" -- candidate vendor "Dark Animus" (npc=69427), UNVERIFIED
    -- [95774] "Athame of the Sanguine Ritual" -- candidate vendor "Dark Animus" (npc=69427), UNVERIFIED
    -- [95780] "Iron Qon's Boot Knife" -- candidate vendor "Iron Qon" (npc=68078), UNVERIFIED
    -- [95781] "Voice of the Quilen" -- candidate vendor "Iron Qon" (npc=68078), UNVERIFIED
    -- [95790] "Qon's Flaming Scimitar" -- candidate vendor "Iron Qon" (npc=68078), UNVERIFIED
    -- [95803] "Shan-Dun, Breaker of Hope" -- candidate vendor "Lei Shen" (npc=68397), UNVERIFIED
    -- [95809] "Uroe, Harbinger of Terror" -- candidate vendor "Lei Shen" (npc=68397), UNVERIFIED
    -- [95815] "Torall, Rod of the Shattered Throne" -- candidate vendor "Lei Shen" (npc=68397), UNVERIFIED
    -- [96042] "Amun-Thoth, Sul's Spiritrending Talons" -- candidate vendor "High Priestess Mar'li" (npc=69132), UNVERIFIED
    -- [96047] "Zerat, Malakk's Soulburning Greatsword" -- candidate vendor "High Priestess Mar'li" (npc=69132), UNVERIFIED
    -- [96050] "Shattered Tortoiseshell Longbow" -- candidate vendor "Tortos" (npc=67977), UNVERIFIED
    -- [96058] "Shellsplitter Greataxe" -- candidate vendor "Tortos" (npc=67977), UNVERIFIED
    -- [96092] "Giorgio's Caduceus of Pure Moods" -- candidate vendor "Ji-Kun" (npc=69712), UNVERIFIED
    -- [96100] "Durumu's Baleful Gaze" -- candidate vendor "Durumu the Forgotten" (npc=68036), UNVERIFIED
    -- [96115] "Ritual Dagger of the Mind's Eye" -- candidate vendor "Durumu the Forgotten" (npc=68036), UNVERIFIED
    -- [96142] "Hand of the Dark Animus" -- candidate vendor "Dark Animus" (npc=69427), UNVERIFIED
    -- [96146] "Athame of the Sanguine Ritual" -- candidate vendor "Dark Animus" (npc=69427), UNVERIFIED
    -- [96152] "Iron Qon's Boot Knife" -- candidate vendor "Iron Qon" (npc=68078), UNVERIFIED
    -- [96153] "Voice of the Quilen" -- candidate vendor "Iron Qon" (npc=68078), UNVERIFIED
    -- [96163] "Wu-Lai, Bladed Fan of the Empyreans" -- candidate vendor "Suen" (npc=68904), UNVERIFIED
    -- [96167] "Suen-Wo, Spire of the Falling Sun" -- candidate vendor "Suen" (npc=68904), UNVERIFIED
    -- [96181] "Uroe, Harbinger of Terror" -- candidate vendor "Lei Shen" (npc=68397), UNVERIFIED
    -- [96187] "Torall, Rod of the Shattered Throne" -- candidate vendor "Lei Shen" (npc=68397), UNVERIFIED
    -- [96422] "Shattered Tortoiseshell Longbow" -- candidate vendor "Tortos" (npc=67977), UNVERIFIED
    -- [96430] "Shellsplitter Greataxe" -- candidate vendor "Tortos" (npc=67977), UNVERIFIED
    -- [96464] "Giorgio's Caduceus of Pure Moods" -- candidate vendor "Ji-Kun" (npc=69712), UNVERIFIED
    -- [96472] "Durumu's Baleful Gaze" -- candidate vendor "Durumu the Forgotten" (npc=68036), UNVERIFIED
    -- [96487] "Ritual Dagger of the Mind's Eye" -- candidate vendor "Durumu the Forgotten" (npc=68036), UNVERIFIED
    -- [96514] "Hand of the Dark Animus" -- candidate vendor "Dark Animus" (npc=69427), UNVERIFIED
    -- [96518] "Athame of the Sanguine Ritual" -- candidate vendor "Dark Animus" (npc=69427), UNVERIFIED
    -- [96524] "Iron Qon's Boot Knife" -- candidate vendor "Iron Qon" (npc=68078), UNVERIFIED
    -- [96525] "Voice of the Quilen" -- candidate vendor "Iron Qon" (npc=68078), UNVERIFIED
    -- [96534] "Qon's Flaming Scimitar" -- candidate vendor "Iron Qon" (npc=68078), UNVERIFIED
    -- [96547] "Shan-Dun, Breaker of Hope" -- candidate vendor "Lei Shen" (npc=68397), UNVERIFIED
    -- [96553] "Uroe, Harbinger of Terror" -- candidate vendor "Lei Shen" (npc=68397), UNVERIFIED
    -- [96559] "Torall, Rod of the Shattered Throne" -- candidate vendor "Lei Shen" (npc=68397), UNVERIFIED
    -- [96782] "Kura-Kura, Kazra'jin's Skullcleaver" -- candidate vendor "High Priestess Mar'li" (npc=69132), UNVERIFIED
    -- [96786] "Amun-Thoth, Sul's Spiritrending Talons" -- candidate vendor "High Priestess Mar'li" (npc=69132), UNVERIFIED
    -- [96794] "Shattered Tortoiseshell Longbow" -- candidate vendor "Tortos" (npc=67977), UNVERIFIED
    -- [96802] "Shellsplitter Greataxe" -- candidate vendor "Tortos" (npc=67977), UNVERIFIED
    -- [96836] "Giorgio's Caduceus of Pure Moods" -- candidate vendor "Ji-Kun" (npc=69712), UNVERIFIED
    -- [96859] "Ritual Dagger of the Mind's Eye" -- candidate vendor "Durumu the Forgotten" (npc=68036), UNVERIFIED
    -- [96886] "Hand of the Dark Animus" -- candidate vendor "Dark Animus" (npc=69427), UNVERIFIED
    -- [96890] "Athame of the Sanguine Ritual" -- candidate vendor "Dark Animus" (npc=69427), UNVERIFIED
    -- [96896] "Iron Qon's Boot Knife" -- candidate vendor "Iron Qon" (npc=68078), UNVERIFIED
    -- [96897] "Voice of the Quilen" -- candidate vendor "Iron Qon" (npc=68078), UNVERIFIED
    -- [96907] "Wu-Lai, Bladed Fan of the Empyreans" -- candidate vendor "Suen" (npc=68904), UNVERIFIED
    -- [105610] "Britomart's Jagged Pike" -- candidate vendor "Thok the Bloodthirsty" (npc=71529), UNVERIFIED

    ------------------------------------------------------------
    -- WARLORDS OF DRAENOR (PARTIAL)
    ------------------------------------------------------------
    [125154] = {
        name = "Wild Gladiator's Cleaver",
        vendors = {
            { vendor = "Cladd Dawnstrider", zone = "Warspear" },
        },
    },
    [125155] = {
        name = "Wild Gladiator's Shanker",
        vendors = {
            { vendor = "Cladd Dawnstrider", zone = "Warspear" },
        },
    },
    [125156] = {
        name = "Wild Gladiator's Ripper",
        vendors = {
            { vendor = "Cladd Dawnstrider", zone = "Warspear" },
        },
    },
    [125157] = {
        name = "Wild Gladiator's Pummeler",
        vendors = {
            { vendor = "Cladd Dawnstrider", zone = "Warspear" },
        },
    },
    [125158] = {
        name = "Wild Gladiator's Quickblade",
        vendors = {
            { vendor = "Cladd Dawnstrider", zone = "Warspear" },
        },
    },
    [125159] = {
        name = "Wild Gladiator's Longbow",
        vendors = {
            { vendor = "Cladd Dawnstrider", zone = "Warspear" },
        },
    },
    [125160] = {
        name = "Wild Gladiator's Heavy Crossbow",
        vendors = {
            { vendor = "Cladd Dawnstrider", zone = "Warspear" },
        },
    },
    [125161] = {
        name = "Wild Gladiator's Rifle",
        vendors = {
            { vendor = "Cladd Dawnstrider", zone = "Warspear" },
        },
    },
    [125162] = {
        name = "Wild Gladiator's Pike",
        vendors = {
            { vendor = "Cladd Dawnstrider", zone = "Warspear" },
        },
    },
    [125163] = {
        name = "Wild Gladiator's Staff",
        vendors = {
            { vendor = "Cladd Dawnstrider", zone = "Warspear" },
        },
    },
    [125205] = {
        name = "Wild Gladiator's Spellblade",
        vendors = {
            { vendor = "Cladd Dawnstrider", zone = "Warspear" },
        },
    },
    [125206] = {
        name = "Wild Gladiator's Gavel",
        vendors = {
            { vendor = "Cladd Dawnstrider", zone = "Warspear" },
        },
    },
    [125207] = {
        name = "Wild Gladiator's Mageblade",
        vendors = {
            { vendor = "Cladd Dawnstrider", zone = "Warspear" },
        },
    },
    [125209] = {
        name = "Wild Gladiator's Touch of Defeat",
        vendors = {
            { vendor = "Cladd Dawnstrider", zone = "Warspear" },
        },
    },
    [125210] = {
        name = "Wild Gladiator's Battle Staff",
        vendors = {
            { vendor = "Cladd Dawnstrider", zone = "Warspear" },
        },
    },
    [125211] = {
        name = "Wild Gladiator's Energy Staff",
        vendors = {
            { vendor = "Cladd Dawnstrider", zone = "Warspear" },
        },
    },
    [125316] = {
        name = "Wild Gladiator's Hacker",
        vendors = {
            { vendor = "Cladd Dawnstrider", zone = "Warspear" },
        },
    },
    [125317] = {
        name = "Wild Gladiator's Render",
        vendors = {
            { vendor = "Cladd Dawnstrider", zone = "Warspear" },
        },
    },
    [125318] = {
        name = "Wild Gladiator's Bonecracker",
        vendors = {
            { vendor = "Cladd Dawnstrider", zone = "Warspear" },
        },
    },
    [125319] = {
        name = "Wild Gladiator's Slicer",
        vendors = {
            { vendor = "Cladd Dawnstrider", zone = "Warspear" },
        },
    },
    [125320] = {
        name = "Wild Gladiator's Decapitator",
        vendors = {
            { vendor = "Cladd Dawnstrider", zone = "Warspear" },
        },
    },
    [125321] = {
        name = "Wild Gladiator's Bonegrinder",
        vendors = {
            { vendor = "Cladd Dawnstrider", zone = "Warspear" },
        },
    },
    [125322] = {
        name = "Wild Gladiator's Greatsword",
        vendors = {
            { vendor = "Cladd Dawnstrider", zone = "Warspear" },
        },
    },
    [129935] = {
        name = "Wild Gladiator's Runeaxe",
        vendors = {
            { vendor = "Cladd Dawnstrider", zone = "Warspear" },
        },
    },

    ------------------------------------------------------------
    -- LEGION
    ------------------------------------------------------------
    [140539] = {
        name = "Huntmaster's Longbow",
        vendors = {
            { vendor = "Outfitter Reynolds", zone = "Trueshot Lodge" },
        },
    },
    [140544] = {
        name = "Huntmaster's Rifle",
        vendors = {
            { vendor = "Outfitter Reynolds", zone = "Trueshot Lodge" },
        },
    },
    [140548] = {
        name = "Huntmaster's Halberd",
        vendors = {
            { vendor = "Outfitter Reynolds", zone = "Trueshot Lodge" },
        },
    },
    [128956] = {
        name = "Fel-Etched Glaive",
        vendors = {
            { vendor = "Demissya Gladestrider", zone = "Mardum, the Shattered Abyss" },
        },
    },
    [132243] = {
        name = "Fel-Etched Glaive",
        vendors = {
            { vendor = "Demissya Gladestrider", zone = "Mardum, the Shattered Abyss" },
        },
    },
    [140560] = {
        name = "Warglaive of the Fel Hammer",
        vendors = {
            { vendor = "Falara Nightsong", zone = "Mardum, the Shattered Abyss" },
        },
    },
    [140540] = {
        name = "Dreamgrove Blade",
        vendors = {
            { vendor = "Amurra Thistledew", zone = "The Dreamgrove" },
        },
    },
    [140542] = {
        name = "Dreamgrove Spire",
        vendors = {
            { vendor = "Amurra Thistledew", zone = "The Dreamgrove" },
        },
    },
    [140549] = {
        name = "Pillar of the Dreamgrove",
        vendors = {
            { vendor = "Amurra Thistledew", zone = "The Dreamgrove" },
        },
    },
    [140541] = {
        name = "Shiv of the Uncrowned",
        vendors = {
            { vendor = "Kelsey Steelspark", zone = "Dalaran" },
        },
    },
    [140556] = {
        name = "Shortblade of the Uncrowned",
        vendors = {
            { vendor = "Kelsey Steelspark", zone = "Dalaran" },
        },
    },
    [140543] = {
        name = "Fist of the Broken Temple",
        vendors = {
            { vendor = "Caydori Brightstar", zone = "The Wandering Isle" },
        },
    },
    [140551] = {
        name = "Staff of the Broken Temple",
        vendors = {
            { vendor = "Caydori Brightstar", zone = "The Wandering Isle" },
        },
    },
    [140564] = {
        name = "Rod of the Broken Temple",
        vendors = {
            { vendor = "Caydori Brightstar", zone = "The Wandering Isle" },
        },
    },
    [140545] = {
        name = "Earthen Ring Mace",
        vendors = {
            { vendor = "Flamesmith Lanying", zone = "The Maelstrom" },
        },
    },
    [140546] = {
        name = "Earthen Ring Scepter",
        vendors = {
            { vendor = "Flamesmith Lanying", zone = "The Maelstrom" },
        },
    },
    [140547] = {
        name = "Warhammer of the Silver Hand",
        vendors = {
            { vendor = "Eadric the Pure", zone = "Eastern Plaguelands" },
        },
    },
    [140555] = {
        name = "Blade of the Silver Hand",
        vendors = {
            { vendor = "Eadric the Pure", zone = "Eastern Plaguelands" },
        },
    },
    [140558] = {
        name = "Greatsword of the Silver Hand",
        vendors = {
            { vendor = "Eadric the Pure", zone = "Eastern Plaguelands" },
        },
    },
    [140550] = {
        name = "Archmage's Battle Staff",
        vendors = {
            { vendor = "Jackson Watkins", zone = "Hall of the Guardian" },
        },
    },
    [140552] = {
        name = "Netherlight Spire",
        vendors = {
            { vendor = "Meridelle Lightspark", zone = "Netherlight Temple" },
        },
    },
    [140553] = {
        name = "Netherlord's Staff of Summoning",
        vendors = {
            { vendor = "Gigi Gigavoid", zone = "Dreadscar Rift" },
        },
    },
    [140557] = {
        name = "Skyhold Quickblade",
        vendors = {
            { vendor = "Quartermaster Durnolf", zone = "Skyhold" },
        },
    },
    [140559] = {
        name = "Skyhold Claymore",
        vendors = {
            { vendor = "Quartermaster Durnolf", zone = "Skyhold" },
        },
    },

    ------------------------------------------------------------
    -- BATTLE FOR AZEROTH
    ------------------------------------------------------------
    [172860] = {
        name = "Corrupted Aspirant's Stabber",
        vendors = {
            { vendor = "Aneka Melae", zone = "Orgrimmar" },
        },
    },
    [172861] = {
        name = "Corrupted Aspirant's Shanker",
        vendors = {
            { vendor = "Aneka Melae", zone = "Orgrimmar" },
        },
    },
    [172865] = {
        name = "Corrupted Aspirant's Staff",
        vendors = {
            { vendor = "Aneka Melae", zone = "Orgrimmar" },
        },
    },
    [172864] = {
        name = "Corrupted Aspirant's Staff",
        vendors = {
            { vendor = "Alice Fischer", zone = "Stormwind City" },
        },
    },
    [172871] = {
        name = "Corrupted Aspirant's Longbow",
        vendors = {
            { vendor = "Aneka Melae", zone = "Orgrimmar" },
        },
    },
    [172870] = {
        name = "Corrupted Aspirant's Longbow",
        vendors = {
            { vendor = "Alice Fischer", zone = "Stormwind City" },
        },
    },
    [172877] = {
        name = "Corrupted Aspirant's Slicer",
        vendors = {
            { vendor = "Aneka Melae", zone = "Orgrimmar" },
        },
    },
    [172881] = {
        name = "Corrupted Aspirant's Chopper",
        vendors = {
            { vendor = "Aneka Melae", zone = "Orgrimmar" },
        },
    },
    [172882] = {
        name = "Corrupted Aspirant's Pike",
        vendors = {
            { vendor = "Alice Fischer", zone = "Stormwind City" },
        },
    },
    [172884] = {
        name = "Corrupted Aspirant's Greatsword",
        vendors = {
            { vendor = "Alice Fischer", zone = "Stormwind City" },
        },
    },
    [174010] = {
        name = "Corrupted Aspirant's Spellblade",
        vendors = {
            { vendor = "Aneka Melae", zone = "Orgrimmar" },
        },
    },
    [174012] = {
        name = "Corrupted Aspirant's Claw",
        vendors = {
            { vendor = "Aneka Melae", zone = "Orgrimmar" },
        },
    },
    [174014] = {
        name = "Corrupted Aspirant's Decapitator",
        vendors = {
            { vendor = "Aneka Melae", zone = "Orgrimmar" },
        },
    },
    [174015] = {
        name = "Corrupted Aspirant's Decapitator",
        vendors = {
            { vendor = "Alice Fischer", zone = "Stormwind City" },
        },
    },
    [174016] = {
        name = "Corrupted Aspirant's Rifle",
        vendors = {
            { vendor = "Aneka Melae", zone = "Orgrimmar" },
        },
    },
    [174018] = {
        name = "Corrupted Aspirant's War Staff",
        vendors = {
            { vendor = "Aneka Melae", zone = "Orgrimmar" },
        },
    },
    [174019] = {
        name = "Corrupted Aspirant's War Staff",
        vendors = {
            { vendor = "Alice Fischer", zone = "Stormwind City" },
        },
    },

    ------------------------------------------------------------
    -- SHADOWLANDS (PARTIAL)
    ------------------------------------------------------------
    [174299] = {
        name = "Sinful Gladiator's Splitter",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [177846] = {
        name = "Sinful Gladiator's Gladius",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [177851] = {
        name = "Sinful Gladiator's Ceremonial Sword",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [177856] = {
        name = "Sinful Gladiator's Lightbow",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [177861] = {
        name = "Sinful Gladiator's Knife",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [178470] = {
        name = "Sinful Aspirant's Dagger",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [178471] = {
        name = "Sinful Aspirant's Mace",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [178472] = {
        name = "Sinful Aspirant's Polearm",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [178473] = {
        name = "Sinful Aspirant's Staff",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [178479] = {
        name = "Sinful Aspirant's Warglaive",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [178670] = {
        name = "Sinful Aspirant's Blade",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [179495] = {
        name = "Sinful Gladiator's Fang",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [179526] = {
        name = "Sinful Gladiator's Spear",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [179528] = {
        name = "Night Courtier's Warspear",
        vendors = {
            { vendor = "Elwyn", zone = "Ardenweald" },
        },
    },
    [179540] = {
        name = "Night Courtier's Maul",
        vendors = {
            { vendor = "Elwyn", zone = "Ardenweald" },
        },
    },
    [179543] = {
        name = "Sinful Gladiator's Bludgeon",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [179558] = {
        name = "Night Courtier's Scepter",
        vendors = {
            { vendor = "Elwyn", zone = "Ardenweald" },
        },
    },
    [179559] = {
        name = "Sinful Gladiator's Scepter",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [179578] = {
        name = "Sinful Gladiator's Jaws",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [180003] = {
        name = "Night Courtier's Spire",
        vendors = {
            { vendor = "Elwyn", zone = "Ardenweald" },
        },
    },
    [180004] = {
        name = "Sinful Gladiator's Staff",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [180019] = {
        name = "Sinful Gladiator's Wand",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [180077] = {
        name = "Night Courtier's Warbow",
        vendors = {
            { vendor = "Elwyn", zone = "Ardenweald" },
        },
    },
    [180081] = {
        name = "Sinful Gladiator's Warbow",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [180257] = {
        name = "Night Courtier's Warglaive",
        vendors = {
            { vendor = "Elwyn", zone = "Ardenweald" },
        },
    },
    [180261] = {
        name = "Sinful Gladiator's Edge",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [180313] = {
        name = "Sinful Gladiator's Greatmallet",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [182349] = {
        name = "Sinful Gladiator's Shillelagh",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [182352] = {
        name = "Night Courtier's Mace",
        vendors = {
            { vendor = "Elwyn", zone = "Ardenweald" },
        },
    },
    [182401] = {
        name = "Sinful Gladiator's Sinedged Dirk",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [182402] = {
        name = "Sinful Gladiator's Crusaderblade",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [182403] = {
        name = "Sinful Gladiator's Gargoyle Claw",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [182405] = {
        name = "Sinful Gladiator's Torch Staff",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [182406] = {
        name = "Sinful Gladiator's Battlestave",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [182408] = {
        name = "Sinful Gladiator's Swordbreaker",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [182409] = {
        name = "Sinful Gladiator's Sineater Blade",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [182410] = {
        name = "Sinful Gladiator's Wingglaive",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [182411] = {
        name = "Sinful Gladiator's Repeating Crossbow",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [182427] = {
        name = "Sinfall Heartpiercer",
        vendors = {
            { vendor = "Chachi the Artiste", zone = "Revendreth" },
        },
    },
    [182428] = {
        name = "Gilded Sinfall Bastard Sword",
        vendors = {
            { vendor = "Chachi the Artiste", zone = "Revendreth" },
        },
    },
    [182429] = {
        name = "Claw of the Gilded Stoneborn",
        vendors = {
            { vendor = "Chachi the Artiste", zone = "Revendreth" },
        },
    },
    [182430] = {
        name = "Sinseeker's Dredwing Gavel",
        vendors = {
            { vendor = "Chachi the Artiste", zone = "Revendreth" },
        },
    },
    [182432] = {
        name = "Gilded Sentry Stave",
        vendors = {
            { vendor = "Chachi the Artiste", zone = "Revendreth" },
        },
    },
    [182433] = {
        name = "Barbedged Dredblade",
        vendors = {
            { vendor = "Chachi the Artiste", zone = "Revendreth" },
        },
    },
    [182434] = {
        name = "Crimson-Edged Wingblade",
        vendors = {
            { vendor = "Chachi the Artiste", zone = "Revendreth" },
        },
    },
    [182435] = {
        name = "Crimsonbarbed Sinbreaker",
        vendors = {
            { vendor = "Chachi the Artiste", zone = "Revendreth" },
        },
    },
    [182436] = {
        name = "Crimson Dredwing Glaive",
        vendors = {
            { vendor = "Chachi the Artiste", zone = "Revendreth" },
        },
    },
    [182437] = {
        name = "Screecher's Crimson Spinethrower",
        vendors = {
            { vendor = "Chachi the Artiste", zone = "Revendreth" },
        },
    },
    [183433] = {
        name = "Sinful Aspirant's Blackjack",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [183435] = {
        name = "Sinful Aspirant's Crescent",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [183437] = {
        name = "Sinful Gladiator's Shanker",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [183440] = {
        name = "Sinful Gladiator's Splitter",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [183441] = {
        name = "Sinful Gladiator's Warglaive",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [183443] = {
        name = "Sinful Gladiator's Sacrificial Dagger",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [183445] = {
        name = "Sinful Gladiator's Rifle",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [183446] = {
        name = "Sinful Gladiator's Cleaver",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [183447] = {
        name = "Sinful Gladiator's Glaive",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [183448] = {
        name = "Sinful Gladiator's Hacker",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [183449] = {
        name = "Sinful Gladiator's Gavel",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [183975] = {
        name = "Sinfall Ceremonial Blade",
        vendors = {
            { vendor = "Chachi the Artiste", zone = "Revendreth" },
        },
    },
    [184067] = {
        name = "Skullformed Ossein Warglaive",
        vendors = {
            { vendor = "Su Zettai", zone = "Maldraxxus" },
        },
    },
    [184069] = {
        name = "Soulbarb, the Breathless Kill",
        vendors = {
            { vendor = "Su Zettai", zone = "Maldraxxus" },
        },
    },
    [184070] = {
        name = "Colossal Greataxe of Pandemonium",
        vendors = {
            { vendor = "Su Zettai", zone = "Maldraxxus" },
        },
    },
    [184072] = {
        name = "Brutal Fury-Forged Cleaver",
        vendors = {
            { vendor = "Su Zettai", zone = "Maldraxxus" },
        },
    },
    [184073] = {
        name = "Crooked Plaguedtouched Dagger",
        vendors = {
            { vendor = "Su Zettai", zone = "Maldraxxus" },
        },
    },
    [184074] = {
        name = "Chopper of the Hidden Hand",
        vendors = {
            { vendor = "Su Zettai", zone = "Maldraxxus" },
        },
    },
    [184237] = {
        name = "Sinful Gladiator's Warglaive",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [184546] = {
        name = "Sinful Gladiator's Hacker",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [184547] = {
        name = "Sinful Gladiator's Xiphos",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [184548] = {
        name = "Sinful Gladiator's Ritual Dagger",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [184549] = {
        name = "Sinful Gladiator's Dory",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [184568] = {
        name = "Sinful Gladiator's Shortblade",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [184574] = {
        name = "Sinful Gladiator's Necrostave",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [185125] = {
        name = "Unchained Gladiator's Splitter",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [185199] = {
        name = "Unchained Gladiator's Gladius",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [185200] = {
        name = "Unchained Gladiator's Ceremonial Sword",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [185201] = {
        name = "Unchained Gladiator's Lightbow",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [185202] = {
        name = "Unchained Gladiator's Knife",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [185285] = {
        name = "Unchained Aspirant's Dagger",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [185286] = {
        name = "Unchained Aspirant's Mace",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [185287] = {
        name = "Unchained Aspirant's Polearm",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [185290] = {
        name = "Unchained Aspirant's Greataxe",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [185294] = {
        name = "Unchained Aspirant's Gavel",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [185296] = {
        name = "Unchained Aspirant's Hatchet",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [185298] = {
        name = "Unchained Aspirant's Longspear",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [185300] = {
        name = "Unchained Gladiator's Vesper",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [185301] = {
        name = "Unchained Gladiator's Greataxe",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [185307] = {
        name = "Unchained Aspirant's Blackjack",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [185312] = {
        name = "Unchained Gladiator's Warglaive",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [185315] = {
        name = "Unchained Gladiator's Xiphos",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [185316] = {
        name = "Unchained Gladiator's Ritual Dagger",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [185317] = {
        name = "Unchained Gladiator's Dory",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [186856] = {
        name = "Cosmic Gladiator's Knife",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [186857] = {
        name = "Cosmic Gladiator's Ritual Dagger",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [186858] = {
        name = "Cosmic Gladiator's Gladius",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [186859] = {
        name = "Cosmic Gladiator's Ceremonial Sword",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [186860] = {
        name = "Cosmic Gladiator's Xiphos",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [186861] = {
        name = "Cosmic Gladiator's Warglaive",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [186862] = {
        name = "Cosmic Gladiator's Pulverizer",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [186863] = {
        name = "Cosmic Gladiator's Ballista",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [186864] = {
        name = "Cosmic Gladiator's Scythe",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [186865] = {
        name = "Cosmic Gladiator's Vesper",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [186950] = {
        name = "Cosmic Aspirant's Mace",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [186952] = {
        name = "Cosmic Aspirant's Staff",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [186953] = {
        name = "Cosmic Aspirant's Sword",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [186954] = {
        name = "Cosmic Aspirant's Greataxe",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [186955] = {
        name = "Cosmic Aspirant's Greatsword",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [186957] = {
        name = "Cosmic Aspirant's Warglaive",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [186963] = {
        name = "Cosmic Aspirant's Blade",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [186964] = {
        name = "Cosmic Aspirant's Blackjack",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [186965] = {
        name = "Cosmic Aspirant's Crescent",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [188661] = {
        name = "Unchained Gladiator's Gavel",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [188662] = {
        name = "Unchained Gladiator's Greatstaff",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [188663] = {
        name = "Unchained Gladiator's Focus Staff",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [188664] = {
        name = "Unchained Gladiator's Mageblade",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [188665] = {
        name = "Unchained Gladiator's Slicer",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [188666] = {
        name = "Unchained Gladiator's Rifle",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [188667] = {
        name = "Unchained Gladiator's Ripper",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [188668] = {
        name = "Unchained Gladiator's Greatsword",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [189564] = {
        name = "Cosmic Gladiator's Greatsword",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [189566] = {
        name = "Cosmic Gladiator's Focus Staff",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [189567] = {
        name = "Cosmic Gladiator's Greatstaff",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [189568] = {
        name = "Cosmic Gladiator's Gavel",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [189569] = {
        name = "Cosmic Gladiator's Ripper",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [189570] = {
        name = "Cosmic Gladiator's Slicer",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [192283] = {
        name = "Eternal Gladiator's Splitter",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [192285] = {
        name = "Eternal Gladiator's Knife",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [192286] = {
        name = "Eternal Gladiator's Ritual Dagger",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [192287] = {
        name = "Eternal Gladiator's Gladius",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [192290] = {
        name = "Eternal Gladiator's Warglaive",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [192292] = {
        name = "Eternal Gladiator's Ballista",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [192294] = {
        name = "Eternal Gladiator's Vesper",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [192307] = {
        name = "Eternal Gladiator's Rifle",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [192309] = {
        name = "Eternal Gladiator's Focus Staff",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [192310] = {
        name = "Eternal Gladiator's Greatstaff",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [192311] = {
        name = "Eternal Gladiator's Gavel",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [192313] = {
        name = "Eternal Gladiator's Slicer",
        vendors = {
            { vendor = "Zo'sorg", zone = "Oribos" },
        },
    },
    [192394] = {
        name = "Eternal Aspirant's Battleaxe",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [192396] = {
        name = "Eternal Aspirant's Mace",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [192397] = {
        name = "Eternal Aspirant's Polearm",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [192400] = {
        name = "Eternal Aspirant's Greataxe",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [192401] = {
        name = "Eternal Aspirant's Greatsword",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [192403] = {
        name = "Eternal Aspirant's Warglaive",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [192404] = {
        name = "Eternal Aspirant's Gavel",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [192406] = {
        name = "Eternal Aspirant's Hatchet",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [192407] = {
        name = "Eternal Aspirant's Recurve",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [192408] = {
        name = "Eternal Aspirant's Longspear",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [192410] = {
        name = "Eternal Aspirant's Blackjack",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },
    [192411] = {
        name = "Eternal Aspirant's Crescent",
        vendors = {
            { vendor = "Purveyor Zo'kuul", zone = "Oribos" },
        },
    },

    ------------------------------------------------------------
    -- DRAGONFLIGHT/WAR WITHIN/MIDNIGHT (GAP CLOSURE)
    ------------------------------------------------------------
    [208453] = {
        name = "Archivist's Super Scooper",
        vendors = {
            { vendor = "Provisioner Aristta", zone = "Traitor's Rest, The Azure Span and Thaldraszus" },
        },
    },
    [208454] = {
        name = "Archivist's Mining Pick",
        vendors = {
            { vendor = "Provisioner Aristta", zone = "Traitor's Rest, The Azure Span and Thaldraszus" },
        },
    },
    [208455] = {
        name = "Archivist's Sturdy Hook",
        vendors = {
            { vendor = "Provisioner Aristta", zone = "Traitor's Rest, The Azure Span and Thaldraszus" },
        },
    },
    [208457] = {
        name = "Archivist's Spelunking Torch",
        vendors = {
            { vendor = "Provisioner Aristta", zone = "Traitor's Rest, The Azure Span and Thaldraszus" },
        },
    },
    [208459] = {
        name = "Archivist's Improvised Cudgel",
        vendors = {
            { vendor = "Provisioner Aristta", zone = "Traitor's Rest, The Azure Span and Thaldraszus" },
        },
    },
    [209359] = {
        name = "Dreambound Warglaive",
        vendors = {
            { vendor = "Archdruid Hamuul Runetotem", zone = "The Azure Span, The Waking Shores, Ohn'ahran Plains and Thaldraszus" },
        },
    },
    [209360] = {
        name = "Dreambound Staff",
        vendors = {
            { vendor = "Archdruid Hamuul Runetotem", zone = "The Azure Span, The Waking Shores, Ohn'ahran Plains and Thaldraszus" },
        },
    },
    [209361] = {
        name = "Dreambound Halberd",
        vendors = {
            { vendor = "Archdruid Hamuul Runetotem", zone = "The Azure Span, The Waking Shores, Ohn'ahran Plains and Thaldraszus" },
        },
    },
    [209362] = {
        name = "Dreambound Cudgel",
        vendors = {
            { vendor = "Archdruid Hamuul Runetotem", zone = "The Azure Span, The Waking Shores, Ohn'ahran Plains and Thaldraszus" },
        },
    },
    [209363] = {
        name = "Dreambound Mallet",
        vendors = {
            { vendor = "Archdruid Hamuul Runetotem", zone = "The Azure Span, The Waking Shores, Ohn'ahran Plains and Thaldraszus" },
        },
    },
    [209364] = {
        name = "Dreambound Censer",
        vendors = {
            { vendor = "Archdruid Hamuul Runetotem", zone = "The Azure Span, The Waking Shores, Ohn'ahran Plains and Thaldraszus" },
        },
    },
    [209365] = {
        name = "Dreambound Cleaver",
        vendors = {
            { vendor = "Archdruid Hamuul Runetotem", zone = "The Azure Span, The Waking Shores, Ohn'ahran Plains and Thaldraszus" },
        },
    },
    [209366] = {
        name = "Dreambound Hacker",
        vendors = {
            { vendor = "Archdruid Hamuul Runetotem", zone = "The Azure Span, The Waking Shores, Ohn'ahran Plains and Thaldraszus" },
        },
    },
    [209369] = {
        name = "Dreambound Greatsword",
        vendors = {
            { vendor = "Archdruid Hamuul Runetotem", zone = "The Azure Span, The Waking Shores, Ohn'ahran Plains and Thaldraszus" },
        },
    },
    [209370] = {
        name = "Dreambound Blade",
        vendors = {
            { vendor = "Archdruid Hamuul Runetotem", zone = "The Azure Span, The Waking Shores, Ohn'ahran Plains and Thaldraszus" },
        },
    },
    [209371] = {
        name = "Dreambound Sword",
        vendors = {
            { vendor = "Archdruid Hamuul Runetotem", zone = "The Azure Span, The Waking Shores, Ohn'ahran Plains and Thaldraszus" },
        },
    },
    [209372] = {
        name = "Dreambound Kris",
        vendors = {
            { vendor = "Archdruid Hamuul Runetotem", zone = "The Azure Span, The Waking Shores, Ohn'ahran Plains and Thaldraszus" },
        },
    },
    [209373] = {
        name = "Dreambound Shank",
        vendors = {
            { vendor = "Archdruid Hamuul Runetotem", zone = "The Azure Span, The Waking Shores, Ohn'ahran Plains and Thaldraszus" },
        },
    },
    [209374] = {
        name = "Dreambound Spellblade",
        vendors = {
            { vendor = "Archdruid Hamuul Runetotem", zone = "The Azure Span, The Waking Shores, Ohn'ahran Plains and Thaldraszus" },
        },
    },
    [209375] = {
        name = "Dreambound Rifle",
        vendors = {
            { vendor = "Archdruid Hamuul Runetotem", zone = "The Azure Span, The Waking Shores, Ohn'ahran Plains and Thaldraszus" },
        },
    },
    [209376] = {
        name = "Dreambound Polearm",
        vendors = {
            { vendor = "Archdruid Hamuul Runetotem", zone = "The Azure Span, The Waking Shores, Ohn'ahran Plains and Thaldraszus" },
        },
    },
    [209377] = {
        name = "Dreambound Wand",
        vendors = {
            { vendor = "Archdruid Hamuul Runetotem", zone = "The Azure Span, The Waking Shores, Ohn'ahran Plains and Thaldraszus" },
        },
    },
    [212870] = {
        name = "Archivist's Stone Chisel",
        vendors = {
            { vendor = "Provisioner Aristta", zone = "Traitor's Rest, The Azure Span and Thaldraszus" },
        },
    },
    [212941] = {
        name = "Archivist's \\",
        vendors = {
            { vendor = "Provisioner Aristta", zone = "Traitor's Rest, The Azure Span and Thaldraszus" },
        },
    },
    [213274] = {
        name = "Archivist's Pathfinder",
        vendors = {
            { vendor = "Provisioner Aristta", zone = "Traitor's Rest, The Azure Span and Thaldraszus" },
        },
    },
    [213275] = {
        name = "Archivist's Rockpuller",
        vendors = {
            { vendor = "Provisioner Aristta", zone = "Traitor's Rest, The Azure Span and Thaldraszus" },
        },
    },
    [213276] = {
        name = "Archivist's Magnifying Mace",
        vendors = {
            { vendor = "Provisioner Aristta", zone = "Traitor's Rest, The Azure Span and Thaldraszus" },
        },
    },
    [218436] = {
        name = "Forged Aspirant's Battleaxe",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [218438] = {
        name = "Forged Aspirant's Mace",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [218439] = {
        name = "Forged Aspirant's Polearm",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [218443] = {
        name = "Forged Aspirant's Warglaive",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [218446] = {
        name = "Forged Aspirant's Rifle",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [218449] = {
        name = "Forged Aspirant's Knife",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [218451] = {
        name = "Forged Aspirant's Chopper",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [218452] = {
        name = "Forged Aspirant's Wand",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [218718] = {
        name = "Forged Gladiator's Splitter",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [218721] = {
        name = "Forged Gladiator's Spear",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [218727] = {
        name = "Forged Gladiator's Axe",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [218734] = {
        name = "Forged Gladiator's Pulverizer",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [218737] = {
        name = "Forged Gladiator's Battlestaff",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [223844] = {
        name = "Forged Warmonger's Battleaxe",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [223845] = {
        name = "Forged Warmonger's Hatchet",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [223846] = {
        name = "Forged Warmonger's Carver",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [223847] = {
        name = "Forged Warmonger's Flameshot",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [223848] = {
        name = "Forged Warmonger's Twinblade",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [223852] = {
        name = "Forged Warmonger's Spire",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [223856] = {
        name = "Forged Warmonger's Club",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [223857] = {
        name = "Forged Warmonger's Hammer",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [223858] = {
        name = "Forged Warmonger's Cudgel",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [223861] = {
        name = "Forged Warmonger's Spear",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [223863] = {
        name = "Forged Warmonger's Mace",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [223864] = {
        name = "Forged Warmonger's Crusher",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [223865] = {
        name = "Forged Warmonger's Scepter",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [223867] = {
        name = "Forged Warmonger's Dagger",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [225498] = {
        name = "Umbral Artist's Chisel",
        vendors = {
            { vendor = "Reno Jackson", zone = "Dornogal" },
        },
    },
    [225500] = {
        name = "Bedrock Breaker",
        vendors = {
            { vendor = "Reno Jackson", zone = "Dornogal" },
        },
    },
    [225501] = {
        name = "Pathfinder's Stonecarver",
        vendors = {
            { vendor = "Reno Jackson", zone = "Dornogal" },
        },
    },
    [225502] = {
        name = "Mountain Shaper's Greataxe",
        vendors = {
            { vendor = "Reno Jackson", zone = "Dornogal" },
        },
    },
    [225503] = {
        name = "Trailblazer's Hookshoot",
        vendors = {
            { vendor = "Reno Jackson", zone = "Dornogal" },
        },
    },
    [225504] = {
        name = "Skypiercing Drillstaff",
        vendors = {
            { vendor = "Reno Jackson", zone = "Dornogal" },
        },
    },
    [225505] = {
        name = "Luminous Lampspire",
        vendors = {
            { vendor = "Reno Jackson", zone = "Dornogal" },
        },
    },
    [225506] = {
        name = "Mana-Lined Slab Slicer",
        vendors = {
            { vendor = "Reno Jackson", zone = "Dornogal" },
        },
    },
    [225856] = {
        name = "Forged Gladiator's Axe",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [225858] = {
        name = "Forged Gladiator's Pincer",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [225859] = {
        name = "Forged Gladiator's Warglaive",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [225860] = {
        name = "Forged Gladiator's Spear",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [225861] = {
        name = "Forged Gladiator's Staff",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [225863] = {
        name = "Forged Gladiator's Battlestaff",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [225864] = {
        name = "Forged Gladiator's Crossbow",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [225865] = {
        name = "Forged Gladiator's Scepter",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [225869] = {
        name = "Forged Gladiator's Claws",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [225870] = {
        name = "Forged Gladiator's Bow",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [225871] = {
        name = "Forged Gladiator's Greataxe",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [225872] = {
        name = "Forged Gladiator's Pulverizer",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [229168] = {
        name = "Earthen Landlubber's Axe",
        vendors = {
            { vendor = "Argarom", zone = "Siren Isle" },
        },
    },
    [229171] = {
        name = "Earthen Landlubber's Polearm",
        vendors = {
            { vendor = "Argarom", zone = "Siren Isle" },
        },
    },
    [229182] = {
        name = "Earthen Deckhand's Dagger",
        vendors = {
            { vendor = "Argarom", zone = "Siren Isle" },
        },
    },
    [229192] = {
        name = "Earthen Scallywag's Kris",
        vendors = {
            { vendor = "Argarom", zone = "Siren Isle" },
        },
    },
    [229506] = {
        name = "Prized Aspirant's Battleaxe",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [229508] = {
        name = "Prized Aspirant's Hammer",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [229509] = {
        name = "Prized Aspirant's Polearm",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [229513] = {
        name = "Prized Aspirant's Rocketglaive",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [229514] = {
        name = "Prized Aspirant's Scepter",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [229517] = {
        name = "Prized Aspirant's Halberd",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [229518] = {
        name = "Prized Aspirant's Mace",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [229519] = {
        name = "Prized Aspirant's Drill",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [229520] = {
        name = "Prized Aspirant's Chopper",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [229521] = {
        name = "Prized Aspirant's Blastoff Rod",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [229785] = {
        name = "Prized Gladiator's Last Resort",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [229787] = {
        name = "Prized Gladiator's Warglaive",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [229788] = {
        name = "Prized Gladiator's Drill",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [229790] = {
        name = "Prized Gladiator's Bow",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [229791] = {
        name = "Prized Gladiator's Bludgeon",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [229794] = {
        name = "Prized Gladiator's Flail",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [229796] = {
        name = "Prized Gladiator's Detonator",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [229797] = {
        name = "Prized Gladiator's Blaster",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [229801] = {
        name = "Prized Gladiator's Pulverizer",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [229803] = {
        name = "Prized Gladiator's Skewer",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [229804] = {
        name = "Prized Gladiator's Pylon",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [230143] = {
        name = "Prized Warmonger's Hatchet",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230144] = {
        name = "Prized Warmonger's Carver",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230146] = {
        name = "Prized Warmonger's Twinblade",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230148] = {
        name = "Prized Warmonger's Spire",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230149] = {
        name = "Prized Warmonger's Battlestaff",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230150] = {
        name = "Prized Warmonger's Greatsword",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230151] = {
        name = "Prized Warmonger's Broadsword",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230153] = {
        name = "Prized Warmonger's Club",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230154] = {
        name = "Prized Warmonger's Hammer",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230155] = {
        name = "Prized Warmonger's Gavel",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230157] = {
        name = "Prized Warmonger's Impaler",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230158] = {
        name = "Prized Warmonger's Spear",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230159] = {
        name = "Prized Warmonger's Wand",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230160] = {
        name = "Prized Warmonger's Mace",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230161] = {
        name = "Prized Warmonger's Crusher",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230162] = {
        name = "Prized Warmonger's Scepter",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230163] = {
        name = "Prized Warmonger's Dagger",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230164] = {
        name = "Prized Warmonger's Dirk",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230367] = {
        name = "Astral Aspirant's Battleaxe",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [230369] = {
        name = "Astral Aspirant's Mace",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [230370] = {
        name = "Astral Aspirant's Polearm",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [230380] = {
        name = "Astral Aspirant's Knife",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [230382] = {
        name = "Astral Aspirant's Wand",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [230659] = {
        name = "Astral Gladiator's Pulverizer",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [230660] = {
        name = "Astral Gladiator's Sword",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [230699] = {
        name = "Astral Warmonger's Battleaxe",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230700] = {
        name = "Astral Warmonger's Hatchet",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230701] = {
        name = "Astral Warmonger's Carver",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230705] = {
        name = "Astral Warmonger's Spire",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230706] = {
        name = "Astral Warmonger's Battlestaff",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230707] = {
        name = "Astral Warmonger's Greatsword",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230708] = {
        name = "Astral Warmonger's Broadsword",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230709] = {
        name = "Astral Warmonger's Club",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230710] = {
        name = "Astral Warmonger's Hammer",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230711] = {
        name = "Astral Warmonger's Cudgel",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230714] = {
        name = "Astral Warmonger's Spear",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230715] = {
        name = "Astral Warmonger's Wand",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230716] = {
        name = "Astral Warmonger's Mace",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230717] = {
        name = "Astral Warmonger's Crusher",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230718] = {
        name = "Astral Warmonger's Scepter",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230719] = {
        name = "Astral Warmonger's Dagger",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230720] = {
        name = "Astral Warmonger's Dirk",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230774] = {
        name = "Prized Gladiator's Bludgeon",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [230775] = {
        name = "Prized Gladiator's Pincer",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [230776] = {
        name = "Prized Gladiator's Blaster",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [230777] = {
        name = "Prized Gladiator's Warglaive",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [230778] = {
        name = "Prized Gladiator's Drill",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [230779] = {
        name = "Prized Gladiator's Staff",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [230780] = {
        name = "Prized Gladiator's Torchsword",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [230782] = {
        name = "Prized Gladiator's Dagger",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [230783] = {
        name = "Prized Gladiator's Flail",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [230787] = {
        name = "Prized Gladiator's Detonator",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [230788] = {
        name = "Prized Gladiator's Bow",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [230789] = {
        name = "Prized Gladiator's Greatsaw",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [230790] = {
        name = "Prized Gladiator's Pulverizer",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [231999] = {
        name = "Dragonflayer's Heartpiercer",
        vendors = {
            { vendor = "Auzin", zone = "Dalaran" },
        },
    },
    [232002] = {
        name = "Amani Tracker's Blunderbuss",
        vendors = {
            { vendor = "Cupri", zone = "Shattrath City" },
        },
    },
    [232003] = {
        name = "Wolf-Eyed Sharpshooter",
        vendors = {
            { vendor = "Auzin", zone = "Dalaran" },
        },
    },
    [232008] = {
        name = "Magehunter's Ornate Dagger",
        vendors = {
            { vendor = "Auzin", zone = "Dalaran" },
        },
    },
    [232010] = {
        name = "Vrykul Gutripper",
        vendors = {
            { vendor = "Auzin", zone = "Dalaran" },
        },
    },
    [232019] = {
        name = "Dark Ritualists Spellblade",
        vendors = {
            { vendor = "Auzin", zone = "Dalaran" },
        },
    },
    [232020] = {
        name = "Stormforged Short Blade",
        vendors = {
            { vendor = "Auzin", zone = "Dalaran" },
        },
    },
    [232021] = {
        name = "Sunburst Sticker",
        vendors = {
            { vendor = "Cupri", zone = "Shattrath City" },
        },
    },
    [232024] = {
        name = "Sunfury Stalker's Fists",
        vendors = {
            { vendor = "Cupri", zone = "Shattrath City" },
        },
    },
    [232029] = {
        name = "Auchenai Vindicator's Crystal Cleaver",
        vendors = {
            { vendor = "Cupri", zone = "Shattrath City" },
        },
    },
    [232039] = {
        name = "Crystal-Hooked Shortsword",
        vendors = {
            { vendor = "Cupri", zone = "Shattrath City" },
        },
    },
    [232042] = {
        name = "Azure Magus' Blade",
        vendors = {
            { vendor = "Auzin", zone = "Dalaran" },
        },
    },
    [232043] = {
        name = "Crystal-Maw Basher",
        vendors = {
            { vendor = "Auzin", zone = "Dalaran" },
        },
    },
    [232044] = {
        name = "Hammer of the Forest Loas",
        vendors = {
            { vendor = "Cupri", zone = "Shattrath City" },
        },
    },
    [232048] = {
        name = "Felguard Sentinel's Polearm",
        vendors = {
            { vendor = "Cupri", zone = "Shattrath City" },
        },
    },
    [232060] = {
        name = "Coldarra Spellbinder's Stave",
        vendors = {
            { vendor = "Auzin", zone = "Dalaran" },
        },
    },
    [232061] = {
        name = "Cenarion Guardian's Stave",
        vendors = {
            { vendor = "Cupri", zone = "Shattrath City" },
        },
    },
    [232062] = {
        name = "Shadowsword Vanquisher's Blade",
        vendors = {
            { vendor = "Cupri", zone = "Shattrath City" },
        },
    },
    [232063] = {
        name = "Drakkari Head Splitter",
        vendors = {
            { vendor = "Auzin", zone = "Dalaran" },
        },
    },
    [232065] = {
        name = "Crimson Draenethyst Crusher",
        vendors = {
            { vendor = "Cupri", zone = "Shattrath City" },
        },
    },
    [232066] = {
        name = "Icefrost Focuser",
        vendors = {
            { vendor = "Cupri", zone = "Shattrath City" },
        },
    },
    [233805] = {
        name = "Vrykul Pyromancer's Wand",
        vendors = {
            { vendor = "Taljori", zone = "Siren Isle" },
        },
    },
    [233807] = {
        name = "Bloodwake Hullrender",
        vendors = {
            { vendor = "Taljori", zone = "Siren Isle" },
        },
    },
    [233809] = {
        name = "Myrmidon's Wave Slasher",
        vendors = {
            { vendor = "Taljori", zone = "Siren Isle" },
        },
    },
    [233810] = {
        name = "Barnacle Breaker's Falchion",
        vendors = {
            { vendor = "Taljori", zone = "Siren Isle" },
        },
    },
    [233812] = {
        name = "Arathi Youngling's Training Sword",
        vendors = {
            { vendor = "Ailenda Hedgemyr", zone = "Siren Isle" },
        },
    },
    [233816] = {
        name = "Enchantress Scrying Rod",
        vendors = {
            { vendor = "Taljori", zone = "Siren Isle" },
        },
    },
    [233818] = {
        name = "Vrykul Blacksmith's Gavel",
        vendors = {
            { vendor = "Taljori", zone = "Siren Isle" },
        },
    },
    [233819] = {
        name = "Stormtouched Blacksmith's Gavel",
        vendors = {
            { vendor = "Taljori", zone = "Siren Isle" },
        },
    },
    [233830] = {
        name = "Pincer of the Tidestalker",
        vendors = {
            { vendor = "Taljori", zone = "Siren Isle" },
        },
    },
    [233832] = {
        name = "Tidestalker's Gutter",
        vendors = {
            { vendor = "Taljori", zone = "Siren Isle" },
        },
    },
    [233836] = {
        name = "Sacredite's Facet Gouge",
        vendors = {
            { vendor = "Ailenda Hedgemyr", zone = "Siren Isle" },
        },
    },
    [233982] = {
        name = "Tideflayer's Wave Piercer",
        vendors = {
            { vendor = "Taljori", zone = "Siren Isle" },
        },
    },
    [234764] = {
        name = "Fist of Knives",
        vendors = {
            { vendor = "Mistweaver Xia", zone = "Timeless Isle" },
        },
    },
    [234767] = {
        name = "Flame-Bladed Long Sword",
        vendors = {
            { vendor = "Mistweaver Xia", zone = "Timeless Isle" },
        },
    },
    [234768] = {
        name = "Jungle Gourd Splitter",
        vendors = {
            { vendor = "Mistweaver Xia", zone = "Timeless Isle" },
        },
    },
    [234769] = {
        name = "Pandaren Guard's Poleaxe",
        vendors = {
            { vendor = "Mistweaver Xia", zone = "Timeless Isle" },
        },
    },
    [234770] = {
        name = "Pandaren Guard's Halberd",
        vendors = {
            { vendor = "Mistweaver Xia", zone = "Timeless Isle" },
        },
    },
    [234772] = {
        name = "Kris of the Mogu Shaman",
        vendors = {
            { vendor = "Mistweaver Xia", zone = "Timeless Isle" },
        },
    },
    [234777] = {
        name = "Stave-Master's Spire",
        vendors = {
            { vendor = "Mistweaver Xia", zone = "Timeless Isle" },
        },
    },
    [234778] = {
        name = "Staff of the Jade Serpent",
        vendors = {
            { vendor = "Mistweaver Xia", zone = "Timeless Isle" },
        },
    },
    [234784] = {
        name = "Pandaren Bolt Thrower",
        vendors = {
            { vendor = "Mistweaver Xia", zone = "Timeless Isle" },
        },
    },
    [234787] = {
        name = "Mogu'shan Warden's Crystal Spear",
        vendors = {
            { vendor = "Mistweaver Xia", zone = "Timeless Isle" },
        },
    },
    [234789] = {
        name = "Gourd-Topped Mallet",
        vendors = {
            { vendor = "Mistweaver Xia", zone = "Timeless Isle" },
        },
    },
    [234791] = {
        name = "Reforged Harmonic Mallet",
        vendors = {
            { vendor = "Mistweaver Xia", zone = "Timeless Isle" },
        },
    },
    [234949] = {
        name = "Howling Echoes",
        vendors = {
            { vendor = "Aridormi", zone = "Dalaran" },
        },
    },
    [234952] = {
        name = "Crux of Blind Faith",
        vendors = {
            { vendor = "Aridormi", zone = "Dalaran" },
        },
    },
    [234954] = {
        name = "Corrupted Knot",
        vendors = {
            { vendor = "Aridormi", zone = "Dalaran" },
        },
    },
    [234955] = {
        name = "Hate-Sculpted Magma",
        vendors = {
            { vendor = "Aridormi", zone = "Dalaran" },
        },
    },
    [234956] = {
        name = "Rod of Crystalline Energies",
        vendors = {
            { vendor = "Aridormi", zone = "Dalaran" },
        },
    },
    [234958] = {
        name = "Fenryr's Bloodstained Fang",
        vendors = {
            { vendor = "Aridormi", zone = "Dalaran" },
        },
    },
    [234959] = {
        name = "Key to the Halls",
        vendors = {
            { vendor = "Aridormi", zone = "Dalaran" },
        },
    },
    [237798] = {
        name = "Arathi Zealot's Knife",
        vendors = {
            { vendor = "Raen Dawncavalyr", zone = "Hallowfall" },
        },
    },
    [237806] = {
        name = "Arathi Abbot's Wand",
        vendors = {
            { vendor = "Raen Dawncavalyr", zone = "Hallowfall" },
        },
    },
    [238624] = {
        name = "Dastardly Pinchzapper",
        vendors = {
            { vendor = "Wodin the Troll-Servant", zone = "Isle of Dorn" },
        },
    },
    [238688] = {
        name = "Gallagio Radier's Venture Co. Torchblade",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238689] = {
        name = "Gallagio Radier's Bilgewater Torchblade",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238690] = {
        name = "Gallagio Radier's Blackwater Torchblade",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238691] = {
        name = "Gallagio Radier's Darkfuse Torchblade",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238692] = {
        name = "Gallagio Raider's Venture Co. Coilstaff",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238693] = {
        name = "Gallagio Raider's Bilgewater Coilstaff",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238694] = {
        name = "Gallagio Raider's Blackwater Coilstaff",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238695] = {
        name = "Gallagio Raider's Darkfuse Coilstaff",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238696] = {
        name = "Gallagio Raider's Venture Co. Boomfist",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238697] = {
        name = "Gallagio Raider's Bilgewater Boomfist",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238698] = {
        name = "Gallagio Raider's Blackwater Boomfist",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238699] = {
        name = "Gallagio Raider's Darkfuse Boomfist",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238700] = {
        name = "Gallagio Raider's Venture Co. Shockbow",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238701] = {
        name = "Gallagio Raider's Bilgewater Shockbow",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238702] = {
        name = "Gallagio Raider's Blackwater Shockbow",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238703] = {
        name = "Gallagio Raider's Darkfuse Shockbow",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238708] = {
        name = "Gallagio Raider's Venture Co. Shivlighter",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238709] = {
        name = "Gallagio Raider's Bilgewater Shivlighter",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238710] = {
        name = "Gallagio Raider's Blackwater Shivlighter",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238711] = {
        name = "Gallagio Raider's Darkfuse Shivlighter",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238716] = {
        name = "Gallagio Raider's Venture Co. Chainsaw",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238717] = {
        name = "Gallagio Raider's Bilgewater Chainsaw",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238718] = {
        name = "Gallagio Raider's Blackwater Chainsaw",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238719] = {
        name = "Gallagio Raider's Darkfuse Chainsaw",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238741] = {
        name = "Gallagio Raider's Venture Co. Zapdagger",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238742] = {
        name = "Gallagio Raider's Bilgewater Zapdagger",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238743] = {
        name = "Gallagio Raider's Blackwater Zapdagger",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238744] = {
        name = "Gallagio Raider's Darkfuse Zapdagger",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238745] = {
        name = "Gallagio Raider's Venture Co. Eelspire",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238746] = {
        name = "Gallagio Raider's Bilgewater Eelspire",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238747] = {
        name = "Gallagio Raider's Blackwater Eelspire",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238748] = {
        name = "Gallagio Raider's Darkfuse Eelspire",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238749] = {
        name = "Gallagio Raider's Venture Co. Exhaustglaive",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238750] = {
        name = "Gallagio Raider's Bilgewater Exhaustglaive",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238751] = {
        name = "Gallagio Raider's Blackwater Exhaustglaive",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238752] = {
        name = "Gallagio Raider's Darkfuse Exhaustglaive",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238753] = {
        name = "Gallagio Raider's Venture Co. Gold Digger",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238754] = {
        name = "Gallagio Raider's Bilgewater Gold Digger",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238755] = {
        name = "Gallagio Raider's Blackwater Gold Digger",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238756] = {
        name = "Gallagio Raider's Darkfuse Gold Digger",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238761] = {
        name = "Gallagio Raider's Bootleg Lever",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238762] = {
        name = "Gallagio Raider's Venture Co. Gyroclub",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238763] = {
        name = "Gallagio Raider's Bilgewater Gyroclub",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238764] = {
        name = "Gallagio Raider's Blackwater Gyroclub",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238765] = {
        name = "Gallagio Raider's Darkfuse Gyroclub",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238766] = {
        name = "Gallagio Raider's Venture Co. Naval Mine",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238767] = {
        name = "Gallagio Raider's Bilgewater Naval Mine",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238768] = {
        name = "Gallagio Raider's Blackwater Naval Mine",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238769] = {
        name = "Gallagio Raider's Darkfuse Naval Mine",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238770] = {
        name = "Gallagio Raider's Venture Co. Repeater",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238771] = {
        name = "Gallagio Raider's Bilgewater Repeater",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238772] = {
        name = "Gallagio Raider's Blackwater Repeater",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238773] = {
        name = "Gallagio Raider's Darkfuse Repeater",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238774] = {
        name = "Gallagio Raider's Knuckle Dusters",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238775] = {
        name = "Gallagio Raider's Venture Co. Blasthammer",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238776] = {
        name = "Gallagio Raider's Bilgewater Blasthammer",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238777] = {
        name = "Gallagio Raider's Blackwater Blasthammer",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [238778] = {
        name = "Gallagio Raider's Darkfuse Blasthammer",
        vendors = {
            { vendor = "Sando the Rat", zone = "Liberation of Undermine" },
        },
    },
    [241036] = {
        name = "Arathi Anointer's Wand",
        vendors = {
            { vendor = "Raen Dawncavalyr", zone = "Hallowfall" },
        },
    },
    [244151] = {
        name = "Ashvane Ore Crusher",
        vendors = {
            { vendor = "Churbro", zone = "Boralus and Dazar'alor" },
        },
    },
    [244152] = {
        name = "Pilfered Golden Scepter",
        vendors = {
            { vendor = "Churbro", zone = "Boralus and Dazar'alor" },
        },
    },
    [244153] = {
        name = "Reclaimed Ancestral Blade of the Deeps",
        vendors = {
            { vendor = "Churbro", zone = "Boralus and Dazar'alor" },
        },
    },
    [244154] = {
        name = "Freehold Boarding Halberd",
        vendors = {
            { vendor = "Churbro", zone = "Boralus and Dazar'alor" },
        },
    },
    [244155] = {
        name = "Siren Slayer's Trident",
        vendors = {
            { vendor = "Churbro", zone = "Boralus and Dazar'alor" },
        },
    },
    [244156] = {
        name = "Crackling Stormbow of the Devoted",
        vendors = {
            { vendor = "Churbro", zone = "Boralus and Dazar'alor" },
        },
    },
    [244158] = {
        name = "Azerite-Carved Ritual Kris",
        vendors = {
            { vendor = "Churbro", zone = "Boralus and Dazar'alor" },
        },
    },
    [244159] = {
        name = "Tol'Dagor Pocket Shank",
        vendors = {
            { vendor = "Churbro", zone = "Boralus and Dazar'alor" },
        },
    },
    [244160] = {
        name = "Junkyard Clobberstick",
        vendors = {
            { vendor = "Churbro", zone = "Boralus and Dazar'alor" },
        },
    },
    [244161] = {
        name = "Mugambala Champion's Axe",
        vendors = {
            { vendor = "Churbro", zone = "Boralus and Dazar'alor" },
        },
    },
    [244162] = {
        name = "Bondo's Spare Mechano-Clamps",
        vendors = {
            { vendor = "Churbro", zone = "Boralus and Dazar'alor" },
        },
    },
    [244428] = {
        name = "Fang of Sethraliss",
        vendors = {
            { vendor = "Churbro", zone = "Boralus and Dazar'alor" },
        },
    },
    [244430] = {
        name = "Fang of the Dark Prophets",
        vendors = {
            { vendor = "Churbro", zone = "Boralus and Dazar'alor" },
        },
    },
    [244431] = {
        name = "Tideguard's Blessed Gavel",
        vendors = {
            { vendor = "Churbro", zone = "Boralus and Dazar'alor" },
        },
    },
    [244434] = {
        name = "Witch-Hunter's Shortsword",
        vendors = {
            { vendor = "Churbro", zone = "Boralus and Dazar'alor" },
        },
    },
    [244436] = {
        name = "Parrot King's Hook-Leg",
        vendors = {
            { vendor = "Churbro", zone = "Boralus and Dazar'alor" },
        },
    },
    [244437] = {
        name = "Dark Ranger's Black Bow",
        vendors = {
            { vendor = "Churbro", zone = "Boralus and Dazar'alor" },
        },
    },
    [244438] = {
        name = "Nazmani Blood Drinker",
        vendors = {
            { vendor = "Churbro", zone = "Boralus and Dazar'alor" },
        },
    },
    [244439] = {
        name = "Stormcrook of the Faithless",
        vendors = {
            { vendor = "Churbro", zone = "Boralus and Dazar'alor" },
        },
    },
    [244440] = {
        name = "Blade of the Rezani Prelate",
        vendors = {
            { vendor = "Churbro", zone = "Boralus and Dazar'alor" },
        },
    },
    [244441] = {
        name = "Dazar's Ceremonial Negotiator",
        vendors = {
            { vendor = "Churbro", zone = "Boralus and Dazar'alor" },
        },
    },
    [244445] = {
        name = "Razdunk's WR0-NC4 5300",
        vendors = {
            { vendor = "Churbro", zone = "Boralus and Dazar'alor" },
        },
    },
    [244541] = {
        name = "Zin-Azshari Court Scepter",
        vendors = {
            { vendor = "Kiatke", zone = "Stormwind City and Orgrimmar" },
        },
    },
    [244543] = {
        name = "Scimitar of the Crocolisk God",
        vendors = {
            { vendor = "Kiatke", zone = "Stormwind City and Orgrimmar" },
        },
    },
    [244544] = {
        name = "Forest Watcher's Rune-Axe",
        vendors = {
            { vendor = "Kiatke", zone = "Stormwind City and Orgrimmar" },
        },
    },
    [244546] = {
        name = "Forgotten Bow of the Banshee",
        vendors = {
            { vendor = "Kiatke", zone = "Stormwind City and Orgrimmar" },
        },
    },
    [244548] = {
        name = "Shattered Highvale Staff",
        vendors = {
            { vendor = "Kiatke", zone = "Stormwind City and Orgrimmar" },
        },
    },
    [244549] = {
        name = "Light's Dawn Cryptblade",
        vendors = {
            { vendor = "Kiatke", zone = "Stormwind City and Orgrimmar" },
        },
    },
    [244550] = {
        name = "Sunwalker's Ashen Warmaul",
        vendors = {
            { vendor = "Kiatke", zone = "Stormwind City and Orgrimmar" },
        },
    },
    [244551] = {
        name = "Time-Lost Worldbreaker",
        vendors = {
            { vendor = "Kiatke", zone = "Stormwind City and Orgrimmar" },
        },
    },
    [244552] = {
        name = "Prized Gladiator's Torchblade",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [244646] = {
        name = "Seared Root of Regrowth",
        vendors = {
            { vendor = "Kiatke", zone = "Stormwind City and Orgrimmar" },
        },
    },
    [244647] = {
        name = "Crook of the White Flame",
        vendors = {
            { vendor = "Kiatke", zone = "Stormwind City and Orgrimmar" },
        },
    },
    [244650] = {
        name = "Fort Triumph Longbow",
        vendors = {
            { vendor = "Kiatke", zone = "Stormwind City and Orgrimmar" },
        },
    },
    [244652] = {
        name = "Prayer Beacon of the Goddess",
        vendors = {
            { vendor = "Kiatke", zone = "Stormwind City and Orgrimmar" },
        },
    },
    [244680] = {
        name = "Morchie's Desynchronized Chime",
        vendors = {
            { vendor = "Kiatke", zone = "Stormwind City and Orgrimmar" },
        },
    },
    [244681] = {
        name = "Pyrewood Silver Blade",
        vendors = {
            { vendor = "Kiatke", zone = "Stormwind City and Orgrimmar" },
        },
    },
    [244833] = {
        name = "Stonedark Chieftain's Bartered Tool",
        vendors = {
            { vendor = "Aridormi", zone = "Dalaran" },
        },
    },
    [244837] = {
        name = "Mage-Forged Dragonblade",
        vendors = {
            { vendor = "Aridormi", zone = "Dalaran" },
        },
    },
    [245981] = {
        name = "K'areshi Multi-Tool",
        vendors = {
            { vendor = "Om'sirik", zone = "Tazavesh, the Veiled Market" },
        },
    },
    [248341] = {
        name = "Astral Gladiator's Mace",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [248343] = {
        name = "Astral Gladiator's Dagger",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [248347] = {
        name = "Astral Gladiator's Staff",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [248349] = {
        name = "Astral Gladiator's Battlestaff",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [248350] = {
        name = "Astral Gladiator's Crossbow",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [248351] = {
        name = "Astral Gladiator's Scepter",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [248355] = {
        name = "Astral Gladiator's Claws",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [248356] = {
        name = "Astral Gladiator's Bow",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [248358] = {
        name = "Astral Gladiator's Pulverizer",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [248359] = {
        name = "Astral Gladiator's Sword",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [248365] = {
        name = "Astral Gladiator's Cinquedea",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [249146] = {
        name = "Manaforge Raider's Gamma Plexhammer",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249150] = {
        name = "Manaforge Raider's Gamma Warpblade",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249153] = {
        name = "Manaforge Raider's Gamma Staff",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249158] = {
        name = "Manaforge Raider's Gamma Caster",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249160] = {
        name = "Manaforge Raider's Gamma Hatchet",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249161] = {
        name = "Manaforge Raider's Gamma Blade",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249162] = {
        name = "Manaforge Raider's Tyrant Maul",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249163] = {
        name = "Manaforge Raider's Gamma Starcrusher",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249164] = {
        name = "Manaforge Raider's Cosmic Shockmace",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249165] = {
        name = "Manaforge Raider's Umbral Shockmace",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249166] = {
        name = "Manaforge Raider's Devouring Shockmace",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249167] = {
        name = "Manaforge Raider's Cosmic Plexhammer",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249168] = {
        name = "Manaforge Raider's Umbral Plexhammer",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249169] = {
        name = "Manaforge Raider's Devouring Plexhammer",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249170] = {
        name = "Manaforge Raider's Cosmic Beamglaive",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249172] = {
        name = "Manaforge Raider's Devouring Beamglaive",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249176] = {
        name = "Manaforge Raider's Cosmic Recurve",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249179] = {
        name = "Manaforge Raider's Cosmic Warpblade",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249180] = {
        name = "Manaforge Raider's Umbral Warpblade",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249181] = {
        name = "Manaforge Raider's Devouring Warpblade",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249183] = {
        name = "Manaforge Raider's Umbral Spire",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249188] = {
        name = "Manaforge Raider's Cosmic Staff",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249189] = {
        name = "Manaforge Raider's Umbral Staff",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249190] = {
        name = "Manaforge Raider's Devouring Staff",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249192] = {
        name = "Manaforge Raider's Umbral Greatsword",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249197] = {
        name = "Manaforge Raider's Cosmic Phaseblade",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249200] = {
        name = "Manaforge Raider's Cosmic Shard",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249201] = {
        name = "Manaforge Raider's Umbral Shard",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249203] = {
        name = "Manaforge Raider's Cosmic Caster",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249204] = {
        name = "Manaforge Raider's Umbral Caster",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249205] = {
        name = "Manaforge Raider's Devouring Caster",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249210] = {
        name = "Manaforge Raider's Umbral Hatchet",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249211] = {
        name = "Manaforge Raider's Devouring Hatchet",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249212] = {
        name = "Manaforge Raider's Cosmic Blade",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249213] = {
        name = "Manaforge Raider's Umbral Blade",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249215] = {
        name = "Manaforge Raider's Cosmic Starcrusher",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249216] = {
        name = "Manaforge Raider's Umbral Starcrusher",
        vendors = {
            { vendor = "Zo'ropo", zone = "K'aresh" },
        },
    },
    [249610] = {
        name = "Resinous Blossomblade",
        vendors = {
            { vendor = "Zah'ran", zone = "Parhelion Plaza, Collegiate Calamity, The Grudge Pit, Shadowguard Point, Atal'Aman, Twilight Crypts, Sunkiller Sanctum, The Shadow Enclave, The Gulf of Memory, The Darkway, and The Ring of Glory" },
        },
    },
    [249661] = {
        name = "Root Sculptor's Verdaxe",
        vendors = {
            { vendor = "Zah'ran", zone = "Parhelion Plaza, Collegiate Calamity, The Grudge Pit, Shadowguard Point, Atal'Aman, Twilight Crypts, Sunkiller Sanctum, The Shadow Enclave, The Gulf of Memory, The Darkway, and The Ring of Glory" },
        },
    },
    [249662] = {
        name = "Wild Fiberknife",
        vendors = {
            { vendor = "Zah'ran", zone = "Parhelion Plaza, Collegiate Calamity, The Grudge Pit, Shadowguard Point, Atal'Aman, Twilight Crypts, Sunkiller Sanctum, The Shadow Enclave, The Gulf of Memory, The Darkway, and The Ring of Glory" },
        },
    },
    [249664] = {
        name = "Gnarled Thornmace",
        vendors = {
            { vendor = "Zah'ran", zone = "Parhelion Plaza, Collegiate Calamity, The Grudge Pit, Shadowguard Point, Atal'Aman, Twilight Crypts, Sunkiller Sanctum, The Shadow Enclave, The Gulf of Memory, The Darkway, and The Ring of Glory" },
        },
    },
    [249665] = {
        name = "Blooming Seedpod",
        vendors = {
            { vendor = "Zah'ran", zone = "Parhelion Plaza, Collegiate Calamity, The Grudge Pit, Shadowguard Point, Atal'Aman, Twilight Crypts, Sunkiller Sanctum, The Shadow Enclave, The Gulf of Memory, The Darkway, and The Ring of Glory" },
        },
    },
    [249667] = {
        name = "Barbed Rootwand",
        vendors = {
            { vendor = "Zah'ran", zone = "Parhelion Plaza, Collegiate Calamity, The Grudge Pit, Shadowguard Point, Atal'Aman, Twilight Crypts, Sunkiller Sanctum, The Shadow Enclave, The Gulf of Memory, The Darkway, and The Ring of Glory" },
        },
    },
    [249669] = {
        name = "Organ Piercer's Briarspear",
        vendors = {
            { vendor = "Zah'ran", zone = "Parhelion Plaza, Collegiate Calamity, The Grudge Pit, Shadowguard Point, Atal'Aman, Twilight Crypts, Sunkiller Sanctum, The Shadow Enclave, The Gulf of Memory, The Darkway, and The Ring of Glory" },
        },
    },
    [249670] = {
        name = "Elderoot Spire",
        vendors = {
            { vendor = "Zah'ran", zone = "Parhelion Plaza, Collegiate Calamity, The Grudge Pit, Shadowguard Point, Atal'Aman, Twilight Crypts, Sunkiller Sanctum, The Shadow Enclave, The Gulf of Memory, The Darkway, and The Ring of Glory" },
        },
    },
    [249671] = {
        name = "Gnarlroot Spinecleaver",
        vendors = {
            { vendor = "Zah'ran", zone = "Parhelion Plaza, Collegiate Calamity, The Grudge Pit, Shadowguard Point, Atal'Aman, Twilight Crypts, Sunkiller Sanctum, The Shadow Enclave, The Gulf of Memory, The Darkway, and The Ring of Glory" },
        },
    },
    [249677] = {
        name = "Twinthorn Wildglaive",
        vendors = {
            { vendor = "Zah'ran", zone = "Parhelion Plaza, Collegiate Calamity, The Grudge Pit, Shadowguard Point, Atal'Aman, Twilight Crypts, Sunkiller Sanctum, The Shadow Enclave, The Gulf of Memory, The Darkway, and The Ring of Glory" },
        },
    },
    [251566] = {
        name = "Ascension Agitator's Greatsword",
        vendors = {
            { vendor = "Armorer Kalinovan", zone = "Twilight Highlands" },
        },
    },
    [251568] = {
        name = "Ascension Agitator's Spear",
        vendors = {
            { vendor = "Armorer Kalinovan", zone = "Twilight Highlands" },
        },
    },
    [251569] = {
        name = "Ascension Agitator's Cudgel",
        vendors = {
            { vendor = "Armorer Kalinovan", zone = "Twilight Highlands" },
        },
    },
    [251572] = {
        name = "Ascension Agitator's Axe",
        vendors = {
            { vendor = "Armorer Kalinovan", zone = "Twilight Highlands" },
        },
    },
    [254867] = {
        name = "Progenitor's Fix-It-Up",
        vendors = {
            { vendor = "Collector Ta'steld", zone = "Oribos" },
        },
    },
    [255341] = {
        name = "Galactic Aspirant's Battleaxe",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [255344] = {
        name = "Galactic Aspirant's Polearm",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [255354] = {
        name = "Galactic Aspirant's Knife",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [255634] = {
        name = "Galactic Gladiator's Morningstar",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [259462] = {
        name = "Thorneedle",
        vendors = {
            { vendor = "Zah'ran", zone = "Parhelion Plaza, Collegiate Calamity, The Grudge Pit, Shadowguard Point, Atal'Aman, Twilight Crypts, Sunkiller Sanctum, The Shadow Enclave, The Gulf of Memory, The Darkway, and The Ring of Glory" },
        },
    },
    [260187] = {
        name = "Underbrush Render",
        vendors = {
            { vendor = "Zah'ran", zone = "Parhelion Plaza, Collegiate Calamity, The Grudge Pit, Shadowguard Point, Atal'Aman, Twilight Crypts, Sunkiller Sanctum, The Shadow Enclave, The Gulf of Memory, The Darkway, and The Ring of Glory" },
        },
    },
    [260188] = {
        name = "Savage Briaredge",
        vendors = {
            { vendor = "Zah'ran", zone = "Parhelion Plaza, Collegiate Calamity, The Grudge Pit, Shadowguard Point, Atal'Aman, Twilight Crypts, Sunkiller Sanctum, The Shadow Enclave, The Gulf of Memory, The Darkway, and The Ring of Glory" },
        },
    },
    [260189] = {
        name = "Rootkeeper's Dancing Needle",
        vendors = {
            { vendor = "Zah'ran", zone = "Parhelion Plaza, Collegiate Calamity, The Grudge Pit, Shadowguard Point, Atal'Aman, Twilight Crypts, Sunkiller Sanctum, The Shadow Enclave, The Gulf of Memory, The Darkway, and The Ring of Glory" },
        },
    },
    [262362] = {
        name = "Expeditioner's Spellblade",
        vendors = {
            { vendor = "Xydan", zone = "Valdrakken" },
        },
    },
    [262729] = {
        name = "Hand of the Rootkeeper",
        vendors = {
            { vendor = "Zah'ran", zone = "Parhelion Plaza, Collegiate Calamity, The Grudge Pit, Shadowguard Point, Atal'Aman, Twilight Crypts, Sunkiller Sanctum, The Shadow Enclave, The Gulf of Memory, The Darkway, and The Ring of Glory" },
        },
    },
    [262731] = {
        name = "Wildthorn Razorfang",
        vendors = {
            { vendor = "Zah'ran", zone = "Parhelion Plaza, Collegiate Calamity, The Grudge Pit, Shadowguard Point, Atal'Aman, Twilight Crypts, Sunkiller Sanctum, The Shadow Enclave, The Gulf of Memory, The Darkway, and The Ring of Glory" },
        },
    },
    [262732] = {
        name = "Heavy Bramblebolter",
        vendors = {
            { vendor = "Zah'ran", zone = "Parhelion Plaza, Collegiate Calamity, The Grudge Pit, Shadowguard Point, Atal'Aman, Twilight Crypts, Sunkiller Sanctum, The Shadow Enclave, The Gulf of Memory, The Darkway, and The Ring of Glory" },
        },
    },
    [265612] = {
        name = "Galactic Gladiator's Dagger",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [265613] = {
        name = "Galactic Gladiator's Warglaive",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [265617] = {
        name = "Galactic Gladiator's Scepter",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [265625] = {
        name = "Galactic Gladiator's Blaster",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [265630] = {
        name = "Galactic Gladiator's Battlestaff",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [265632] = {
        name = "Galactic Gladiator's Hammer",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [267375] = {
        name = "Galactic Aspirant's Claws",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [275204] = {
        name = "Response Team's Hatchet",
        vendors = {
            { vendor = "Fieldsmith Ventem", zone = "Val and Naigtal" },
        },
    },
    [275205] = {
        name = "Response Team's Kukri",
        vendors = {
            { vendor = "Fieldsmith Ventem", zone = "Val and Naigtal" },
        },
    },
    [275206] = {
        name = "Response Team's Hammer",
        vendors = {
            { vendor = "Fieldsmith Ventem", zone = "Val and Naigtal" },
        },
    },
    [275207] = {
        name = "Response Team's Longsword",
        vendors = {
            { vendor = "Fieldsmith Ventem", zone = "Val and Naigtal" },
        },
    },
    [275208] = {
        name = "Response Team's Warglaive",
        vendors = {
            { vendor = "Fieldsmith Ventem", zone = "Val and Naigtal" },
        },
    },
    [275209] = {
        name = "Response Team's Longbow",
        vendors = {
            { vendor = "Fieldsmith Ventem", zone = "Val and Naigtal" },
        },
    },
    [275210] = {
        name = "Response Team's Spear",
        vendors = {
            { vendor = "Fieldsmith Ventem", zone = "Val and Naigtal" },
        },
    },
    [275211] = {
        name = "Response Team's Spire",
        vendors = {
            { vendor = "Fieldsmith Ventem", zone = "Val and Naigtal" },
        },
    },
    [275212] = {
        name = "Response Team's Falchion",
        vendors = {
            { vendor = "Fieldsmith Ventem", zone = "Val and Naigtal" },
        },
    },
    [276289] = {
        name = "Lightveil Argunite Blade",
        vendors = {
            { vendor = "Zuronar", zone = "Val and Naigtal" },
        },
    },
    [276301] = {
        name = "Lightruned Crystal Beacon",
        vendors = {
            { vendor = "Zuronar", zone = "Val and Naigtal" },
        },
    },

    ------------------------------------------------------------
    -- DRAGONFLIGHT
    ------------------------------------------------------------
    [189055] = {
        name = "Ghendish's Backup Talisman",
        vendors = {
            { vendor = "Deadwaker Ghendish", zone = "Ohn'ahran Plains" },
        },
    },
    [195481] = {
        name = "Scepter of Drastic Measures",
        vendors = {
            { vendor = "Iszy", zone = "Valdrakken" },
        },
    },
    [195483] = {
        name = "Awak'mani, Grimtotem's Legacy",
        vendors = {
            { vendor = "Iszy", zone = "Valdrakken" },
        },
    },
    [195489] = {
        name = "Maul of the Earthshaper",
        vendors = {
            { vendor = "Iszy", zone = "Valdrakken" },
        },
    },
    [195490] = {
        name = "Searing Blazecaster",
        vendors = {
            { vendor = "Iszy", zone = "Valdrakken" },
        },
    },
    [195491] = {
        name = "Infused Stormglaives",
        vendors = {
            { vendor = "Iszy", zone = "Valdrakken" },
        },
    },
    [195497] = {
        name = "Quake-Detecting Seismostaff",
        vendors = {
            { vendor = "Iszy", zone = "Valdrakken" },
        },
    },
    [195503] = {
        name = "Enduring Shard of Terros",
        vendors = {
            { vendor = "Iszy", zone = "Valdrakken" },
        },
    },
    [195504] = {
        name = "Awakened Planar Pillar",
        vendors = {
            { vendor = "Iszy", zone = "Valdrakken" },
        },
    },
    [195505] = {
        name = "Caustic Coldsteel Slicer",
        vendors = {
            { vendor = "Iszy", zone = "Valdrakken" },
        },
    },
    [195510] = {
        name = "Frostbreath Thumper",
        vendors = {
            { vendor = "Iszy", zone = "Valdrakken" },
        },
    },
    [195512] = {
        name = "Fist of the Grand Summoner",
        vendors = {
            { vendor = "Iszy", zone = "Valdrakken" },
        },
    },
    [195518] = {
        name = "Imbued Qalashi Crusher",
        vendors = {
            { vendor = "Iszy", zone = "Valdrakken" },
        },
    },
    [195519] = {
        name = "Kharnalex, The First Light",
        vendors = {
            { vendor = "Iszy", zone = "Valdrakken" },
        },
    },
    [195521] = {
        name = "Ornamental Drakonid Claw",
        vendors = {
            { vendor = "Iszy", zone = "Valdrakken" },
        },
    },
    [195528] = {
        name = "Incarnate Sky-Splitter",
        vendors = {
            { vendor = "Iszy", zone = "Valdrakken" },
        },
    },
    [195529] = {
        name = "Stormlash's Last Resort",
        vendors = {
            { vendor = "Iszy", zone = "Valdrakken" },
        },
    },
    [200128] = {
        name = "Zephyr's Razor",
        vendors = {
            { vendor = "Angen", zone = "Thaldraszus" },
        },
    },
    [200132] = {
        name = "Skewer's Snout",
        vendors = {
            { vendor = "Skewersnout", zone = "The Waking Shores" },
        },
    },
    [200139] = {
        name = "Tempest Arc",
        vendors = {
            { vendor = "Tempestrian", zone = "Thaldraszus" },
        },
    },
    [200146] = {
        name = "Phenran's Discordant Smasher",
        vendors = {
            { vendor = "Phenran", zone = "Thaldraszus" },
        },
    },
    [200152] = {
        name = "Gleaming Blade of Insight",
        vendors = {
            { vendor = "Shadeslash Trakken", zone = "The Waking Shores" },
        },
    },
    [200157] = {
        name = "Pathmaker",
        vendors = {
            { vendor = "Mahg the Trampler", zone = "The Azure Span" },
        },
    },
    [200167] = {
        name = "Regurgitated Stone Handaxe",
        vendors = {
            { vendor = "Enkine the Voracious", zone = "The Waking Shores" },
        },
    },
    [200171] = {
        name = "Grymheart Blade",
        vendors = {
            { vendor = "Harkyn Grymstone", zone = "The Waking Shores" },
        },
    },
    [200175] = {
        name = "Repurposed Anvil",
        vendors = {
            { vendor = "Harkyn Grymstone", zone = "The Waking Shores" },
        },
    },
    [200192] = {
        name = "Handheld Geyser",
        vendors = {
            { vendor = "Massive Magmashell", zone = "The Waking Shores" },
        },
    },
    [200197] = {
        name = "Armoredon Herding Crook",
        vendors = {
            { vendor = "Malsegan", zone = "Ohn'ahran Plains" },
        },
    },
    [200206] = {
        name = "Behemoth Slayer Greatbow",
        vendors = {
            { vendor = "Grumbletrunk", zone = "The Azure Span" },
        },
    },
    [200257] = {
        name = "Decay-Infused Branch",
        vendors = {
            { vendor = "Matriarch Remalla", zone = "Thaldraszus" },
        },
    },
    [200286] = {
        name = "Dragonbane Lance",
        vendors = {
            { vendor = "Captain Lancer", zone = "The Waking Shores" },
        },
    },
    [200302] = {
        name = "Magmaforged Scimitar",
        vendors = {
            { vendor = "Dragonhunter Gorund", zone = "The Azure Span" },
        },
    },
    [200437] = {
        name = "Dreamsong Censer",
        vendors = {
            { vendor = "Shade of Grief", zone = "Ohn'ahran Plains" },
        },
    },
    [201760] = {
        name = "Crimson Aspirant's Battleaxe",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [201761] = {
        name = "Crimson Aspirant's Dagger",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [201762] = {
        name = "Crimson Aspirant's Mace",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [201763] = {
        name = "Crimson Aspirant's Polearm",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [201764] = {
        name = "Crimson Aspirant's Staff",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [201765] = {
        name = "Crimson Aspirant's Greatsword",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [201767] = {
        name = "Crimson Aspirant's Warglaive",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [201768] = {
        name = "Crimson Aspirant's Gavel",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [201770] = {
        name = "Crimson Aspirant's Ripper",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [201771] = {
        name = "Crimson Aspirant's Recurve",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [201772] = {
        name = "Crimson Aspirant's Longspear",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [201773] = {
        name = "Crimson Aspirant's Hammer",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [201774] = {
        name = "Crimson Aspirant's Knife",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [201963] = {
        name = "Crimson Aspirant's Sword",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [201964] = {
        name = "Crimson Aspirant's Pulverizer",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [201965] = {
        name = "Crimson Aspirant's Blade",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [202123] = {
        name = "Crimson Gladiator's Greatbow",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [202124] = {
        name = "Crimson Gladiator's Crossbow",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [202125] = {
        name = "Crimson Gladiator's Greatstaff",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [202126] = {
        name = "Crimson Gladiator's Spellblade",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [202131] = {
        name = "Crimson Gladiator's Sword",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [202132] = {
        name = "Crimson Gladiator's Warhammer",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [202133] = {
        name = "Crimson Gladiator's Blade",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [202134] = {
        name = "Crimson Gladiator's Glaive",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [202135] = {
        name = "Crimson Gladiator's Poleaxe",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [202136] = {
        name = "Crimson Gladiator's Quarterstaff",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [202137] = {
        name = "Crimson Gladiator's Greataxe",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [202138] = {
        name = "Crimson Gladiator's Greatmace",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [202139] = {
        name = "Crimson Gladiator's Scepter",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [202140] = {
        name = "Crimson Gladiator's Claw",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [202282] = {
        name = "Winterpelt Mending Totem",
        vendors = {
            { vendor = "Kazzi", zone = "The Azure Span" },
        },
    },
    [202555] = {
        name = "Zskarn's Autopsy Scalpel",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [202557] = {
        name = "Hellsteel Mutilator",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [202559] = {
        name = "Infernal Shadelance",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [202560] = {
        name = "Claws of the Blazing Behemoth",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [202563] = {
        name = "Obsidian Stirring Staff",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [202564] = {
        name = "Fang of the Sundered Flame",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [202565] = {
        name = "Erethos, the Empty Promise",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [202566] = {
        name = "Rionthus's Bladed Visage",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [202568] = {
        name = "Scholar's Thinking Cudgel",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [202570] = {
        name = "Lavaflow Control Rod",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [202607] = {
        name = "Brutal Dragonslayer's Trophy",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [203673] = {
        name = "Bloodbeak's Ravenor",
        vendors = {
            { vendor = "Bloodbeak the Ravenous", zone = "Ohn'ahran Plains" },
        },
    },
    [204279] = {
        name = "Wallclimber's Incursion Hatchet",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [204319] = {
        name = "Bloodfire Extraction Conduit",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [204320] = {
        name = "Proctor's Tactical Cleaver",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [204322] = {
        name = "Failure Disposal Cannon",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [204562] = {
        name = "Maruuk Maul",
        vendors = {
            { vendor = "Treysh", zone = "The Forbidden Reach" },
        },
    },
    [204563] = {
        name = "Morqut Club",
        vendors = {
            { vendor = "Treysh", zone = "The Forbidden Reach" },
        },
    },
    [204564] = {
        name = "Dragonscale Expeditioner's Rifle",
        vendors = {
            { vendor = "Treysh", zone = "The Forbidden Reach" },
        },
    },
    [204569] = {
        name = "Valdrakken Talons",
        vendors = {
            { vendor = "Treysh", zone = "The Forbidden Reach" },
        },
    },
    [204570] = {
        name = "Valdrakken Pocketknife",
        vendors = {
            { vendor = "Treysh", zone = "The Forbidden Reach" },
        },
    },
    [205326] = {
        name = "Crystalweb Chelicera",
        vendors = {
            { vendor = "Spinmarrow", zone = "Zaralek Cavern" },
        },
    },
    [205327] = {
        name = "Shard of the Veridian King",
        vendors = {
            { vendor = "Viridian King", zone = "Zaralek Cavern" },
        },
    },
    [205328] = {
        name = "Earthen Emissary's Edge",
        vendors = {
            { vendor = "Subterrax", zone = "Zaralek Cavern" },
        },
    },
    [205331] = {
        name = "Zskorran Cleaver",
        vendors = {
            { vendor = "General Zskorro", zone = "Zaralek Cavern" },
        },
    },
    [205332] = {
        name = "Fist of the Demolisher",
        vendors = {
            { vendor = "Colossian", zone = "Zaralek Cavern" },
        },
    },
    [205879] = {
        name = "Obsidian Aspirant's Battleaxe",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [205880] = {
        name = "Obsidian Aspirant's Dagger",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [205881] = {
        name = "Obsidian Aspirant's Mace",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [205882] = {
        name = "Obsidian Aspirant's Polearm",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [205883] = {
        name = "Obsidian Aspirant's Staff",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [205884] = {
        name = "Obsidian Aspirant's Greatsword",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [205886] = {
        name = "Obsidian Aspirant's Warglaive",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [205887] = {
        name = "Obsidian Aspirant's Gavel",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [205889] = {
        name = "Obsidian Aspirant's Ripper",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [205890] = {
        name = "Obsidian Aspirant's Recurve",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [205891] = {
        name = "Obsidian Aspirant's Longspear",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [205892] = {
        name = "Obsidian Aspirant's Hammer",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [205893] = {
        name = "Obsidian Aspirant's Knife",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [205894] = {
        name = "Obsidian Aspirant's Sword",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [205895] = {
        name = "Obsidian Aspirant's Pulverizer",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [205896] = {
        name = "Obsidian Aspirant's Blade",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [205914] = {
        name = "Obsidian Gladiator's Splitter",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [205915] = {
        name = "Obsidian Gladiator's Dagger",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [205916] = {
        name = "Obsidian Gladiator's Warglaive",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [205917] = {
        name = "Obsidian Gladiator's Spear",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [205918] = {
        name = "Obsidian Gladiator's Staff",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [205919] = {
        name = "Obsidian Gladiator's Rifle",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [205921] = {
        name = "Obsidian Gladiator's Scepter",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [205924] = {
        name = "Obsidian Gladiator's Axe",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [205925] = {
        name = "Obsidian Gladiator's Knife",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [205926] = {
        name = "Obsidian Gladiator's Mace",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [205927] = {
        name = "Obsidian Gladiator's Polearm",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [205928] = {
        name = "Obsidian Gladiator's Claws",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [205929] = {
        name = "Obsidian Gladiator's Bow",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [205930] = {
        name = "Obsidian Gladiator's Talons",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [205971] = {
        name = "Rock Breaking Digger",
        vendors = {
            { vendor = "Harlowe Marl", zone = "Zaralek Cavern" },
        },
    },
    [205972] = {
        name = "Decorative Niffen Sword",
        vendors = {
            { vendor = "Harlowe Marl", zone = "Zaralek Cavern" },
        },
    },
    [206044] = {
        name = "Obsidian Gladiator's Axe",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [206137] = {
        name = "Obsidian Gladiator's Dagger",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [206146] = {
        name = "Obsidian Gladiator's Warglaive",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [206147] = {
        name = "Obsidian Gladiator's Polearm",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [206148] = {
        name = "Obsidian Gladiator's Staff",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [206149] = {
        name = "Obsidian Gladiator's Rifle",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [206150] = {
        name = "Obsidian Gladiator's Mace",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [206153] = {
        name = "Obsidian Gladiator's Claws",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [206154] = {
        name = "Obsidian Gladiator's Bow",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [206242] = {
        name = "Scalewarden's Battleaxe",
        vendors = {
            { vendor = "Malicia", zone = "Valdrakken" },
        },
    },
    [206243] = {
        name = "Scalewarden's Hatchet",
        vendors = {
            { vendor = "Malicia", zone = "Valdrakken" },
        },
    },
    [206244] = {
        name = "Scalewarden's Carver",
        vendors = {
            { vendor = "Malicia", zone = "Valdrakken" },
        },
    },
    [206245] = {
        name = "Scalewarden's Handcannon",
        vendors = {
            { vendor = "Malicia", zone = "Valdrakken" },
        },
    },
    [206246] = {
        name = "Scalewarden's Twinblade",
        vendors = {
            { vendor = "Malicia", zone = "Valdrakken" },
        },
    },
    [206247] = {
        name = "Scalewarden's Spellblade",
        vendors = {
            { vendor = "Malicia", zone = "Valdrakken" },
        },
    },
    [206248] = {
        name = "Scalewarden's Shortsword",
        vendors = {
            { vendor = "Malicia", zone = "Valdrakken" },
        },
    },
    [206250] = {
        name = "Scalewarden's Spire",
        vendors = {
            { vendor = "Malicia", zone = "Valdrakken" },
        },
    },
    [206251] = {
        name = "Scalewarden's Battlestaff",
        vendors = {
            { vendor = "Malicia", zone = "Valdrakken" },
        },
    },
    [206252] = {
        name = "Scalewarden's Greatsword",
        vendors = {
            { vendor = "Malicia", zone = "Valdrakken" },
        },
    },
    [206253] = {
        name = "Scalewarden's Broadsword",
        vendors = {
            { vendor = "Malicia", zone = "Valdrakken" },
        },
    },
    [206254] = {
        name = "Scalewarden's Club",
        vendors = {
            { vendor = "Malicia", zone = "Valdrakken" },
        },
    },
    [206255] = {
        name = "Scalewarden's Hammer",
        vendors = {
            { vendor = "Malicia", zone = "Valdrakken" },
        },
    },
    [206256] = {
        name = "Scalewarden's Cudgel",
        vendors = {
            { vendor = "Malicia", zone = "Valdrakken" },
        },
    },
    [206258] = {
        name = "Scalewarden's Impaler",
        vendors = {
            { vendor = "Malicia", zone = "Valdrakken" },
        },
    },
    [206259] = {
        name = "Scalewarden's Spear",
        vendors = {
            { vendor = "Malicia", zone = "Valdrakken" },
        },
    },
    [206260] = {
        name = "Scalewarden's Wand",
        vendors = {
            { vendor = "Malicia", zone = "Valdrakken" },
        },
    },
    [206261] = {
        name = "Scalewarden's Mace",
        vendors = {
            { vendor = "Malicia", zone = "Valdrakken" },
        },
    },
    [206262] = {
        name = "Scalewarden's Crusher",
        vendors = {
            { vendor = "Malicia", zone = "Valdrakken" },
        },
    },
    [206263] = {
        name = "Scalewarden's Scepter",
        vendors = {
            { vendor = "Malicia", zone = "Valdrakken" },
        },
    },
    [206265] = {
        name = "Scalewarden's Sabre",
        vendors = {
            { vendor = "Malicia", zone = "Valdrakken" },
        },
    },
    [206448] = {
        name = "Fyr'alath the Dreamrender",
        vendors = {
            { vendor = "Libergo", zone = "Valdrakken" },
        },
    },
    [206671] = {
        name = "Obsidian Gladiator's Halberd",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [206764] = {
        name = "Fel-Infused Polearm",
        vendors = {
            { vendor = "Falara Nightsong", zone = "Thaldraszus" },
        },
    },
    [206765] = {
        name = "Its Focused Gaze",
        vendors = {
            { vendor = "Provisioner Qorra", zone = "Thaldraszus" },
        },
    },
    [206766] = {
        name = "Jagged Treason",
        vendors = {
            { vendor = "Falara Nightsong", zone = "Thaldraszus" },
        },
    },
    [206767] = {
        name = "Valhalas Peacekeeper",
        vendors = {
            { vendor = "Sorotis", zone = "Thaldraszus" },
        },
    },
    [206768] = {
        name = "Serrated Parasite",
        vendors = {
            { vendor = "Provisioner Qorra", zone = "Thaldraszus" },
        },
    },
    [206769] = {
        name = "Unknown Horror's Arm",
        vendors = {
            { vendor = "Provisioner Qorra", zone = "Thaldraszus" },
        },
    },
    [206770] = {
        name = "Consuming Claws",
        vendors = {
            { vendor = "Provisioner Qorra", zone = "Thaldraszus" },
        },
    },
    [206776] = {
        name = "Heretical Gavel",
        vendors = {
            { vendor = "Provisioner Qorra", zone = "Thaldraszus" },
        },
    },
    [206777] = {
        name = "Energy Projection Regulator",
        vendors = {
            { vendor = "Gill the Drill", zone = "Thaldraszus" },
        },
    },
    [206778] = {
        name = "Northern Ballista",
        vendors = {
            { vendor = "Baron Sliver", zone = "Thaldraszus" },
        },
    },
    [206780] = {
        name = "Overclocked Hand Cannon",
        vendors = {
            { vendor = "Gill the Drill", zone = "Thaldraszus" },
        },
    },
    [206781] = {
        name = "Demonic Bone-Crusher",
        vendors = {
            { vendor = "Falara Nightsong", zone = "Thaldraszus" },
        },
    },
    [206783] = {
        name = "Bonegale Greataxe",
        vendors = {
            { vendor = "Baron Sliver", zone = "Thaldraszus" },
        },
    },
    [206784] = {
        name = "Blighted Greatbow",
        vendors = {
            { vendor = "Baron Sliver", zone = "Thaldraszus" },
        },
    },
    [206785] = {
        name = "Defect Retirement Tool",
        vendors = {
            { vendor = "Gill the Drill", zone = "Thaldraszus" },
        },
    },
    [206789] = {
        name = "Heart-Slicer",
        vendors = {
            { vendor = "Falara Nightsong", zone = "Thaldraszus" },
        },
    },
    [206790] = {
        name = "Fel-Ridden Divider",
        vendors = {
            { vendor = "Falara Nightsong", zone = "Thaldraszus" },
        },
    },
    [206791] = {
        name = "Branded Greatmaul",
        vendors = {
            { vendor = "Falara Nightsong", zone = "Thaldraszus" },
        },
    },
    [206793] = {
        name = "Upraised Headstone",
        vendors = {
            { vendor = "Baron Sliver", zone = "Thaldraszus" },
        },
    },
    [206794] = {
        name = "Hand of Order",
        vendors = {
            { vendor = "Sorotis", zone = "Thaldraszus" },
        },
    },
    [206795] = {
        name = "Titan Watcher's Shortblade",
        vendors = {
            { vendor = "Sorotis", zone = "Thaldraszus" },
        },
    },
    [206796] = {
        name = "Energetic Power Knife",
        vendors = {
            { vendor = "Gill the Drill", zone = "Thaldraszus" },
        },
    },
    [206797] = {
        name = "Frostspire",
        vendors = {
            { vendor = "Baron Sliver", zone = "Thaldraszus" },
        },
    },
    [206798] = {
        name = "Valhalas Heartstriker",
        vendors = {
            { vendor = "Sorotis", zone = "Thaldraszus" },
        },
    },
    [206801] = {
        name = "Inferna Rod",
        vendors = {
            { vendor = "Falara Nightsong", zone = "Thaldraszus" },
        },
    },
    [206802] = {
        name = "Plague-Touched Stave",
        vendors = {
            { vendor = "Baron Sliver", zone = "Thaldraszus" },
        },
    },
    [206803] = {
        name = "Cursed Blade of the Scourge",
        vendors = {
            { vendor = "Baron Sliver", zone = "Thaldraszus" },
        },
    },
    [206804] = {
        name = "Clockwork Mallet",
        vendors = {
            { vendor = "Gill the Drill", zone = "Thaldraszus" },
        },
    },
    [206807] = {
        name = "Order-Powered Mechblade",
        vendors = {
            { vendor = "Gill the Drill", zone = "Thaldraszus" },
        },
    },
    [206820] = {
        name = "Scalewarden's Dagger",
        vendors = {
            { vendor = "Malicia", zone = "Valdrakken" },
        },
    },
    [206830] = {
        name = "Scalewarden's Dirk",
        vendors = {
            { vendor = "Malicia", zone = "Valdrakken" },
        },
    },
    [206927] = {
        name = "Depleted Chronoforged Mallet",
        vendors = {
            { vendor = "Ironus Coldsteel", zone = "Thaldraszus" },
        },
    },
    [206928] = {
        name = "Echoing Temporadic Gavel",
        vendors = {
            { vendor = "Ironus Coldsteel", zone = "Thaldraszus" },
        },
    },
    [207014] = {
        name = "Jingoist's Slicer",
        vendors = {
            { vendor = "Warden Krizzik", zone = "Thaldraszus" },
        },
    },
    [207015] = {
        name = "Warmonger's Ripper",
        vendors = {
            { vendor = "Warden Krizzik", zone = "Thaldraszus" },
        },
    },
    [207780] = {
        name = "Ashen Ranger's Longbow",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [207781] = {
        name = "Betrayer's Cinderblade",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [207782] = {
        name = "Sickle of the White Stag",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [207783] = {
        name = "Cruel Dreamcarver",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [207784] = {
        name = "Thorncaller Claw",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [207785] = {
        name = "Magmatic Volcannon",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [207786] = {
        name = "Gholak, the Final Conflagration",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [207787] = {
        name = "Igira's Flaying Hatchet",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [207788] = {
        name = "Vakash, the Shadowed Inferno",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [207789] = {
        name = "Volcoross's Barbed Fang",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [207790] = {
        name = "Larodar's Moonblade",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [207791] = {
        name = "Remnant Charglaive",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [207792] = {
        name = "Scythe of the Fallen Keeper",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [207793] = {
        name = "Rashon, the Immortal Blaze",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [207794] = {
        name = "Staff of Incandescent Torment",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [207795] = {
        name = "Eternal Kindler's Greatstaff",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [207799] = {
        name = "Incandescent Soulcleaver",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [207800] = {
        name = "Gnarlroot's Bonecrusher",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [207976] = {
        name = "Chroniton Wand",
        vendors = {
            { vendor = "Shi Everbreeze", zone = "Thaldraszus" },
        },
    },
    [207977] = {
        name = "Rift Render",
        vendors = {
            { vendor = "Shi Everbreeze", zone = "Thaldraszus" },
        },
    },
    [207980] = {
        name = "Inevitable Claymore",
        vendors = {
            { vendor = "Shi Everbreeze", zone = "Thaldraszus" },
        },
    },
    [207981] = {
        name = "Time Slicer",
        vendors = {
            { vendor = "Shi Everbreeze", zone = "Thaldraszus" },
        },
    },
    [207985] = {
        name = "Ever-Repeating Rifle",
        vendors = {
            { vendor = "Shi Everbreeze", zone = "Thaldraszus" },
        },
    },
    [207988] = {
        name = "Time Keeper's Polearm",
        vendors = {
            { vendor = "Shi Everbreeze", zone = "Thaldraszus" },
        },
    },
    [207989] = {
        name = "Chronospire",
        vendors = {
            { vendor = "Shi Everbreeze", zone = "Thaldraszus" },
        },
    },
    [207990] = {
        name = "Temporal Battle Staff",
        vendors = {
            { vendor = "Shi Everbreeze", zone = "Thaldraszus" },
        },
    },
    [207993] = {
        name = "Spacetime Cleaver",
        vendors = {
            { vendor = "Shi Everbreeze", zone = "Thaldraszus" },
        },
    },
    [207998] = {
        name = "Hoursteel Mace",
        vendors = {
            { vendor = "Shi Everbreeze", zone = "Thaldraszus" },
        },
    },
    [208042] = {
        name = "Edge of Tomorrow",
        vendors = {
            { vendor = "Shi Everbreeze", zone = "Thaldraszus" },
        },
    },
    [208043] = {
        name = "Bronzegift Mallet",
        vendors = {
            { vendor = "Shi Everbreeze", zone = "Thaldraszus" },
        },
    },
    [208168] = {
        name = "Black Blade of K'tanth",
        vendors = {
            { vendor = "Zal'kir the Chosen", zone = "Thaldraszus" },
        },
    },
    [208170] = {
        name = "Runeaxe of the Last Resistance",
        vendors = {
            { vendor = "Zal'kir the Chosen", zone = "Thaldraszus" },
        },
    },
    [208172] = {
        name = "Bloodstained Runecrook",
        vendors = {
            { vendor = "Zal'kir the Chosen", zone = "Thaldraszus" },
        },
    },
    [208361] = {
        name = "Splinterlimb's Branch",
        vendors = {
            { vendor = "Splinterlimb", zone = "Emerald Dream" },
        },
    },
    [208363] = {
        name = "Twinfang of the Cian",
        vendors = {
            { vendor = "Keen-Eyed Cian", zone = "Emerald Dream" },
        },
    },
    [208364] = {
        name = "Falling Leaf Saber",
        vendors = {
            { vendor = "Crabtankerous", zone = "Emerald Dream" },
        },
    },
    [208367] = {
        name = "Lasher's Red Thorn",
        vendors = {
            { vendor = "Surging Lasher", zone = "Emerald Dream" },
        },
    },
    [208374] = {
        name = "Talthonei's Wrath",
        vendors = {
            { vendor = "Talthonei Ashwhisper", zone = "Emerald Dream" },
        },
    },
    [208375] = {
        name = "Owlbear's Decisive Strike",
        vendors = {
            { vendor = "Mosa Umbramane", zone = "Emerald Dream" },
        },
    },
    [208376] = {
        name = "Great Ray's Longbow",
        vendors = {
            { vendor = "Bloodstripe Great Ray", zone = "Emerald Dream" },
        },
    },
    [208379] = {
        name = "Keevah's Extended Claw",
        vendors = {
            { vendor = "Matriarch Keevah", zone = "Emerald Dream" },
        },
    },
    [208380] = {
        name = "Moragh's Kneading Claw",
        vendors = {
            { vendor = "Moragh the Slothful", zone = "Emerald Dream" },
        },
    },
    [208381] = {
        name = "Scepter of Still Waters",
        vendors = {
            { vendor = "Somnambulant Ori", zone = "Emerald Dream" },
        },
    },
    [208383] = {
        name = "Pommel of Fire",
        vendors = {
            { vendor = "Ignit the Firebranded", zone = "Emerald Dream" },
        },
    },
    [208385] = {
        name = "Flame Endowed Blade",
        vendors = {
            { vendor = "Isaqa", zone = "Emerald Dream" },
        },
    },
    [208389] = {
        name = "Spear of the Wilds",
        vendors = {
            { vendor = "The Apostle", zone = "Emerald Dream" },
        },
    },
    [208616] = {
        name = "Dreambinder, Loom of the Great Cycle",
        vendors = {
            { vendor = "Iszinormi", zone = "Valdrakken" },
        },
    },
    [209535] = {
        name = "Verdant Gladiator's Splitter",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [209536] = {
        name = "Verdant Gladiator's Dagger",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [209537] = {
        name = "Verdant Gladiator's Warglaive",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [209538] = {
        name = "Verdant Gladiator's Scythe",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [209539] = {
        name = "Verdant Gladiator's Staff",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [209540] = {
        name = "Verdant Gladiator's Rifle",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [209541] = {
        name = "Verdant Gladiator's Scepter",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [209544] = {
        name = "Verdant Gladiator's Axe",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [209545] = {
        name = "Verdant Gladiator's Sickle",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [209546] = {
        name = "Verdant Gladiator's Claws",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [209547] = {
        name = "Verdant Gladiator's Bow",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [209548] = {
        name = "Verdant Gladiator's Greatstaff",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [209550] = {
        name = "Verdant Gladiator's Greatsword",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [209551] = {
        name = "Verdant Gladiator's Pulverizer",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [209552] = {
        name = "Verdant Gladiator's Sword",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [209553] = {
        name = "Verdant Gladiator's Shotel",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [209554] = {
        name = "Verdant Gladiator's Axestaff",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [209880] = {
        name = "Curve of Starry Dusks",
        vendors = {
            { vendor = "Nuoberon", zone = "Emerald Dream" },
        },
    },
    [209881] = {
        name = "Fystia's Fiery Kris",
        vendors = {
            { vendor = "Firebrand Fystia", zone = "Emerald Dream" },
        },
    },
    [209882] = {
        name = "Maruud's Undertow",
        vendors = {
            { vendor = "Reefbreaker Moruud", zone = "Emerald Dream" },
        },
    },
    [210149] = {
        name = "Verdant Aspirant's Battleaxe",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [210150] = {
        name = "Verdant Aspirant's Dagger",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [210151] = {
        name = "Verdant Aspirant's Mace",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [210152] = {
        name = "Verdant Aspirant's Polearm",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [210153] = {
        name = "Verdant Aspirant's Staff",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [210154] = {
        name = "Verdant Aspirant's Greatsword",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [210156] = {
        name = "Verdant Aspirant's Warglaive",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [210157] = {
        name = "Verdant Aspirant's Scepter",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [210160] = {
        name = "Verdant Aspirant's Recurve",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [210161] = {
        name = "Verdant Aspirant's Halberd",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [210162] = {
        name = "Verdant Aspirant's Hammer",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [210163] = {
        name = "Verdant Aspirant's Knife",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [210164] = {
        name = "Verdant Aspirant's Sword",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [210166] = {
        name = "Verdant Aspirant's Blade",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [210317] = {
        name = "Verdant Aspirant's Wand",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [210502] = {
        name = "Verdant Gladiator's Axe",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [210503] = {
        name = "Verdant Gladiator's Dagger",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [210504] = {
        name = "Verdant Gladiator's Sickle",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [210506] = {
        name = "Verdant Gladiator's Warglaive",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [210507] = {
        name = "Verdant Gladiator's Scythe",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [210508] = {
        name = "Verdant Gladiator's Staff",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [210509] = {
        name = "Verdant Gladiator's Greatstaff",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [210510] = {
        name = "Verdant Gladiator's Axestaff",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [210511] = {
        name = "Verdant Gladiator's Rifle",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [210512] = {
        name = "Verdant Gladiator's Scepter",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [210516] = {
        name = "Verdant Gladiator's Claws",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [210517] = {
        name = "Verdant Gladiator's Bow",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [210518] = {
        name = "Verdant Gladiator's Greatsword",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [210519] = {
        name = "Verdant Gladiator's Pulverizer",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [210520] = {
        name = "Verdant Gladiator's Sword",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [210521] = {
        name = "Verdant Gladiator's Shotel",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [210676] = {
        name = "Elderwood Cane",
        vendors = {
            { vendor = "Moon Priestess Lasara", zone = "Emerald Dream" },
        },
    },
    [210677] = {
        name = "Survivalist's Shovel",
        vendors = {
            { vendor = "Moon Priestess Lasara", zone = "Emerald Dream" },
        },
    },
    [210680] = {
        name = "Caretaker's Trowel",
        vendors = {
            { vendor = "Moon Priestess Lasara", zone = "Emerald Dream" },
        },
    },
    [210685] = {
        name = "Ranger's Longbow",
        vendors = {
            { vendor = "Moon Priestess Lasara", zone = "Emerald Dream" },
        },
    },
    [216284] = {
        name = "Draconic Gladiator's Splitter",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [216285] = {
        name = "Draconic Gladiator's Dagger",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [216286] = {
        name = "Draconic Gladiator's Warglaive",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [216287] = {
        name = "Draconic Gladiator's Scythe",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [216288] = {
        name = "Draconic Gladiator's Staff",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [216289] = {
        name = "Draconic Gladiator's Rifle",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [216290] = {
        name = "Draconic Gladiator's Scepter",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [216293] = {
        name = "Draconic Gladiator's Axe",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [216294] = {
        name = "Draconic Gladiator's Sickle",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [216295] = {
        name = "Draconic Gladiator's Claws",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [216296] = {
        name = "Draconic Gladiator's Bow",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [216297] = {
        name = "Draconic Gladiator's Greatstaff",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [216299] = {
        name = "Draconic Gladiator's Greatsword",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [216300] = {
        name = "Draconic Gladiator's Pulverizer",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [216301] = {
        name = "Draconic Gladiator's Sword",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [216302] = {
        name = "Draconic Gladiator's Shotel",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [216303] = {
        name = "Draconic Gladiator's Axestaff",
        vendors = {
            { vendor = "Calderax", zone = "Valdrakken" },
        },
    },
    [216383] = {
        name = "Draconic Aspirant's Battleaxe",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [216384] = {
        name = "Draconic Aspirant's Dagger",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [216385] = {
        name = "Draconic Aspirant's Mace",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [216386] = {
        name = "Draconic Aspirant's Polearm",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [216387] = {
        name = "Draconic Aspirant's Staff",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [216388] = {
        name = "Draconic Aspirant's Greatsword",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [216390] = {
        name = "Draconic Aspirant's Warglaive",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [216391] = {
        name = "Draconic Aspirant's Scepter",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [216393] = {
        name = "Draconic Aspirant's Recurve",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [216394] = {
        name = "Draconic Aspirant's Halberd",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [216395] = {
        name = "Draconic Aspirant's Hammer",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [216396] = {
        name = "Draconic Aspirant's Knife",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [216397] = {
        name = "Draconic Aspirant's Sword",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [216398] = {
        name = "Draconic Aspirant's Blade",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [216399] = {
        name = "Draconic Aspirant's Wand",
        vendors = {
            { vendor = "Seltherex", zone = "Valdrakken" },
        },
    },
    [217353] = {
        name = "Draconic Gladiator's Axe",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [217354] = {
        name = "Draconic Gladiator's Dagger",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [217355] = {
        name = "Draconic Gladiator's Sickle",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [217356] = {
        name = "Draconic Gladiator's Warglaive",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [217357] = {
        name = "Draconic Gladiator's Scythe",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [217358] = {
        name = "Draconic Gladiator's Staff",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [217359] = {
        name = "Draconic Gladiator's Greatstaff",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [217360] = {
        name = "Draconic Gladiator's Axestaff",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [217361] = {
        name = "Draconic Gladiator's Rifle",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [217362] = {
        name = "Draconic Gladiator's Scepter",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [217366] = {
        name = "Draconic Gladiator's Claws",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [217367] = {
        name = "Draconic Gladiator's Bow",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [217368] = {
        name = "Draconic Gladiator's Greatsword",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [217369] = {
        name = "Draconic Gladiator's Pulverizer",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [217370] = {
        name = "Draconic Gladiator's Sword",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [217371] = {
        name = "Draconic Gladiator's Shotel",
        vendors = {
            { vendor = "Glamora", zone = "Valdrakken" },
        },
    },
    [217421] = {
        name = "Vault Raider's Earthen Slicer",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217422] = {
        name = "Vault Raider's Frozen Slicer",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217423] = {
        name = "Vault Raider's Storming Slicer",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217424] = {
        name = "Vault Raider's Crystal Slicer",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217425] = {
        name = "Vault Raider's Earthen Thumper",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217426] = {
        name = "Vault Raider's Frozen Thumper",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217427] = {
        name = "Vault Raider's Storming Thumper",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217428] = {
        name = "Vault Raider's Crystal Thumper",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217429] = {
        name = "Vault Raider's Earthen Crossbow",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217430] = {
        name = "Vault Raider's Frozen Crossbow",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217431] = {
        name = "Vault Raider's Storming Crossbow",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217432] = {
        name = "Vault Raider's Crystal Crossbow",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217449] = {
        name = "Vault Raider's Earthen Crusher",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217450] = {
        name = "Vault Raider's Frozen Crusher",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217451] = {
        name = "Vault Raider's Storming Crusher",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217452] = {
        name = "Vault Raider's Crystal Crusher",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217453] = {
        name = "Vault Raider's Earthen Splitter",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217454] = {
        name = "Vault Raider's Frozen Splitter",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217455] = {
        name = "Vault Raider's Storming Splitter",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217456] = {
        name = "Vault Raider's Crystal Splitter",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217457] = {
        name = "Vault Raider's Earthen Halberd",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217458] = {
        name = "Vault Raider's Frozen Halberd",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217459] = {
        name = "Vault Raider's Storming Halberd",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217460] = {
        name = "Vault Raider's Crystal Halberd",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217461] = {
        name = "Vault Raider's Earthen Pillar",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217462] = {
        name = "Vault Raider's Frozen Pillar",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217463] = {
        name = "Vault Raider's Storming Pillar",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217464] = {
        name = "Vault Raider's Crystal Pillar",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217465] = {
        name = "Vault Raider's Earthen Staff",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217466] = {
        name = "Vault Raider's Frozen Staff",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217467] = {
        name = "Vault Raider's Storming Staff",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217468] = {
        name = "Vault Raider's Crystal Staff",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217469] = {
        name = "Vault Raider's Earthen Shard",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217470] = {
        name = "Vault Raider's Frozen Shard",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217471] = {
        name = "Vault Raider's Storming Shard",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217472] = {
        name = "Vault Raider's Crystal Shard",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217473] = {
        name = "Vault Raider's Earthen Knife",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217474] = {
        name = "Vault Raider's Frozen Knife",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217475] = {
        name = "Vault Raider's Storming Knife",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217476] = {
        name = "Vault Raider's Crystal Knife",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217477] = {
        name = "Vault Raider's Earthen Glaives",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217478] = {
        name = "Vault Raider's Frozen Glaives",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217479] = {
        name = "Vault Raider's Storming Glaives",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217480] = {
        name = "Vault Raider's Crystal Glaives",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217481] = {
        name = "Vault Raider's Earthen Fists",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217482] = {
        name = "Vault Raider's Frozen Fists",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217483] = {
        name = "Vault Raider's Storming Fists",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217484] = {
        name = "Vault Raider's Crystal Fists",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217485] = {
        name = "Vault Raider's Earthen Greatbow",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217486] = {
        name = "Vault Raider's Frozen Greatbow",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217487] = {
        name = "Vault Raider's Storming Greatbow",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217488] = {
        name = "Vault Raider's Crystal Greatbow",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217489] = {
        name = "Vault Raider's Earthen Scepter",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217490] = {
        name = "Vault Raider's Frozen Scepter",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217491] = {
        name = "Vault Raider's Storming Scepter",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217492] = {
        name = "Vault Raider's Crystal Scepter",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217493] = {
        name = "Vault Raider's Primal Greatstaff",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217507] = {
        name = "Crucible Raider's Bronzed Mutilator",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217508] = {
        name = "Crucible Raider's Shadowed Mutilator",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217509] = {
        name = "Crucible Raider's Molten Mutilator",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217510] = {
        name = "Crucible Raider's Corrupted Mutilator",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217511] = {
        name = "Crucible Raider's Bronzed Lance",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217512] = {
        name = "Crucible Raider's Shadowed Lance",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217513] = {
        name = "Crucible Raider's Molten Lance",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217514] = {
        name = "Crucible Raider's Corrupted Lance",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217515] = {
        name = "Crucible Raider's Bronzed Cudgel",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217516] = {
        name = "Crucible Raider's Shadowed Cudgel",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217517] = {
        name = "Crucible Raider's Molten Cudgel",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217518] = {
        name = "Crucible Raider's Corrupted Cudgel",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217519] = {
        name = "Crucible Raider's Bronzed Rod",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217520] = {
        name = "Crucible Raider's Shadowed Rod",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217521] = {
        name = "Crucible Raider's Molten Rod",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217522] = {
        name = "Crucible Raider's Corrupted Rod",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217531] = {
        name = "Crucible Raider's Bronzed Wingblades",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217532] = {
        name = "Crucible Raider's Shadowed Wingblades",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217533] = {
        name = "Crucible Raider's Molten Wingblades",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217534] = {
        name = "Crucible Raider's Corrupted Wingblades",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217535] = {
        name = "Crucible Raider's Bronzed Hatchet",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217536] = {
        name = "Crucible Raider's Shadowed Hatchet",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217537] = {
        name = "Crucible Raider's Molten Hatchet",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217538] = {
        name = "Crucible Raider's Corrupted Hatchet",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217539] = {
        name = "Crucible Raider's Bronzed Longbow",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217540] = {
        name = "Crucible Raider's Shadowed Longbow",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217541] = {
        name = "Crucible Raider's Molten Longbow",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217542] = {
        name = "Crucible Raider's Corrupted Longbow",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217543] = {
        name = "Crucible Raider's Bronzed Mace",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217544] = {
        name = "Crucible Raider's Shadowed Mace",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217545] = {
        name = "Crucible Raider's Molten Mace",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217546] = {
        name = "Crucible Raider's Corrupted Mace",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217547] = {
        name = "Crucible Raider's Bronzed Elderstaff",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217548] = {
        name = "Crucible Raider's Shadowed Elderstaff",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217549] = {
        name = "Crucible Raider's Molten Elderstaff",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217550] = {
        name = "Crucible Raider's Corrupted Elderstaff",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217551] = {
        name = "Crucible Raider's Bronzed Cleaver",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217552] = {
        name = "Crucible Raider's Shadowed Cleaver",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217553] = {
        name = "Crucible Raider's Molten Cleaver",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217554] = {
        name = "Crucible Raider's Corrupted Cleaver",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217555] = {
        name = "Crucible Raider's Bronzed Cannon",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217556] = {
        name = "Crucible Raider's Shadowed Cannon",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217557] = {
        name = "Crucible Raider's Molten Cannon",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217558] = {
        name = "Crucible Raider's Corrupted Cannon",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217559] = {
        name = "Crucible Raider's Bronzed Claws",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217560] = {
        name = "Crucible Raider's Shadowed Claws",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217561] = {
        name = "Crucible Raider's Molten Claws",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217562] = {
        name = "Crucible Raider's Corrupted Claws",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217563] = {
        name = "Crucible Raider's Bronzed Control Rod",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217564] = {
        name = "Crucible Raider's Shadowed Control Rod",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217565] = {
        name = "Crucible Raider's Molten Control Rod",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217566] = {
        name = "Crucible Raider's Shadowed Control Rod",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217571] = {
        name = "Crucible Raider's Bronzed Ultra Greatsword",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217572] = {
        name = "Crucible Raider's Shadowed Ultra Greatsword",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217573] = {
        name = "Crucible Raider's Molten Ultra Greatsword",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217574] = {
        name = "Crucible Raider's Corrupted Ultra Greatsword",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217579] = {
        name = "Crucible Raider's Bronzed Shiv",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217580] = {
        name = "Crucible Raider's Shadowed Shiv",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217581] = {
        name = "Crucible Raider's Molten Shiv",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217582] = {
        name = "Crucible Raider's Corrupted Shiv",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217601] = {
        name = "Crucible Raider's Bronzed Beacon",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217602] = {
        name = "Crucible Raider's Shadowed Beacon",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217603] = {
        name = "Crucible Raider's Molten Beacon",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217604] = {
        name = "Crucible Raider's Corrupted Beacon",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217615] = {
        name = "Dream Raider's Azure Greathammer",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217616] = {
        name = "Dream Raider's Blazing Greathammer",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217617] = {
        name = "Dream Raider's Emerald Greathammer",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217618] = {
        name = "Dream Raider's Shadowflame Greathammer",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217619] = {
        name = "Dream Raider's Azure Torch",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217620] = {
        name = "Dream Raider's Blazing Torch",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217621] = {
        name = "Dream Raider's Emerald Torch",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217622] = {
        name = "Dream Raider's Shadowflame Torch",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217623] = {
        name = "Dream Raider's Azure Flayer",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217624] = {
        name = "Dream Raider's Blazing Flayer",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217625] = {
        name = "Dream Raider's Emerald Flayer",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217626] = {
        name = "Dream Raider's Shadowflame Flayer",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217631] = {
        name = "Dream Raider's Azure Dreamcarver",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217632] = {
        name = "Dream Raider's Blazing Dreamcarver",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217633] = {
        name = "Dream Raider's Emerald Dreamcarver",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217634] = {
        name = "Dream Raider's Shadowflame Dreamcarver",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217636] = {
        name = "Dream Raider's Azure Saber",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217637] = {
        name = "Dream Raider's Blazing Saber",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217638] = {
        name = "Dream Raider's Emerald Saber",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217639] = {
        name = "Dream Raider's Shadowflame Saber",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217640] = {
        name = "Dream Raider's Azure Rifle",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217641] = {
        name = "Dream Raider's Blazing Rifle",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217642] = {
        name = "Dream Raider's Emerald Rifle",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217643] = {
        name = "Dream Raider's Shadowflame Rifle",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217644] = {
        name = "Dream Raider's Azure Paws",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217645] = {
        name = "Dream Raider's Blazing Paws",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217646] = {
        name = "Dream Raider's Emerald Paws",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217647] = {
        name = "Dream Raider's Shadowflame Paws",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217652] = {
        name = "Dream Raider's Azure Scythe",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217653] = {
        name = "Dream Raider's Blazing Scythe",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217654] = {
        name = "Dream Raider's Emerald Scythe",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217655] = {
        name = "Dream Raider's Shadowflame Scythe",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217656] = {
        name = "Dream Raider's Azure Sickle",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217657] = {
        name = "Dream Raider's Blazing Sickle",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217658] = {
        name = "Dream Raider's Emerald Sickle",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217659] = {
        name = "Dream Raider's Shadowflame Sickle",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217660] = {
        name = "Dream Raider's Replica Dreambinder",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217665] = {
        name = "Dream Raider's Azure Cleaver",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217666] = {
        name = "Dream Raider's Blazing Cleaver",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217667] = {
        name = "Dream Raider's Emerald Cleaver",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217668] = {
        name = "Dream Raider's Shadowflame Cleaver",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217669] = {
        name = "Dream Raider's Azure Charglaive",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217670] = {
        name = "Dream Raider's Blazing Charglaive",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217671] = {
        name = "Dream Raider's Emerald Charglaive",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217672] = {
        name = "Dream Raider's Shadowflame Charglaive",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217673] = {
        name = "Dream Raider's Azure Blade",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217674] = {
        name = "Dream Raider's Blazing Blade",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217675] = {
        name = "Dream Raider's Emerald Blade",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217676] = {
        name = "Dream Raider's Shadowflame Blade",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217677] = {
        name = "Dream Raider's Azure Trident",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217678] = {
        name = "Dream Raider's Blazing Trident",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217679] = {
        name = "Dream Raider's Emerald Trident",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217680] = {
        name = "Dream Raider's Shadowflame Trident",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217681] = {
        name = "Dream Raider's Azure Recurve",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217682] = {
        name = "Dream Raider's Blazing Recurve",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217683] = {
        name = "Dream Raider's Emerald Recurve",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217684] = {
        name = "Dream Raider's Shadowflame Recurve",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217685] = {
        name = "Dream Raider's Azure Poleax",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217686] = {
        name = "Dream Raider's Blazing Poleax",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217687] = {
        name = "Dream Raider's Emerald Poleax",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217688] = {
        name = "Dream Raider's Shadowflame Poleax",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217689] = {
        name = "Dream Raider's Azure Flare",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217690] = {
        name = "Dream Raider's Blazing Flare",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217691] = {
        name = "Dream Raider's Emerald Flare",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [217692] = {
        name = "Dream Raider's Shadowflame Flare",
        vendors = {
            { vendor = "Mirioszin", zone = "Valdrakken" },
        },
    },
    [220655] = {
        name = "Water Blaster P.K.",
        vendors = {
            { vendor = "Soweezi", zone = "Siren Isle" },
        },
    },

    ------------------------------------------------------------
    -- THE WAR WITHIN
    ------------------------------------------------------------
    [211046] = {
        name = "Umbral Artist's Chisel",
        vendors = {
            { vendor = "Sir Finley Mrrgglton", zone = "Dornogal" },
        },
    },
    [211047] = {
        name = "Lapidarius Gemcutter",
        vendors = {
            { vendor = "Sir Finley Mrrgglton", zone = "Dornogal" },
        },
    },
    [211048] = {
        name = "Pathfinder's Stonecarver",
        vendors = {
            { vendor = "Sir Finley Mrrgglton", zone = "Dornogal" },
        },
    },
    [211059] = {
        name = "Luminous Lampspire",
        vendors = {
            { vendor = "Sir Finley Mrrgglton", zone = "Dornogal" },
        },
    },
    [218437] = {
        name = "Forged Aspirant's Dagger",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [218440] = {
        name = "Forged Aspirant's Staff",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [218441] = {
        name = "Forged Aspirant's Greatsword",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [218444] = {
        name = "Forged Aspirant's Scepter",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [218447] = {
        name = "Forged Aspirant's Halberd",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [218448] = {
        name = "Forged Aspirant's Morningstar",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [218719] = {
        name = "Forged Gladiator's Dagger",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [218720] = {
        name = "Forged Gladiator's Warglaive",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [218722] = {
        name = "Forged Gladiator's Staff",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [218723] = {
        name = "Forged Gladiator's Bow",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [218724] = {
        name = "Forged Gladiator's Scepter",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [218728] = {
        name = "Forged Gladiator's Pincer",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [218729] = {
        name = "Forged Gladiator's Claws",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [218730] = {
        name = "Forged Gladiator's Crossbow",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [218731] = {
        name = "Forged Gladiator's Greatstaff",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [218733] = {
        name = "Forged Gladiator's Greataxe",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [218735] = {
        name = "Forged Gladiator's Sword",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [218736] = {
        name = "Forged Gladiator's Skewer",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [219351] = {
        name = "Mana-Lined Slab Slicer",
        vendors = {
            { vendor = "Sir Finley Mrrgglton", zone = "Dornogal" },
        },
    },
    [219352] = {
        name = "Skypiercing Drillstaff",
        vendors = {
            { vendor = "Sir Finley Mrrgglton", zone = "Dornogal" },
        },
    },
    [219353] = {
        name = "Trailblazer's Hookshoot",
        vendors = {
            { vendor = "Sir Finley Mrrgglton", zone = "Dornogal" },
        },
    },
    [219354] = {
        name = "Mountain Shaper's Greataxe",
        vendors = {
            { vendor = "Sir Finley Mrrgglton", zone = "Dornogal" },
        },
    },
    [219355] = {
        name = "Bedrock Breaker",
        vendors = {
            { vendor = "Sir Finley Mrrgglton", zone = "Dornogal" },
        },
    },
    [219356] = {
        name = "Torchlit Pickaxe",
        vendors = {
            { vendor = "Sir Finley Mrrgglton", zone = "Dornogal" },
        },
    },
    [223853] = {
        name = "Forged Warmonger's Battlestaff",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [223854] = {
        name = "Forged Warmonger's Greatsword",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [223855] = {
        name = "Forged Warmonger's Broadsword",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [223860] = {
        name = "Forged Warmonger's Impaler",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [223862] = {
        name = "Forged Warmonger's Wand",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [223868] = {
        name = "Forged Warmonger's Dirk",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [224727] = {
        name = "Dasher's Trophy Fish",
        vendors = {
            { vendor = "Captain Oathmyt", zone = "Hallowfall" },
        },
    },
    [225497] = {
        name = "Torchlit Pickaxe",
        vendors = {
            { vendor = "Reno Jackson", zone = "Dornogal" },
        },
    },
    [225499] = {
        name = "Lapidarius Gemcutter",
        vendors = {
            { vendor = "Reno Jackson", zone = "Dornogal" },
        },
    },
    [225758] = {
        name = "Hallowfall Harvester's Pitchfork",
        vendors = {
            { vendor = "Captain Oathmyt", zone = "Hallowfall" },
        },
    },
    [225857] = {
        name = "Forged Gladiator's Dagger",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [225874] = {
        name = "Forged Gladiator's Wither-Blade",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [226111] = {
        name = "Arakkoan Ritual Staff",
        vendors = {
            { vendor = "Kereke", zone = "Isle of Dorn" },
        },
    },
    [226113] = {
        name = "Kereke's Flourishing Sabre",
        vendors = {
            { vendor = "Kereke", zone = "Isle of Dorn" },
        },
    },
    [226114] = {
        name = "Windslicer's Lance",
        vendors = {
            { vendor = "Kereke", zone = "Isle of Dorn" },
        },
    },
    [226115] = {
        name = "Contaminating Cleaver",
        vendors = {
            { vendor = "Rotfist", zone = "Isle of Dorn" },
        },
    },
    [226118] = {
        name = "Arcane Prisoner's Puncher",
        vendors = {
            { vendor = "Zovex", zone = "Isle of Dorn" },
        },
    },
    [226379] = {
        name = "Keen-eye 'Noculars",
        vendors = {
            { vendor = "Captain Oathmyt", zone = "Hallowfall" },
        },
    },
    [227294] = {
        name = "Ravencrest's Wrath",
        vendors = {
            { vendor = "Aridormi", zone = "Dalaran" },
        },
    },
    [228784] = {
        name = "Coldflame's Edge",
        vendors = {
            { vendor = "Historian Ma'di", zone = "Tanaris" },
        },
    },
    [228891] = {
        name = "Capital Punisher",
        vendors = {
            { vendor = "Consultant Wrexxle", zone = "Dornogal" },
        },
    },
    [228892] = {
        name = "Greasemonkey's Shift-Stick",
        vendors = {
            { vendor = "Consultant Wrexxle", zone = "Dornogal" },
        },
    },
    [228893] = {
        name = "\"Tiny Pal\"",
        vendors = {
            { vendor = "Consultant Wrexxle", zone = "Dornogal" },
        },
    },
    [228894] = {
        name = "GIGADEATH Chainblade",
        vendors = {
            { vendor = "Consultant Wrexxle", zone = "Dornogal" },
        },
    },
    [228895] = {
        name = "Remixed Ignition Saber",
        vendors = {
            { vendor = "Consultant Wrexxle", zone = "Dornogal" },
        },
    },
    [228896] = {
        name = "Stix's Metal Detector",
        vendors = {
            { vendor = "Consultant Wrexxle", zone = "Dornogal" },
        },
    },
    [228897] = {
        name = "Pyrotechnic Needle-Dropper",
        vendors = {
            { vendor = "Consultant Wrexxle", zone = "Dornogal" },
        },
    },
    [228898] = {
        name = "Alphacoil Ba-Boom Stick",
        vendors = {
            { vendor = "Consultant Wrexxle", zone = "Dornogal" },
        },
    },
    [228899] = {
        name = "Gallywix's Iron Thumb",
        vendors = {
            { vendor = "Consultant Wrexxle", zone = "Dornogal" },
        },
    },
    [228900] = {
        name = "Tournament Arc",
        vendors = {
            { vendor = "Consultant Wrexxle", zone = "Dornogal" },
        },
    },
    [228901] = {
        name = "Big Earner's Bludgeon",
        vendors = {
            { vendor = "Consultant Wrexxle", zone = "Dornogal" },
        },
    },
    [228902] = {
        name = "Wiseguy's Refused Offer",
        vendors = {
            { vendor = "Consultant Wrexxle", zone = "Dornogal" },
        },
    },
    [228903] = {
        name = "Dumpster Diver",
        vendors = {
            { vendor = "Consultant Wrexxle", zone = "Dornogal" },
        },
    },
    [228904] = {
        name = "Crowd Favorite",
        vendors = {
            { vendor = "Consultant Wrexxle", zone = "Dornogal" },
        },
    },
    [228905] = {
        name = "Giga Bank-Breaker",
        vendors = {
            { vendor = "Consultant Wrexxle", zone = "Dornogal" },
        },
    },
    [229167] = {
        name = "Earthen Deckhand's Cleaver",
        vendors = {
            { vendor = "Argarom", zone = "Siren Isle" },
        },
    },
    [229169] = {
        name = "Earthen Landlubber's Sword",
        vendors = {
            { vendor = "Argarom", zone = "Siren Isle" },
        },
    },
    [229170] = {
        name = "Earthen Scallywag's Saber",
        vendors = {
            { vendor = "Argarom", zone = "Siren Isle" },
        },
    },
    [229172] = {
        name = "Earthen Deckhand's Halberd",
        vendors = {
            { vendor = "Argarom", zone = "Siren Isle" },
        },
    },
    [229173] = {
        name = "Earthen Scallywag's Spear",
        vendors = {
            { vendor = "Argarom", zone = "Siren Isle" },
        },
    },
    [229176] = {
        name = "Earthen Landlubber's Greatsword",
        vendors = {
            { vendor = "Argarom", zone = "Siren Isle" },
        },
    },
    [229177] = {
        name = "Earthen Landlubber's Greataxe",
        vendors = {
            { vendor = "Argarom", zone = "Siren Isle" },
        },
    },
    [229178] = {
        name = "Earthen Scallywag's Gavel",
        vendors = {
            { vendor = "Argarom", zone = "Siren Isle" },
        },
    },
    [229179] = {
        name = "Earthen Deckhand's Cudgel",
        vendors = {
            { vendor = "Argarom", zone = "Siren Isle" },
        },
    },
    [229180] = {
        name = "Earthen Landlubber's Hammer",
        vendors = {
            { vendor = "Argarom", zone = "Siren Isle" },
        },
    },
    [229183] = {
        name = "Earthen Landlubber's Knife",
        vendors = {
            { vendor = "Argarom", zone = "Siren Isle" },
        },
    },
    [229184] = {
        name = "Earthen Deckhand's Knuckles",
        vendors = {
            { vendor = "Argarom", zone = "Siren Isle" },
        },
    },
    [229185] = {
        name = "Earthen Deckhand's Warglaive",
        vendors = {
            { vendor = "Argarom", zone = "Siren Isle" },
        },
    },
    [229186] = {
        name = "Earthen Scallywag's Greatstaff",
        vendors = {
            { vendor = "Argarom", zone = "Siren Isle" },
        },
    },
    [229187] = {
        name = "Earthen Deckhand's Rod",
        vendors = {
            { vendor = "Argarom", zone = "Siren Isle" },
        },
    },
    [229189] = {
        name = "Earthen Scallywag's Bow",
        vendors = {
            { vendor = "Argarom", zone = "Siren Isle" },
        },
    },
    [229190] = {
        name = "Earthen Deckhand's Blunderbuss",
        vendors = {
            { vendor = "Argarom", zone = "Siren Isle" },
        },
    },
    [229191] = {
        name = "Earthen Landlubber's Crossbow",
        vendors = {
            { vendor = "Argarom", zone = "Siren Isle" },
        },
    },
    [229507] = {
        name = "Prized Aspirant's Dagger",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [229510] = {
        name = "Prized Aspirant's Staff",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [229511] = {
        name = "Prized Aspirant's Greatsword",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [229516] = {
        name = "Prized Aspirant's Rifle",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [229786] = {
        name = "Prized Gladiator's Dagger",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [229789] = {
        name = "Prized Gladiator's Staff",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [229795] = {
        name = "Prized Gladiator's Pincer",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [229798] = {
        name = "Prized Gladiator's Greatstaff",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [229800] = {
        name = "Prized Gladiator's Greatsaw",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [229802] = {
        name = "Prized Gladiator's Torchblade",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [230142] = {
        name = "Prized Warmonger's Battleaxe",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230145] = {
        name = "Prized Warmonger's Flameshot",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230368] = {
        name = "Astral Aspirant's Dagger",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [230371] = {
        name = "Astral Aspirant's Staff",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [230372] = {
        name = "Astral Aspirant's Greatsword",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [230374] = {
        name = "Astral Aspirant's Warglaive",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [230375] = {
        name = "Astral Aspirant's Scepter",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [230377] = {
        name = "Astral Aspirant's Rifle",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [230378] = {
        name = "Astral Aspirant's Halberd",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [230379] = {
        name = "Astral Aspirant's Morningstar",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [230381] = {
        name = "Astral Aspirant's Chopper",
        vendors = {
            { vendor = "Velerd", zone = "Dornogal" },
        },
    },
    [230643] = {
        name = "Astral Gladiator's Splitter",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [230644] = {
        name = "Astral Gladiator's Dagger",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [230645] = {
        name = "Astral Gladiator's Warglaive",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [230646] = {
        name = "Astral Gladiator's Spear",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [230647] = {
        name = "Astral Gladiator's Staff",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [230648] = {
        name = "Astral Gladiator's Bow",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [230649] = {
        name = "Astral Gladiator's Scepter",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [230652] = {
        name = "Astral Gladiator's Axe",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [230653] = {
        name = "Astral Gladiator's Cinquedea",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [230654] = {
        name = "Astral Gladiator's Claws",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [230655] = {
        name = "Astral Gladiator's Crossbow",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [230656] = {
        name = "Astral Gladiator's Greatstaff",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [230658] = {
        name = "Astral Gladiator's Greatsword",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [230661] = {
        name = "Astral Gladiator's Skewer",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [230662] = {
        name = "Astral Gladiator's Battlestaff",
        vendors = {
            { vendor = "Lalandi", zone = "Dornogal" },
        },
    },
    [230702] = {
        name = "Astral Warmonger's Flameshot",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230703] = {
        name = "Astral Warmonger's Twinblade",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230713] = {
        name = "Astral Warmonger's Impaler",
        vendors = {
            { vendor = "Gilderann", zone = "Dornogal" },
        },
    },
    [230781] = {
        name = "Prized Gladiator's Pylon",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [231266] = {
        name = "Random Number Perforator",
        vendors = {
            { vendor = "Consultant Wrexxle", zone = "Dornogal" },
        },
    },
    [231268] = {
        name = "Blastfurious Machete",
        vendors = {
            { vendor = "Consultant Wrexxle", zone = "Dornogal" },
        },
    },
    [232000] = {
        name = "Frosted Ymirheim Battle Bow",
        vendors = {
            { vendor = "Auzin", zone = "Dalaran" },
        },
    },
    [232001] = {
        name = "Blazing Skyhawk Repeater",
        vendors = {
            { vendor = "Cupri", zone = "Shattrath City" },
        },
    },
    [232004] = {
        name = "Ironforge Hammerhead Rifle",
        vendors = {
            { vendor = "Auzin", zone = "Dalaran" },
        },
    },
    [232022] = {
        name = "Point of the Nether Vortex",
        vendors = {
            { vendor = "Cupri", zone = "Shattrath City" },
        },
    },
    [232023] = {
        name = "Chilled Obsidian Dragon's Tooth",
        vendors = {
            { vendor = "Cupri", zone = "Shattrath City" },
        },
    },
    [232025] = {
        name = "Frost Giant's Claws",
        vendors = {
            { vendor = "Auzin", zone = "Dalaran" },
        },
    },
    [232027] = {
        name = "Dragonflayer's Iron Cleaver",
        vendors = {
            { vendor = "Auzin", zone = "Dalaran" },
        },
    },
    [232028] = {
        name = "Warsong Coldweather Cleaver",
        vendors = {
            { vendor = "Auzin", zone = "Dalaran" },
        },
    },
    [232040] = {
        name = "Corrupted Sunblade",
        vendors = {
            { vendor = "Cupri", zone = "Shattrath City" },
        },
    },
    [232041] = {
        name = "Titan-Spark Longblade",
        vendors = {
            { vendor = "Auzin", zone = "Dalaran" },
        },
    },
    [232050] = {
        name = "Ashtongue Guardian's Spire",
        vendors = {
            { vendor = "Cupri", zone = "Shattrath City" },
        },
    },
    [232051] = {
        name = "Ashtongue Channeler's Staff",
        vendors = {
            { vendor = "Cupri", zone = "Shattrath City" },
        },
    },
    [232052] = {
        name = "Dragonflayer's Wing Splitter",
        vendors = {
            { vendor = "Auzin", zone = "Dalaran" },
        },
    },
    [232055] = {
        name = "Griffon's Teeth Ripper",
        vendors = {
            { vendor = "Auzin", zone = "Dalaran" },
        },
    },
    [232056] = {
        name = "Ymirjar Battle Harpoon",
        vendors = {
            { vendor = "Auzin", zone = "Dalaran" },
        },
    },
    [232064] = {
        name = "Leviathan Mk II Crowd Control Blade",
        vendors = {
            { vendor = "Auzin", zone = "Dalaran" },
        },
    },
    [232067] = {
        name = "Amani'shi Voodoo Bow",
        vendors = {
            { vendor = "Cupri", zone = "Shattrath City" },
        },
    },
    [232345] = {
        name = "Xu'rakas, Glaive of Command",
        vendors = {
            { vendor = "Cupri", zone = "Shattrath City" },
        },
    },
    [232526] = {
        name = "Best-in-Slots",
        vendors = {
            { vendor = "Consultant Wrexxle", zone = "Dornogal" },
        },
    },
    [232804] = {
        name = "Capo's Molten Knuckles",
        vendors = {
            { vendor = "Consultant Wrexxle", zone = "Dornogal" },
        },
    },
    [233806] = {
        name = "Burly Vrykul's Greatsword",
        vendors = {
            { vendor = "Taljori", zone = "Siren Isle" },
        },
    },
    [233817] = {
        name = "Crackling Wavelord's Trident",
        vendors = {
            { vendor = "Taljori", zone = "Siren Isle" },
        },
    },
    [233823] = {
        name = "Mereldar Smithing Mallet",
        vendors = {
            { vendor = "Ailenda Hedgemyr", zone = "Siren Isle" },
        },
    },
    [233856] = {
        name = "Hydraflayer's Longbow",
        vendors = {
            { vendor = "Taljori", zone = "Siren Isle" },
        },
    },
    [233857] = {
        name = "Bloodwake Sailpiercer",
        vendors = {
            { vendor = "Taljori", zone = "Siren Isle" },
        },
    },
    [234763] = {
        name = "Bloody Expeditionary Cleaver",
        vendors = {
            { vendor = "Mistweaver Xia", zone = "Timeless Isle" },
        },
    },
    [234765] = {
        name = "Flame-Bladed Steel Sword",
        vendors = {
            { vendor = "Mistweaver Xia", zone = "Timeless Isle" },
        },
    },
    [234766] = {
        name = "Ringed Pandaren Falchion",
        vendors = {
            { vendor = "Mistweaver Xia", zone = "Timeless Isle" },
        },
    },
    [234771] = {
        name = "Mogu Lightning Spitter",
        vendors = {
            { vendor = "Mistweaver Xia", zone = "Timeless Isle" },
        },
    },
    [234773] = {
        name = "Imperial Gut Render",
        vendors = {
            { vendor = "Mistweaver Xia", zone = "Timeless Isle" },
        },
    },
    [234776] = {
        name = "Saurok Mystic's Voodoo Stick",
        vendors = {
            { vendor = "Mistweaver Xia", zone = "Timeless Isle" },
        },
    },
    [234790] = {
        name = "Restored Harmonic Mallet",
        vendors = {
            { vendor = "Mistweaver Xia", zone = "Timeless Isle" },
        },
    },
    [234953] = {
        name = "Edge of the First Blade",
        vendors = {
            { vendor = "Aridormi", zone = "Dalaran" },
        },
    },
    [235297] = {
        name = "Smuggled Councilor's Chalice",
        vendors = {
            { vendor = "Hooded Purveyor", zone = "Siren Isle" },
        },
    },
    [235298] = {
        name = "Smuggled Forgegrounds Hammer",
        vendors = {
            { vendor = "Hooded Purveyor", zone = "Siren Isle" },
        },
    },
    [235299] = {
        name = "Smuggled Meadery Pitcher",
        vendors = {
            { vendor = "Hooded Purveyor", zone = "Siren Isle" },
        },
    },
    [235349] = {
        name = "Shadowfume Club",
        vendors = {
            { vendor = "Slugger the Smart", zone = "Undermine" },
        },
    },
    [235350] = {
        name = "Void-forged Cudgel",
        vendors = {
            { vendor = "Ephemeral Agent Lathyd", zone = "Undermine" },
        },
    },
    [235354] = {
        name = "Scrapblaster Lance",
        vendors = {
            { vendor = "The Junk-Wall", zone = "Undermine" },
        },
    },
    [235355] = {
        name = "Gossi-blin's Baton",
        vendors = {
            { vendor = "Tally Doublespeak", zone = "Undermine" },
        },
    },
    [235484] = {
        name = "Razor-sharp Desk Fan",
        vendors = {
            { vendor = "The Underpin", zone = "Demolition Dome" },
        },
    },
    [235824] = {
        name = "Flame Sputterer",
        vendors = {
            { vendor = "Giovante", zone = "Undermine" },
        },
    },
    [235828] = {
        name = "Electrocution Warning",
        vendors = {
            { vendor = "Voltstrike the Charged", zone = "Undermine" },
        },
    },
    [235834] = {
        name = "Rocketgrip Turboslicer",
        vendors = {
            { vendor = "Darkfuse Precipitant", zone = "Undermine" },
        },
    },
    [235836] = {
        name = "Gas-Powered Chainblade",
        vendors = {
            { vendor = "M.A.G.N.O.", zone = "Undermine" },
        },
    },
    [237775] = {
        name = "Nightfall Curseblade's Cleaver",
        vendors = {
            { vendor = "Vesper Churnmoat", zone = "Hallowfall" },
        },
    },
    [237776] = {
        name = "Nightfall Executioner's Halberd",
        vendors = {
            { vendor = "Vesper Churnmoat", zone = "Hallowfall" },
        },
    },
    [237778] = {
        name = "Nightfall Executioner's Greatsword",
        vendors = {
            { vendor = "Vesper Churnmoat", zone = "Hallowfall" },
        },
    },
    [237779] = {
        name = "Nightfall Darkcaster's Gavel",
        vendors = {
            { vendor = "Vesper Churnmoat", zone = "Hallowfall" },
        },
    },
    [237780] = {
        name = "Nightfall Curseblade's Cudgel",
        vendors = {
            { vendor = "Vesper Churnmoat", zone = "Hallowfall" },
        },
    },
    [237781] = {
        name = "Nightfall Shadowalker's Dagger",
        vendors = {
            { vendor = "Vesper Churnmoat", zone = "Hallowfall" },
        },
    },
    [237782] = {
        name = "Nightfall Curseblade's Knife",
        vendors = {
            { vendor = "Vesper Churnmoat", zone = "Hallowfall" },
        },
    },
    [237783] = {
        name = "Nightfall Darkcaster's Greatstaff",
        vendors = {
            { vendor = "Vesper Churnmoat", zone = "Hallowfall" },
        },
    },
    [237784] = {
        name = "Nightfall Shadowalker's Rod",
        vendors = {
            { vendor = "Vesper Churnmoat", zone = "Hallowfall" },
        },
    },
    [237786] = {
        name = "Nightfall Curseblade's Blunderbuss",
        vendors = {
            { vendor = "Vesper Churnmoat", zone = "Hallowfall" },
        },
    },
    [237787] = {
        name = "Nightfall Darkcaster's Kris",
        vendors = {
            { vendor = "Vesper Churnmoat", zone = "Hallowfall" },
        },
    },
    [237788] = {
        name = "Nightfall Shadowalker's Shotgun",
        vendors = {
            { vendor = "Vesper Churnmoat", zone = "Hallowfall" },
        },
    },
    [237789] = {
        name = "Nightfall Curseblade's Warglaive",
        vendors = {
            { vendor = "Vesper Churnmoat", zone = "Hallowfall" },
        },
    },
    [237790] = {
        name = "Nightfall Darkcaster's Wand",
        vendors = {
            { vendor = "Vesper Churnmoat", zone = "Hallowfall" },
        },
    },
    [237791] = {
        name = "Arathi Zealot's Cleaver",
        vendors = {
            { vendor = "Raen Dawncavalyr", zone = "Hallowfall" },
        },
    },
    [237792] = {
        name = "Arathi Crusader's Halberd",
        vendors = {
            { vendor = "Raen Dawncavalyr", zone = "Hallowfall" },
        },
    },
    [237794] = {
        name = "Arathi Crusader's Greatsword",
        vendors = {
            { vendor = "Raen Dawncavalyr", zone = "Hallowfall" },
        },
    },
    [237795] = {
        name = "Arathi Abbot's Gavel",
        vendors = {
            { vendor = "Raen Dawncavalyr", zone = "Hallowfall" },
        },
    },
    [237796] = {
        name = "Arathi Zealot's Cudgel",
        vendors = {
            { vendor = "Raen Dawncavalyr", zone = "Hallowfall" },
        },
    },
    [237797] = {
        name = "Arathi Zealot's Dagger",
        vendors = {
            { vendor = "Raen Dawncavalyr", zone = "Hallowfall" },
        },
    },
    [237799] = {
        name = "Arathi Abbot's Greatstaff",
        vendors = {
            { vendor = "Raen Dawncavalyr", zone = "Hallowfall" },
        },
    },
    [237800] = {
        name = "Arathi Cleric's Rod",
        vendors = {
            { vendor = "Raen Dawncavalyr", zone = "Hallowfall" },
        },
    },
    [237802] = {
        name = "Arathi Cleric's Blunderbuss",
        vendors = {
            { vendor = "Raen Dawncavalyr", zone = "Hallowfall" },
        },
    },
    [237803] = {
        name = "Arathi Abbot's Kris",
        vendors = {
            { vendor = "Raen Dawncavalyr", zone = "Hallowfall" },
        },
    },
    [237804] = {
        name = "Arathi Zealot's Shotgun",
        vendors = {
            { vendor = "Raen Dawncavalyr", zone = "Hallowfall" },
        },
    },
    [237805] = {
        name = "Arathi Zealot's Warglaive",
        vendors = {
            { vendor = "Raen Dawncavalyr", zone = "Hallowfall" },
        },
    },
    [241033] = {
        name = "Arathi Templar's Claymore",
        vendors = {
            { vendor = "Raen Dawncavalyr", zone = "Hallowfall" },
        },
    },
    [241035] = {
        name = "Arathi Soldier's Morningstar",
        vendors = {
            { vendor = "Raen Dawncavalyr", zone = "Hallowfall" },
        },
    },
    [244823] = {
        name = "Silver Dragonblade of the Resistance",
        vendors = {
            { vendor = "Aridormi", zone = "Dalaran" },
        },
    },
    [244824] = {
        name = "Time-Lost Dreadbow of the Banshee",
        vendors = {
            { vendor = "Aridormi", zone = "Dalaran" },
        },
    },
    [244828] = {
        name = "Nightforged Spellblade",
        vendors = {
            { vendor = "Aridormi", zone = "Dalaran" },
        },
    },
    [244830] = {
        name = "Krokuun Tunneler's Axe",
        vendors = {
            { vendor = "Aridormi", zone = "Dalaran" },
        },
    },
    [244834] = {
        name = "Hippogryph Lancer's Magespear",
        vendors = {
            { vendor = "Aridormi", zone = "Dalaran" },
        },
    },
    [244836] = {
        name = "Cane of the Runic Wanderer",
        vendors = {
            { vendor = "Aridormi", zone = "Dalaran" },
        },
    },
    [248345] = {
        name = "Astral Gladiator's Warglaive",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [248346] = {
        name = "Astral Gladiator's Spear",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [248348] = {
        name = "Astral Gladiator's Greatsword",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [248364] = {
        name = "Astral Gladiator's Axe",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [248366] = {
        name = "Astral Gladiator's Mace",
        vendors = {
            { vendor = "Rogurn", zone = "Dornogal" },
        },
    },
    [249145] = {
        name = "Manaforge Raider's Gamma Shockmace",
        vendors = {
            { vendor = "Zo'ropo", zone = "K&apos;aresh" },
        },
    },
    [249147] = {
        name = "Manaforge Raider's Gamma Beamglaive",
        vendors = {
            { vendor = "Zo'ropo", zone = "K&apos;aresh" },
        },
    },
    [249148] = {
        name = "Manaforge Raider's Gamma Lightshiv",
        vendors = {
            { vendor = "Zo'ropo", zone = "K&apos;aresh" },
        },
    },
    [249149] = {
        name = "Manaforge Raider's Gamma Recurve",
        vendors = {
            { vendor = "Zo'ropo", zone = "K&apos;aresh" },
        },
    },
    [249151] = {
        name = "Manaforge Raider's Gamma Spire",
        vendors = {
            { vendor = "Zo'ropo", zone = "K&apos;aresh" },
        },
    },
    [249154] = {
        name = "Manaforge Raider's Gamma Greatsword",
        vendors = {
            { vendor = "Zo'ropo", zone = "K&apos;aresh" },
        },
    },
    [249156] = {
        name = "Manaforge Raider's Gamma Phaseblade",
        vendors = {
            { vendor = "Zo'ropo", zone = "K&apos;aresh" },
        },
    },
    [249157] = {
        name = "Manaforge Raider's Gamma Shard",
        vendors = {
            { vendor = "Zo'ropo", zone = "K&apos;aresh" },
        },
    },
    [249171] = {
        name = "Manaforge Raider's Umbral Beamglaive",
        vendors = {
            { vendor = "Zo'ropo", zone = "K&apos;aresh" },
        },
    },
    [249173] = {
        name = "Manaforge Raider's Cosmic Lightshiv",
        vendors = {
            { vendor = "Zo'ropo", zone = "K&apos;aresh" },
        },
    },
    [249174] = {
        name = "Manaforge Raider's Umbral Lightshiv",
        vendors = {
            { vendor = "Zo'ropo", zone = "K&apos;aresh" },
        },
    },
    [249175] = {
        name = "Manaforge Raider's Devouring Lightshiv",
        vendors = {
            { vendor = "Zo'ropo", zone = "K&apos;aresh" },
        },
    },
    [249177] = {
        name = "Manaforge Raider's Umbral Recurve",
        vendors = {
            { vendor = "Zo'ropo", zone = "K&apos;aresh" },
        },
    },
    [249178] = {
        name = "Manaforge Raider's Devouring Recurve",
        vendors = {
            { vendor = "Zo'ropo", zone = "K&apos;aresh" },
        },
    },
    [249182] = {
        name = "Manaforge Raider's Cosmic Spire",
        vendors = {
            { vendor = "Zo'ropo", zone = "K&apos;aresh" },
        },
    },
    [249184] = {
        name = "Manaforge Raider's Devouring Spire",
        vendors = {
            { vendor = "Zo'ropo", zone = "K&apos;aresh" },
        },
    },
    [249191] = {
        name = "Manaforge Raider's Cosmic Greatsword",
        vendors = {
            { vendor = "Zo'ropo", zone = "K&apos;aresh" },
        },
    },
    [249193] = {
        name = "Manaforge Raider's Devouring Greatsword",
        vendors = {
            { vendor = "Zo'ropo", zone = "K&apos;aresh" },
        },
    },
    [249198] = {
        name = "Manaforge Raider's Umbral Phaseblade",
        vendors = {
            { vendor = "Zo'ropo", zone = "K&apos;aresh" },
        },
    },
    [249199] = {
        name = "Manaforge Raider's Devouring Phaseblade",
        vendors = {
            { vendor = "Zo'ropo", zone = "K&apos;aresh" },
        },
    },
    [249202] = {
        name = "Manaforge Raider's Devouring Shard",
        vendors = {
            { vendor = "Zo'ropo", zone = "K&apos;aresh" },
        },
    },
    [249209] = {
        name = "Manaforge Raider's Cosmic Hatchet",
        vendors = {
            { vendor = "Zo'ropo", zone = "K&apos;aresh" },
        },
    },
    [249214] = {
        name = "Manaforge Raider's Devouring Blade",
        vendors = {
            { vendor = "Zo'ropo", zone = "K&apos;aresh" },
        },
    },
    [249217] = {
        name = "Manaforge Raider's Devouring Starcrusher",
        vendors = {
            { vendor = "Zo'ropo", zone = "K&apos;aresh" },
        },
    },
    [254844] = {
        name = "Hammer of the Righteous Lightbringer",
        vendors = {
            { vendor = "Collector Ta'steld", zone = "Oribos" },
        },
    },
    [254845] = {
        name = "Hammer of the Fallen Lightbringer",
        vendors = {
            { vendor = "Collector Ta'steld", zone = "Oribos" },
        },
    },
    [254853] = {
        name = "Lance of the Architects",
        vendors = {
            { vendor = "Collector Ta'steld", zone = "Oribos" },
        },
    },
    [254856] = {
        name = "Soul Harvester's Scythe",
        vendors = {
            { vendor = "Collector Ta'steld", zone = "Oribos" },
        },
    },
    [254857] = {
        name = "Maw Executioner's Guillotine",
        vendors = {
            { vendor = "Collector Ta'steld", zone = "Oribos" },
        },
    },
    [254858] = {
        name = "Crossbow of the First Ones",
        vendors = {
            { vendor = "Collector Ta'steld", zone = "Oribos" },
        },
    },
    [254860] = {
        name = "Longsword of the First Ones",
        vendors = {
            { vendor = "Collector Ta'steld", zone = "Oribos" },
        },
    },
    [254861] = {
        name = "Sinstone Cleaver",
        vendors = {
            { vendor = "Collector Ta'steld", zone = "Oribos" },
        },
    },
    [254862] = {
        name = "Runeblade of the Maldraxxus Paragon",
        vendors = {
            { vendor = "Collector Ta'steld", zone = "Oribos" },
        },
    },
    [254863] = {
        name = "Staff of the Penitent",
        vendors = {
            { vendor = "Collector Ta'steld", zone = "Oribos" },
        },
    },
    [254866] = {
        name = "Progenitor's Fractured Smasher",
        vendors = {
            { vendor = "Collector Ta'steld", zone = "Oribos" },
        },
    },
    [254872] = {
        name = "Creator's Rod of Origin",
        vendors = {
            { vendor = "Collector Ta'steld", zone = "Oribos" },
        },
    },
    [254873] = {
        name = "Zerith Vibroblade",
        vendors = {
            { vendor = "Collector Ta'steld", zone = "Oribos" },
        },
    },
    [256336] = {
        name = "Kyrian Sky Splitter",
        vendors = {
            { vendor = "Collector Ta'steld", zone = "Oribos" },
        },
    },
    [256337] = {
        name = "The Price Adjuster",
        vendors = {
            { vendor = "Collector Ta'steld", zone = "Oribos" },
        },
    },
    [256338] = {
        name = "Dagger of Forgotten Vows",
        vendors = {
            { vendor = "Collector Ta'steld", zone = "Oribos" },
        },
    },
    [256339] = {
        name = "Anima Drinker's Rapier",
        vendors = {
            { vendor = "Collector Ta'steld", zone = "Oribos" },
        },
    },
    [256340] = {
        name = "Skyguard's Longbow",
        vendors = {
            { vendor = "Collector Ta'steld", zone = "Oribos" },
        },
    },
    [256341] = {
        name = "Faithspire Redeemer",
        vendors = {
            { vendor = "Collector Ta'steld", zone = "Oribos" },
        },
    },
    [256349] = {
        name = "Warglaives of Devotion",
        vendors = {
            { vendor = "Collector Ta'steld", zone = "Oribos" },
        },
    },
    [258527] = {
        name = "Greathammer of the Fallen Lightbringer",
        vendors = {
            { vendor = "Collector Ta'steld", zone = "Oribos" },
        },
    },
    [258528] = {
        name = "Greathammer of the Righteous Lightbringer",
        vendors = {
            { vendor = "Collector Ta'steld", zone = "Oribos" },
        },
    },

    ------------------------------------------------------------
    -- MIDNIGHT
    ------------------------------------------------------------
    [246662] = {
        name = "Ascension Arrestor's Axe",
        vendors = {
            { vendor = "Armorer Kalinovan", zone = "Twilight Highlands" },
        },
    },
    [246663] = {
        name = "Ascension Arrestor's Mace",
        vendors = {
            { vendor = "Armorer Kalinovan", zone = "Twilight Highlands" },
        },
    },
    [246664] = {
        name = "Ascension Arrestor's Cudgel",
        vendors = {
            { vendor = "Armorer Kalinovan", zone = "Twilight Highlands" },
        },
    },
    [246665] = {
        name = "Ascension Arrestor's Spear",
        vendors = {
            { vendor = "Armorer Kalinovan", zone = "Twilight Highlands" },
        },
    },
    [246666] = {
        name = "Ascension Arrestor's Staff",
        vendors = {
            { vendor = "Armorer Kalinovan", zone = "Twilight Highlands" },
        },
    },
    [246667] = {
        name = "Ascension Arrestor's Greatsword",
        vendors = {
            { vendor = "Armorer Kalinovan", zone = "Twilight Highlands" },
        },
    },
    [246670] = {
        name = "Ascension Arrestor's Warglaive",
        vendors = {
            { vendor = "Armorer Kalinovan", zone = "Twilight Highlands" },
        },
    },
    [246995] = {
        name = "Ascension Arrestor's Dagger",
        vendors = {
            { vendor = "Armorer Kalinovan", zone = "Twilight Highlands" },
        },
    },
    [251563] = {
        name = "Ascension Agitator's Warglaive",
        vendors = {
            { vendor = "Armorer Kalinovan", zone = "Twilight Highlands" },
        },
    },
    [251567] = {
        name = "Ascension Agitator's Staff",
        vendors = {
            { vendor = "Armorer Kalinovan", zone = "Twilight Highlands" },
        },
    },
    [251570] = {
        name = "Ascension Agitator's Mace",
        vendors = {
            { vendor = "Armorer Kalinovan", zone = "Twilight Highlands" },
        },
    },
    [251571] = {
        name = "Ascension Agitator's Dagger",
        vendors = {
            { vendor = "Armorer Kalinovan", zone = "Twilight Highlands" },
        },
    },
    [253582] = {
        name = "Fangfin Flailer",
        vendors = {
            { vendor = "Depthdiver Tu'nakit", zone = "Zul&apos;Aman" },
        },
    },
    [255342] = {
        name = "Galactic Aspirant's Dagger",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [255343] = {
        name = "Galactic Aspirant's Mace",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [255345] = {
        name = "Galactic Aspirant's Staff",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [255346] = {
        name = "Galactic Aspirant's Greatsword",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [255348] = {
        name = "Galactic Aspirant's Warglaive",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [255349] = {
        name = "Galactic Aspirant's Scepter",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [255351] = {
        name = "Galactic Aspirant's Bow",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [255352] = {
        name = "Galactic Aspirant's Halberd",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [255353] = {
        name = "Galactic Aspirant's Morningstar",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [255355] = {
        name = "Galactic Aspirant's Chopper",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [255356] = {
        name = "Galactic Aspirant's Wand",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [255619] = {
        name = "Galactic Gladiator's Dagger",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [255620] = {
        name = "Galactic Gladiator's Warglaive",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [255621] = {
        name = "Galactic Gladiator's Polearm",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [255622] = {
        name = "Galactic Gladiator's Staff",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [255623] = {
        name = "Galactic Gladiator's Bow",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [255624] = {
        name = "Galactic Gladiator's Scepter",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [255627] = {
        name = "Galactic Gladiator's Hammer",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [255628] = {
        name = "Galactic Gladiator's Shattered Blade",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [255629] = {
        name = "Galactic Gladiator's Slicer",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [255630] = {
        name = "Galactic Gladiator's Blaster",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [255631] = {
        name = "Galactic Gladiator's Greatstaff",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [255633] = {
        name = "Galactic Gladiator's Greatsword",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [255635] = {
        name = "Galactic Gladiator's Sword",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [255636] = {
        name = "Galactic Gladiator's Gladius",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [255637] = {
        name = "Galactic Gladiator's Battlestaff",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [255639] = {
        name = "Galactic Gladiator's Mace",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [257155] = {
        name = "Grovewarden's Kris",
        vendors = {
            { vendor = "Mothkeeper Wew'tam", zone = "Harandar" },
        },
    },
    [257158] = {
        name = "Grovewarden's Rapier",
        vendors = {
            { vendor = "Mothkeeper Wew'tam", zone = "Harandar" },
        },
    },
    [257161] = {
        name = "Grovewarden's Halberd",
        vendors = {
            { vendor = "Mothkeeper Wew'tam", zone = "Harandar" },
        },
    },
    [260917] = {
        name = "Infinite Broodkeeper's Greatstaff",
        vendors = {
            { vendor = "Xydan", zone = "Valdrakken" },
        },
    },
    [260921] = {
        name = "Khan's Ceremonial Crossbow",
        vendors = {
            { vendor = "Xydan", zone = "Valdrakken" },
        },
    },
    [260923] = {
        name = "Infinite Timeslicer",
        vendors = {
            { vendor = "Xydan", zone = "Valdrakken" },
        },
    },
    [262359] = {
        name = "Djaradin Sparring Spear",
        vendors = {
            { vendor = "Xydan", zone = "Valdrakken" },
        },
    },
    [262361] = {
        name = "Rothide Crusher",
        vendors = {
            { vendor = "Xydan", zone = "Valdrakken" },
        },
    },
    [262363] = {
        name = "Expeditioner's Mallet",
        vendors = {
            { vendor = "Xydan", zone = "Valdrakken" },
        },
    },
    [262364] = {
        name = "Drakonid Stabber",
        vendors = {
            { vendor = "Xydan", zone = "Valdrakken" },
        },
    },
    [262365] = {
        name = "Maruuk Hunting Bow",
        vendors = {
            { vendor = "Xydan", zone = "Valdrakken" },
        },
    },
    [262366] = {
        name = "Headmaster's Emberstaff",
        vendors = {
            { vendor = "Xydan", zone = "Valdrakken" },
        },
    },
    [262368] = {
        name = "Centaur Battleglaive",
        vendors = {
            { vendor = "Xydan", zone = "Valdrakken" },
        },
    },
    [263283] = {
        name = "Grovewarden's Dagger",
        vendors = {
            { vendor = "Mothkeeper Wew'tam", zone = "Harandar" },
        },
    },
    [263284] = {
        name = "Grovewarden's Staff",
        vendors = {
            { vendor = "Mothkeeper Wew'tam", zone = "Harandar" },
        },
    },
    [263285] = {
        name = "Grovewarden's Greatsword",
        vendors = {
            { vendor = "Mothkeeper Wew'tam", zone = "Harandar" },
        },
    },
    [264520] = {
        name = "Warden's Leycrook",
        vendors = {
            { vendor = "Warden of Weeds", zone = "Eversong Woods" },
        },
    },
    [264523] = {
        name = "Hydrafang Blade",
        vendors = {
            { vendor = "Overfester Hydra", zone = "Eversong Woods" },
        },
    },
    [264615] = {
        name = "Hardin's Backup Blade",
        vendors = {
            { vendor = "Hardin Steellock", zone = "Masters&apos; Perch" },
        },
    },
    [264616] = {
        name = "Lightblighted Sapdrinker",
        vendors = {
            { vendor = "Oro'ohna", zone = "Harandar" },
        },
    },
    [264617] = {
        name = "Scourge's Spike",
        vendors = {
            { vendor = "The Snapping Scourge", zone = "Zul&apos;Aman" },
        },
    },
    [264618] = {
        name = "Strangely Eelastic Blade",
        vendors = {
            { vendor = "Depthborn Eelamental", zone = "Zul&apos;Aman" },
        },
    },
    [264619] = {
        name = "Nethersteel Spellblade",
        vendors = {
            { vendor = "Sundereth the Caller", zone = "Voidstorm" },
        },
    },
    [264621] = {
        name = "Bad Zed's Worst Channeler",
        vendors = {
            { vendor = "Bad Zed", zone = "Eversong Woods" },
        },
    },
    [264622] = {
        name = "Grimfang Shank",
        vendors = {
            { vendor = "Rhazul", zone = "Harandar" },
        },
    },
    [264624] = {
        name = "Fang of the Dame",
        vendors = {
            { vendor = "Dame Bloodshed", zone = "Eversong Woods" },
        },
    },
    [264627] = {
        name = "Rav'ik's Spare Hunting Spear",
        vendors = {
            { vendor = "Poacher Rav'ik", zone = "Zul&apos;Aman" },
        },
    },
    [264628] = {
        name = "Spear of Nothingness",
        vendors = {
            { vendor = "Voidseer Orivane", zone = "Voidstorm" },
        },
    },
    [264629] = {
        name = "Coralfang's Hefty Fin",
        vendors = {
            { vendor = "Coralfang", zone = "Eversong Woods" },
        },
    },
    [264630] = {
        name = "Colossal Voidsunderer",
        vendors = {
            { vendor = "Rakshur the Bonegrinder", zone = "Masters&apos; Perch" },
        },
    },
    [264631] = {
        name = "Harak's Skullcutter",
        vendors = {
            { vendor = "Skullcrusher Harak", zone = "Zul&apos;Aman" },
        },
    },
    [264632] = {
        name = "Darkblossom's Crook",
        vendors = {
            { vendor = "Lotus Darkblossom", zone = "Voidstorm" },
        },
    },
    [264633] = {
        name = "Treetop Battlestave",
        vendors = {
            { vendor = "Treetop", zone = "Harandar" },
        },
    },
    [264635] = {
        name = "Stumpy's Stump",
        vendors = {
            { vendor = "Stumpy", zone = "Harandar" },
        },
    },
    [264637] = {
        name = "Cosmic Hunter's Glaive",
        vendors = {
            { vendor = "Aeonelle Blackstar", zone = "Voidstorm" },
        },
    },
    [264638] = {
        name = "Fangs of the Invader",
        vendors = {
            { vendor = "The Devouring Invader", zone = "Zul&apos;Aman" },
        },
    },
    [264639] = {
        name = "Razorfang Hacker",
        vendors = {
            { vendor = "Serrasa", zone = "Harandar" },
        },
    },
    [264642] = {
        name = "Carving Voidscythe",
        vendors = {
            { vendor = "Territorial Voidscythe", zone = "Voidstorm" },
        },
    },
    [264645] = {
        name = "Aged Farstrider Bow",
        vendors = {
            { vendor = "Lady Liminus", zone = "Eversong Woods" },
        },
    },
    [264646] = {
        name = "Specimen Sinew Longbow",
        vendors = {
            { vendor = "Tremora", zone = "Voidstorm" },
        },
    },
    [264647] = {
        name = "Cre'van's Punisher",
        vendors = {
            { vendor = "Cre'van", zone = "Eversong Woods" },
        },
    },
    [264648] = {
        name = "Verminscale Gavel",
        vendors = {
            { vendor = "Tiny Vermin", zone = "Zul&apos;Aman" },
        },
    },
    [264650] = {
        name = "Truthspreader's Truth Spreader",
        vendors = {
            { vendor = "Tallcap the Truthspreader", zone = "Harandar" },
        },
    },
    [264651] = {
        name = "Resonating Traumatizer",
        vendors = {
            { vendor = "The Many-Broken", zone = "Voidstorm" },
        },
    },
    [264910] = {
        name = "Shell-Cleaving Poleaxe",
        vendors = {
            { vendor = "Waverly", zone = "Eversong Woods" },
        },
    },
    [264911] = {
        name = "Forest Hunter's Arc",
        vendors = {
            { vendor = "Poacher Rav'ik", zone = "Zul&apos;Aman" },
        },
    },
    [264912] = {
        name = "Void-Channeler's Spire",
        vendors = {
            { vendor = "Far'thana the Mad", zone = "Voidstorm" },
        },
    },
    [264913] = {
        name = "Focused Netherslicer",
        vendors = {
            { vendor = "Far'thana the Mad", zone = "Voidstorm" },
        },
    },
    [264996] = {
        name = "Gilded Sunlance",
        vendors = {
            { vendor = "Neriv", zone = "Eversong Woods" },
        },
    },
    [265601] = {
        name = "Galactic Gladiator's Greataxe",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [265614] = {
        name = "Galactic Gladiator's Polearm",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [265615] = {
        name = "Galactic Gladiator's Staff",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [265616] = {
        name = "Galactic Gladiator's Bow",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [265621] = {
        name = "Galactic Gladiator's Shattered Blade",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [265623] = {
        name = "Galactic Gladiator's Slicer",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [265627] = {
        name = "Galactic Gladiator's Greatsword",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [265628] = {
        name = "Galactic Gladiator's Morningstar",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [265629] = {
        name = "Galactic Gladiator's Sword",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [265638] = {
        name = "Galactic Gladiator's Greataxe",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [267371] = {
        name = "Galactic Gladiator's Ripper",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [267417] = {
        name = "Galactic Aspirant's Talons",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [269897] = {
        name = "Ascension Arrestor's Crossbow",
        vendors = {
            { vendor = "Armorer Kalinovan", zone = "Twilight Highlands" },
        },
    },
    [269898] = {
        name = "Ascension Agitator's Crossbow",
        vendors = {
            { vendor = "Armorer Kalinovan", zone = "Twilight Highlands" },
        },
    },
    [270447] = {
        name = "Venomous Aspirant's Claymore",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [270448] = {
        name = "Venomous Aspirant's Warblade",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [270449] = {
        name = "Venomous Aspirant's Greatblade",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [270450] = {
        name = "Venomous Aspirant's Stave",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [270451] = {
        name = "Venomous Aspirant's Polearm",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [270452] = {
        name = "Venomous Aspirant's Spear",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [270453] = {
        name = "Venomous Aspirant's Bow",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [270454] = {
        name = "Venomous Aspirant's Warglaive",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [270455] = {
        name = "Venomous Aspirant's Wand",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [270456] = {
        name = "Venomous Aspirant's Spellblade",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [270457] = {
        name = "Venomous Aspirant's Sword",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [270458] = {
        name = "Venomous Aspirant's Blade",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [270459] = {
        name = "Venomous Aspirant's Crusher",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [270460] = {
        name = "Venomous Aspirant's Cudgel",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [270461] = {
        name = "Venomous Aspirant's Mace",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [270464] = {
        name = "Venomous Aspirant's Dagger",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [270465] = {
        name = "Venomous Aspirant's Shank",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [270466] = {
        name = "Venomous Aspirant's Chopper",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [270467] = {
        name = "Venomous Aspirant's Splitter",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [270552] = {
        name = "Venomous Aspirant's Battleaxe",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [270553] = {
        name = "Venomous Aspirant's Cleaver",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [270554] = {
        name = "Venomous Aspirant's Reaper",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [270821] = {
        name = "Venomous Gladiator's Shank",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [270822] = {
        name = "Venomous Gladiator's Spine",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [270823] = {
        name = "Venomous Gladiator's Incisors",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [270824] = {
        name = "Venomous Gladiator's Rippers",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [270825] = {
        name = "Venomous Gladiator's Crusher",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [270826] = {
        name = "Venomous Gladiator's Mace",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [270827] = {
        name = "Venomous Gladiator's Cudgel",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [270828] = {
        name = "Venomous Gladiator's Chopper",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [270829] = {
        name = "Venomous Gladiator's Splitter",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [270830] = {
        name = "Venomous Gladiator's Slicer",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [270831] = {
        name = "Venomous Gladiator's Blade",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [270832] = {
        name = "Venomous Gladiator's Sword",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [270833] = {
        name = "Venomous Gladiator's Spellblade",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [270834] = {
        name = "Venomous Gladiator's Edge",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [270835] = {
        name = "Venomous Gladiator's Battleaxe",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [270836] = {
        name = "Venomous Gladiator's Cleaver",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [270837] = {
        name = "Venomous Gladiator's Reaper",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [270838] = {
        name = "Venomous Gladiator's Bow",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [270839] = {
        name = "Venomous Gladiator's Spitter",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [270843] = {
        name = "Venomous Gladiator's Spear",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [270844] = {
        name = "Venomous Gladiator's Spike",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [270845] = {
        name = "Venomous Gladiator's Staff",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [270846] = {
        name = "Venomous Gladiator's Stave",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [270851] = {
        name = "Venomous Gladiator's Claymore",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [270852] = {
        name = "Venomous Gladiator's Warblade",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [270853] = {
        name = "Venomous Gladiator's Greatblade",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },
    [272316] = {
        name = "Spellbreaker's Bladelance",
        vendors = {
            { vendor = "Gamesmaster Fleurian", zone = "Silvermoon City" },
        },
    },
    [272317] = {
        name = "Spellbreaker's Phoenixglaive",
        vendors = {
            { vendor = "Gamesmaster Fleurian", zone = "Silvermoon City" },
        },
    },
    [272318] = {
        name = "Spellbreaker's Phoenixblade",
        vendors = {
            { vendor = "Gamesmaster Fleurian", zone = "Silvermoon City" },
        },
    },
    [272320] = {
        name = "Nullbeacon Rift Channeler",
        vendors = {
            { vendor = "Gamesmaster Fleurian", zone = "Silvermoon City" },
        },
    },
    [272321] = {
        name = "Arcane Ranger's Spellbow",
        vendors = {
            { vendor = "Gamesmaster Fleurian", zone = "Silvermoon City" },
        },
    },
    [272336] = {
        name = "Nullbeacon Rift Smasher",
        vendors = {
            { vendor = "Gamesmaster Fleurian", zone = "Silvermoon City" },
        },
    },
    [272337] = {
        name = "Mage Guard's Spellblade",
        vendors = {
            { vendor = "Gamesmaster Fleurian", zone = "Silvermoon City" },
        },
    },
    [272338] = {
        name = "Mage Guard's Spellsteel",
        vendors = {
            { vendor = "Gamesmaster Fleurian", zone = "Silvermoon City" },
        },
    },
    [272961] = {
        name = "Spellbreaker's Bladestaff",
        vendors = {
            { vendor = "Gamesmaster Fleurian", zone = "Silvermoon City" },
        },
    },
    [274796] = {
        name = "Envenomed Deathblade",
        vendors = {
            { vendor = "Second Mate Sluggs", zone = "The Coiled Isle" },
        },
    },
    [274802] = {
        name = "Envenomed Gavel",
        vendors = {
            { vendor = "Second Mate Sluggs", zone = "The Coiled Isle" },
        },
    },
    [274814] = {
        name = "Envenomed Game Ripper",
        vendors = {
            { vendor = "Second Mate Sluggs", zone = "The Coiled Isle" },
        },
    },
    [276166] = {
        name = "Twin-Headed Twinblade",
        vendors = {
            { vendor = "Looming Mutagenitor", zone = "The Coiled Isle" },
        },
    },
    [276167] = {
        name = "Ori'kassi's Lance",
        vendors = {
            { vendor = "Venom Lancer Ori'kassi", zone = "The Coiled Isle" },
        },
    },
    [277292] = {
        name = "Venomous Gladiator's Rib",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [277293] = {
        name = "Venomous Gladiator's Warglaive",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [277294] = {
        name = "Venomous Gladiator's Polearm",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [277295] = {
        name = "Venomous Gladiator's Greatstaff",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [277296] = {
        name = "Venomous Gladiator's Longbow",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [277300] = {
        name = "Venomous Gladiator's Dagger",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [277301] = {
        name = "Venomous Gladiator's Fangs",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [277302] = {
        name = "Venomous Gladiator's Blaster",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [277303] = {
        name = "Venomous Gladiator's Greatsword",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [277304] = {
        name = "Venomous Gladiator's Smasher",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [277305] = {
        name = "Venomous Gladiator's Sword",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [277306] = {
        name = "Venomous Gladiator's Barb",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [277307] = {
        name = "Venomous Gladiator's Basher",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [277308] = {
        name = "Venomous Gladiator's Greataxe",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [277312] = {
        name = "Venomous Gladiator's Axe",
        vendors = {
            { vendor = "Soryn", zone = "Silvermoon City" },
        },
    },
    [277326] = {
        name = "Axe of the Amani",
        vendors = {
            { vendor = "Jan'sari the Watchful", zone = "The Coiled Isle" },
        },
    },
    [277951] = {
        name = "Venomous Aspirant's Slicer",
        vendors = {
            { vendor = "Captain Dawnrunner", zone = "Silvermoon City" },
        },
    },
    [280689] = {
        name = "Big Mon's Big Spear",
        vendors = {
            { vendor = "Big Mon", zone = "The Coiled Isle" },
        },
    },
    [280690] = {
        name = "Bow of the Snapper",
        vendors = {
            { vendor = "Lockjaw", zone = "The Coiled Isle" },
        },
    },
    [280691] = {
        name = "Dagger of the Slithering Ritual",
        vendors = {
            { vendor = "Hisstara", zone = "The Coiled Isle" },
        },
    },
    [280692] = {
        name = "Plunderer's Pummeler",
        vendors = {
            { vendor = "Farthik the Plunderer", zone = "The Coiled Isle" },
        },
    },
    [280693] = {
        name = "Staff of All-Knowing",
        vendors = {
            { vendor = "Nar'zira", zone = "The Coiled Isle" },
        },
    },
    [280694] = {
        name = "Blade of the Forgotten",
        vendors = {
            { vendor = "Kari'zah the Forgotten", zone = "The Coiled Isle" },
        },
    },
    [280695] = {
        name = "Skully's Skullcleaver",
        vendors = {
            { vendor = "Coin-Eye Skully", zone = "The Coiled Isle and" },
        },
    },
    [284846] = {
        name = "Venomous Gladiator's Smasher",
        vendors = {
            { vendor = "Irissa Bloodstar", zone = "Silvermoon City" },
        },
    },

    ------------------------------------------------------------
    -- CATACLYSM (gap2 pass)
    ------------------------------------------------------------
    [52532] = { name = "Worn Wood Chopper", vendors = { { vendor = "Gerik Koen", zone = "Stormwind City" }, { vendor = "Galthuk", zone = "Orgrimmar" }, { vendor = "Ealyshia Dewwhisper", zone = "Darnassus" }, { vendor = "Geoffrey Hartwell", zone = "Undercity" }, { vendor = "Ohanko", zone = "Thunder Bluff" } } },
    [52557] = { name = "Battleworn Hammer", vendors = { { vendor = "Gerik Koen", zone = "Stormwind City" }, { vendor = "Galthuk", zone = "Orgrimmar" }, { vendor = "Ealyshia Dewwhisper", zone = "Darnassus" }, { vendor = "Geoffrey Hartwell", zone = "Undercity" }, { vendor = "Ohanko", zone = "Thunder Bluff" } } },
    [57243] = { name = "Worn Spear", vendors = { { vendor = "Gerik Koen", zone = "Stormwind City" }, { vendor = "Galthuk", zone = "Orgrimmar" }, { vendor = "Ealyshia Dewwhisper", zone = "Darnassus" }, { vendor = "Geoffrey Hartwell", zone = "Undercity" }, { vendor = "Ohanko", zone = "Thunder Bluff" } } },
    [57244] = { name = "Warder's Spear", vendors = { { vendor = "Gerik Koen", zone = "Stormwind City" }, { vendor = "Galthuk", zone = "Orgrimmar" }, { vendor = "Ealyshia Dewwhisper", zone = "Darnassus" }, { vendor = "Geoffrey Hartwell", zone = "Undercity" }, { vendor = "Ohanko", zone = "Thunder Bluff" } } },
    [57928] = { name = "Windslicer", vendors = { { vendor = "Toren Landow", zone = "Stormwind City" }, { vendor = "Rugok", zone = "Orgrimmar" } } },
    [57929] = { name = "Dawnblaze Blade", vendors = { { vendor = "Toren Landow", zone = "Stormwind City" }, { vendor = "Rugok", zone = "Orgrimmar" } } },
    [60820] = { name = "Stone Hearth Maul", vendors = { { vendor = "Rocky Cliffedge", zone = "Deepholm" } } },
    [60821] = { name = "Earthen Mallet", vendors = { { vendor = "Rocky Cliffedge", zone = "Deepholm" } } },
    [60824] = { name = "Stone Trogg Crusher", vendors = { { vendor = "Rocky Cliffedge", zone = "Deepholm" } } },
    [60826] = { name = "Stone Hearth Splitter", vendors = { { vendor = "Rocky Cliffedge", zone = "Deepholm" } } },
    [60827] = { name = "Hearth Defender's Axe", vendors = { { vendor = "Rocky Cliffedge", zone = "Deepholm" } } },
    [60828] = { name = "Earthen Champion's Cleaver", vendors = { { vendor = "Rocky Cliffedge", zone = "Deepholm" } } },
    [60829] = { name = "Geomaster Staff", vendors = { { vendor = "Rocky Cliffedge", zone = "Deepholm" } } },
    [60830] = { name = "Rockmagus Stave", vendors = { { vendor = "Rocky Cliffedge", zone = "Deepholm" } } },
    [61324] = { name = "Vicious Gladiator's Cleaver", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Blazzek the Biter", zone = "Tanaris" } } },
    [61325] = { name = "Vicious Gladiator's Hacker", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" } } },
    [61326] = { name = "Vicious Gladiator's Decapitator", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" } } },
    [61327] = { name = "Vicious Gladiator's Shanker", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Blazzek the Biter", zone = "Tanaris" } } },
    [61328] = { name = "Vicious Gladiator's Shiv", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Blazzek the Biter", zone = "Tanaris" } } },
    [61329] = { name = "Vicious Gladiator's Spellblade", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Blazzek the Biter", zone = "Tanaris" } } },
    [61330] = { name = "Vicious Gladiator's Ripper", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Blazzek the Biter", zone = "Tanaris" } } },
    [61331] = { name = "Vicious Gladiator's Fleshslicer", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Blazzek the Biter", zone = "Tanaris" } } },
    [61332] = { name = "Vicious Gladiator's Slasher", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Blazzek the Biter", zone = "Tanaris" } } },
    [61333] = { name = "Vicious Gladiator's Right Render", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Blazzek the Biter", zone = "Tanaris" } } },
    [61335] = { name = "Vicious Gladiator's Pummeler", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Blazzek the Biter", zone = "Tanaris" } } },
    [61336] = { name = "Vicious Gladiator's Bonecracker", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" } } },
    [61338] = { name = "Vicious Gladiator's Gavel", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" } } },
    [61339] = { name = "Vicious Gladiator's Bonegrinder", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" } } },
    [61340] = { name = "Vicious Gladiator's Pike", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Blazzek the Biter", zone = "Tanaris" } } },
    [61341] = { name = "Vicious Gladiator's Battle Staff", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" } } },
    [61342] = { name = "Vicious Gladiator's Energy Staff", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Blazzek the Biter", zone = "Tanaris" } } },
    [61343] = { name = "Vicious Gladiator's Staff", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Blazzek the Biter", zone = "Tanaris" } } },
    [61344] = { name = "Vicious Gladiator's Slicer", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" } } },
    [61345] = { name = "Vicious Gladiator's Quickblade", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Blazzek the Biter", zone = "Tanaris" } } },
    [61346] = { name = "Vicious Gladiator's Greatsword", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" } } },
    [61350] = { name = "Vicious Gladiator's Touch of Defeat", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Blazzek the Biter", zone = "Tanaris" } } },
    [61351] = { name = "Vicious Gladiator's Baton of Light", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Blazzek the Biter", zone = "Tanaris" } } },
    [61353] = { name = "Vicious Gladiator's Longbow", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Blazzek the Biter", zone = "Tanaris" } } },
    [61355] = { name = "Vicious Gladiator's Heavy Crossbow", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Blazzek the Biter", zone = "Tanaris" } } },
    [62454] = { name = "Blade of the Fearless", vendors = { { vendor = "Pogg", zone = "Tol Barad Peninsula" } } },
    [62473] = { name = "Blade of the Fearless", vendors = { { vendor = "Quartermaster Brazie", zone = "Tol Barad Peninsula" } } },
    [62476] = { name = "Ravening Slicer", vendors = { { vendor = "Quartermaster Brazie", zone = "Tol Barad Peninsula" } } },
    [62477] = { name = "Insidious Staff", vendors = { { vendor = "Quartermaster Brazie", zone = "Tol Barad Peninsula" } } },
    [62478] = { name = "Shimmering Morningstar", vendors = { { vendor = "Quartermaster Brazie", zone = "Tol Barad Peninsula" } } },
    [68739] = { name = "Darkheart Hacker", vendors = { { vendor = "Quartermaster Brazie", zone = "Tol Barad Peninsula" } } },
    [70211] = { name = "Ruthless Gladiator's Cleaver", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Knight-Lieutenant T'Maire Sydes", zone = "Stormwind City" }, { vendor = "Blood Guard Zar'shi", zone = "Orgrimmar" }, { vendor = "Ecton Brasstumbler", zone = "Tanaris" } } },
    [70212] = { name = "Ruthless Gladiator's Hacker", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Knight-Lieutenant T'Maire Sydes", zone = "Stormwind City" }, { vendor = "Blood Guard Zar'shi", zone = "Orgrimmar" }, { vendor = "Ecton Brasstumbler", zone = "Tanaris" } } },
    [70213] = { name = "Ruthless Gladiator's Decapitator", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Knight-Lieutenant T'Maire Sydes", zone = "Stormwind City" }, { vendor = "Blood Guard Zar'shi", zone = "Orgrimmar" }, { vendor = "Ecton Brasstumbler", zone = "Tanaris" } } },
    [70214] = { name = "Ruthless Gladiator's Shanker", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Knight-Lieutenant T'Maire Sydes", zone = "Stormwind City" }, { vendor = "Blood Guard Zar'shi", zone = "Orgrimmar" }, { vendor = "Ecton Brasstumbler", zone = "Tanaris" } } },
    [70215] = { name = "Ruthless Gladiator's Shiv", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Knight-Lieutenant T'Maire Sydes", zone = "Stormwind City" }, { vendor = "Blood Guard Zar'shi", zone = "Orgrimmar" }, { vendor = "Ecton Brasstumbler", zone = "Tanaris" } } },
    [70216] = { name = "Ruthless Gladiator's Spellblade", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Knight-Lieutenant T'Maire Sydes", zone = "Stormwind City" }, { vendor = "Blood Guard Zar'shi", zone = "Orgrimmar" }, { vendor = "Ecton Brasstumbler", zone = "Tanaris" } } },
    [70217] = { name = "Ruthless Gladiator's Ripper", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Knight-Lieutenant T'Maire Sydes", zone = "Stormwind City" }, { vendor = "Blood Guard Zar'shi", zone = "Orgrimmar" }, { vendor = "Ecton Brasstumbler", zone = "Tanaris" } } },
    [70218] = { name = "Ruthless Gladiator's Fleshslicer", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Knight-Lieutenant T'Maire Sydes", zone = "Stormwind City" }, { vendor = "Blood Guard Zar'shi", zone = "Orgrimmar" }, { vendor = "Ecton Brasstumbler", zone = "Tanaris" } } },
    [70219] = { name = "Ruthless Gladiator's Slasher", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Knight-Lieutenant T'Maire Sydes", zone = "Stormwind City" }, { vendor = "Blood Guard Zar'shi", zone = "Orgrimmar" }, { vendor = "Ecton Brasstumbler", zone = "Tanaris" } } },
    [70220] = { name = "Ruthless Gladiator's Right Render", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Knight-Lieutenant T'Maire Sydes", zone = "Stormwind City" }, { vendor = "Blood Guard Zar'shi", zone = "Orgrimmar" }, { vendor = "Ecton Brasstumbler", zone = "Tanaris" } } },
    [70221] = { name = "Ruthless Gladiator's Pummeler", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Knight-Lieutenant T'Maire Sydes", zone = "Stormwind City" }, { vendor = "Blood Guard Zar'shi", zone = "Orgrimmar" }, { vendor = "Ecton Brasstumbler", zone = "Tanaris" } } },
    [70222] = { name = "Ruthless Gladiator's Bonecracker", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Knight-Lieutenant T'Maire Sydes", zone = "Stormwind City" }, { vendor = "Blood Guard Zar'shi", zone = "Orgrimmar" }, { vendor = "Ecton Brasstumbler", zone = "Tanaris" } } },
    [70223] = { name = "Ruthless Gladiator's Gavel", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Knight-Lieutenant T'Maire Sydes", zone = "Stormwind City" }, { vendor = "Blood Guard Zar'shi", zone = "Orgrimmar" }, { vendor = "Ecton Brasstumbler", zone = "Tanaris" } } },
    [70224] = { name = "Ruthless Gladiator's Bonegrinder", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Knight-Lieutenant T'Maire Sydes", zone = "Stormwind City" }, { vendor = "Blood Guard Zar'shi", zone = "Orgrimmar" }, { vendor = "Ecton Brasstumbler", zone = "Tanaris" } } },
    [70225] = { name = "Ruthless Gladiator's Pike", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Knight-Lieutenant T'Maire Sydes", zone = "Stormwind City" }, { vendor = "Blood Guard Zar'shi", zone = "Orgrimmar" }, { vendor = "Ecton Brasstumbler", zone = "Tanaris" } } },
    [70226] = { name = "Ruthless Gladiator's Battle Staff", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Knight-Lieutenant T'Maire Sydes", zone = "Stormwind City" }, { vendor = "Blood Guard Zar'shi", zone = "Orgrimmar" }, { vendor = "Ecton Brasstumbler", zone = "Tanaris" } } },
    [70227] = { name = "Ruthless Gladiator's Energy Staff", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Knight-Lieutenant T'Maire Sydes", zone = "Stormwind City" }, { vendor = "Blood Guard Zar'shi", zone = "Orgrimmar" }, { vendor = "Ecton Brasstumbler", zone = "Tanaris" } } },
    [70228] = { name = "Ruthless Gladiator's Staff", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Knight-Lieutenant T'Maire Sydes", zone = "Stormwind City" }, { vendor = "Blood Guard Zar'shi", zone = "Orgrimmar" }, { vendor = "Ecton Brasstumbler", zone = "Tanaris" } } },
    [70229] = { name = "Ruthless Gladiator's Slicer", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Knight-Lieutenant T'Maire Sydes", zone = "Stormwind City" }, { vendor = "Blood Guard Zar'shi", zone = "Orgrimmar" }, { vendor = "Ecton Brasstumbler", zone = "Tanaris" } } },
    [70230] = { name = "Ruthless Gladiator's Quickblade", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Knight-Lieutenant T'Maire Sydes", zone = "Stormwind City" }, { vendor = "Blood Guard Zar'shi", zone = "Orgrimmar" }, { vendor = "Ecton Brasstumbler", zone = "Tanaris" } } },
    [70231] = { name = "Ruthless Gladiator's Greatsword", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Knight-Lieutenant T'Maire Sydes", zone = "Stormwind City" }, { vendor = "Blood Guard Zar'shi", zone = "Orgrimmar" }, { vendor = "Ecton Brasstumbler", zone = "Tanaris" } } },
    [70235] = { name = "Ruthless Gladiator's Baton of Light", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Knight-Lieutenant T'Maire Sydes", zone = "Stormwind City" }, { vendor = "Blood Guard Zar'shi", zone = "Orgrimmar" }, { vendor = "Ecton Brasstumbler", zone = "Tanaris" } } },
    [70236] = { name = "Ruthless Gladiator's Longbow", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Knight-Lieutenant T'Maire Sydes", zone = "Stormwind City" }, { vendor = "Blood Guard Zar'shi", zone = "Orgrimmar" }, { vendor = "Ecton Brasstumbler", zone = "Tanaris" } } },
    [70237] = { name = "Ruthless Gladiator's Rifle", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Knight-Lieutenant T'Maire Sydes", zone = "Stormwind City" }, { vendor = "Blood Guard Zar'shi", zone = "Orgrimmar" }, { vendor = "Ecton Brasstumbler", zone = "Tanaris" } } },
    [70238] = { name = "Ruthless Gladiator's Heavy Crossbow", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Knight-Lieutenant T'Maire Sydes", zone = "Stormwind City" }, { vendor = "Blood Guard Zar'shi", zone = "Orgrimmar" }, { vendor = "Ecton Brasstumbler", zone = "Tanaris" } } },
    [71150] = { name = "Scorchvine Wand", vendors = { { vendor = "Magatha Silverton", zone = "Stormwind City" }, { vendor = "Gunra", zone = "Orgrimmar" } } },
    [71151] = { name = "Trail of Embers", vendors = { { vendor = "Magatha Silverton", zone = "Stormwind City" }, { vendor = "Gunra", zone = "Orgrimmar" } } },
    [71557] = { name = "Ranseur of Hatred", vendors = { { vendor = "Lurah Wrathvine", zone = "Mount Hyjal" } } },
    [71558] = { name = "Lava Bolt Crossbow", vendors = { { vendor = "Lurah Wrathvine", zone = "Mount Hyjal" } } },
    [71560] = { name = "Chelley's Sterilized Scalpel", vendors = { { vendor = "Lurah Wrathvine", zone = "Mount Hyjal" } } },
    [71562] = { name = "Obsidium Cleaver", vendors = { { vendor = "Lurah Wrathvine", zone = "Mount Hyjal" } } },
    [71575] = { name = "Trail of Embers", vendors = { { vendor = "Lurah Wrathvine", zone = "Mount Hyjal" } } },
    [71579] = { name = "Scorchvine Wand", vendors = { { vendor = "Lurah Wrathvine", zone = "Mount Hyjal" } } },
    [72980] = { name = "Valiant Sword", vendors = { { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Iris Moondreamer", zone = "Mount Hyjal" } } },
    [72981] = { name = "Zealous Sword", vendors = { { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Iris Moondreamer", zone = "Mount Hyjal" } } },
    [72989] = { name = "Zealous Scepter", vendors = { { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Iris Moondreamer", zone = "Mount Hyjal" } } },
    [72990] = { name = "Ebonsoul Hammer", vendors = { { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Iris Moondreamer", zone = "Mount Hyjal" } } },
    [72991] = { name = "Ebonsoul Maul", vendors = { { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Iris Moondreamer", zone = "Mount Hyjal" } } },
    [72992] = { name = "Valiant Greatsword", vendors = { { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Iris Moondreamer", zone = "Mount Hyjal" } } },
    [72993] = { name = "Zealous Greatsword", vendors = { { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Iris Moondreamer", zone = "Mount Hyjal" } } },
    [72994] = { name = "Ebonsoul Blade", vendors = { { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Iris Moondreamer", zone = "Mount Hyjal" } } },
    [72995] = { name = "Shadowstalking Dagger", vendors = { { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Iris Moondreamer", zone = "Mount Hyjal" } } },
    [72997] = { name = "Shadowstalking Sword", vendors = { { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Iris Moondreamer", zone = "Mount Hyjal" } } },
    [72998] = { name = "Stormbinder Mace", vendors = { { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Iris Moondreamer", zone = "Mount Hyjal" } } },
    [72999] = { name = "Valiant Maul", vendors = { { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Iris Moondreamer", zone = "Mount Hyjal" } } },
    [73000] = { name = "Beastsoul Rifle", vendors = { { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Iris Moondreamer", zone = "Mount Hyjal" } } },
    [73002] = { name = "Stormbinder Scepter", vendors = { { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Iris Moondreamer", zone = "Mount Hyjal" } } },
    [73003] = { name = "Stormbinder Gavel", vendors = { { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Iris Moondreamer", zone = "Mount Hyjal" } } },
    [73006] = { name = "Magesoul Staff", vendors = { { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Iris Moondreamer", zone = "Mount Hyjal" } } },
    [73007] = { name = "Dreadsoul Staff", vendors = { { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Iris Moondreamer", zone = "Mount Hyjal" } } },
    [73008] = { name = "Seraphic Staff", vendors = { { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Iris Moondreamer", zone = "Mount Hyjal" } } },
    [73009] = { name = "Seraphic Stave", vendors = { { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Iris Moondreamer", zone = "Mount Hyjal" } } },
    [73010] = { name = "Wildsoul Stave", vendors = { { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Iris Moondreamer", zone = "Mount Hyjal" } } },
    [73011] = { name = "Wildsoul Staff", vendors = { { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Iris Moondreamer", zone = "Mount Hyjal" } } },
    [73012] = { name = "Wildsoul Spear", vendors = { { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Iris Moondreamer", zone = "Mount Hyjal" } } },
    [73325] = { name = "Magesoul Wand", vendors = { { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Iris Moondreamer", zone = "Mount Hyjal" } } },
    [73326] = { name = "Dreadsoul Wand", vendors = { { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Iris Moondreamer", zone = "Mount Hyjal" } } },
    [73336] = { name = "Seraphic Wand", vendors = { { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Iris Moondreamer", zone = "Mount Hyjal" } } },
    [73447] = { name = "Cataclysmic Gladiator's Slicer", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Captain Dirgehammer", zone = "Stormwind City" }, { vendor = "Sergeant Thunderhorn", zone = "Orgrimmar" }, { vendor = "Evee Copperspring", zone = "Tanaris" } } },
    [73448] = { name = "Cataclysmic Gladiator's Bonecracker", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Captain Dirgehammer", zone = "Stormwind City" }, { vendor = "Sergeant Thunderhorn", zone = "Orgrimmar" }, { vendor = "Evee Copperspring", zone = "Tanaris" } } },
    [73449] = { name = "Cataclysmic Gladiator's Hacker", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Captain Dirgehammer", zone = "Stormwind City" }, { vendor = "Sergeant Thunderhorn", zone = "Orgrimmar" }, { vendor = "Evee Copperspring", zone = "Tanaris" } } },
    [73451] = { name = "Cataclysmic Gladiator's Slasher", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Captain Dirgehammer", zone = "Stormwind City" }, { vendor = "Sergeant Thunderhorn", zone = "Orgrimmar" }, { vendor = "Evee Copperspring", zone = "Tanaris" } } },
    [73452] = { name = "Cataclysmic Gladiator's Right Render", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Captain Dirgehammer", zone = "Stormwind City" }, { vendor = "Sergeant Thunderhorn", zone = "Orgrimmar" }, { vendor = "Evee Copperspring", zone = "Tanaris" } } },
    [73453] = { name = "Cataclysmic Gladiator's Fleshslicer", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Captain Dirgehammer", zone = "Stormwind City" }, { vendor = "Sergeant Thunderhorn", zone = "Orgrimmar" }, { vendor = "Evee Copperspring", zone = "Tanaris" } } },
    [73454] = { name = "Cataclysmic Gladiator's Ripper", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Captain Dirgehammer", zone = "Stormwind City" }, { vendor = "Sergeant Thunderhorn", zone = "Orgrimmar" }, { vendor = "Evee Copperspring", zone = "Tanaris" } } },
    [73455] = { name = "Cataclysmic Gladiator's Shanker", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Captain Dirgehammer", zone = "Stormwind City" }, { vendor = "Sergeant Thunderhorn", zone = "Orgrimmar" }, { vendor = "Evee Copperspring", zone = "Tanaris" } } },
    [73456] = { name = "Cataclysmic Gladiator's Pike", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Captain Dirgehammer", zone = "Stormwind City" }, { vendor = "Sergeant Thunderhorn", zone = "Orgrimmar" }, { vendor = "Evee Copperspring", zone = "Tanaris" } } },
    [73457] = { name = "Cataclysmic Gladiator's Energy Staff", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Captain Dirgehammer", zone = "Stormwind City" }, { vendor = "Sergeant Thunderhorn", zone = "Orgrimmar" }, { vendor = "Evee Copperspring", zone = "Tanaris" } } },
    [73459] = { name = "Cataclysmic Gladiator's Gavel", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Captain Dirgehammer", zone = "Stormwind City" }, { vendor = "Sergeant Thunderhorn", zone = "Orgrimmar" }, { vendor = "Evee Copperspring", zone = "Tanaris" } } },
    [73460] = { name = "Cataclysmic Gladiator's Rifle", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Captain Dirgehammer", zone = "Stormwind City" }, { vendor = "Sergeant Thunderhorn", zone = "Orgrimmar" }, { vendor = "Evee Copperspring", zone = "Tanaris" } } },
    [73461] = { name = "Cataclysmic Gladiator's Shiv", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Captain Dirgehammer", zone = "Stormwind City" }, { vendor = "Sergeant Thunderhorn", zone = "Orgrimmar" }, { vendor = "Evee Copperspring", zone = "Tanaris" } } },
    [73462] = { name = "Cataclysmic Gladiator's Staff", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Captain Dirgehammer", zone = "Stormwind City" }, { vendor = "Sergeant Thunderhorn", zone = "Orgrimmar" }, { vendor = "Evee Copperspring", zone = "Tanaris" } } },
    [73463] = { name = "Cataclysmic Gladiator's Heavy Crossbow", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Captain Dirgehammer", zone = "Stormwind City" }, { vendor = "Sergeant Thunderhorn", zone = "Orgrimmar" }, { vendor = "Evee Copperspring", zone = "Tanaris" } } },
    [73464] = { name = "Cataclysmic Gladiator's Touch of Defeat", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Captain Dirgehammer", zone = "Stormwind City" }, { vendor = "Sergeant Thunderhorn", zone = "Orgrimmar" }, { vendor = "Evee Copperspring", zone = "Tanaris" } } },
    [73466] = { name = "Cataclysmic Gladiator's Battle Staff", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Captain Dirgehammer", zone = "Stormwind City" }, { vendor = "Sergeant Thunderhorn", zone = "Orgrimmar" }, { vendor = "Evee Copperspring", zone = "Tanaris" } } },
    [73467] = { name = "Cataclysmic Gladiator's Spellblade", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Captain Dirgehammer", zone = "Stormwind City" }, { vendor = "Sergeant Thunderhorn", zone = "Orgrimmar" }, { vendor = "Evee Copperspring", zone = "Tanaris" } } },
    [73470] = { name = "Cataclysmic Gladiator's Longbow", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Captain Dirgehammer", zone = "Stormwind City" }, { vendor = "Sergeant Thunderhorn", zone = "Orgrimmar" }, { vendor = "Evee Copperspring", zone = "Tanaris" } } },
    [73472] = { name = "Cataclysmic Gladiator's Quickblade", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Captain Dirgehammer", zone = "Stormwind City" }, { vendor = "Sergeant Thunderhorn", zone = "Orgrimmar" }, { vendor = "Evee Copperspring", zone = "Tanaris" } } },
    [73473] = { name = "Cataclysmic Gladiator's Pummeler", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Captain Dirgehammer", zone = "Stormwind City" }, { vendor = "Sergeant Thunderhorn", zone = "Orgrimmar" }, { vendor = "Evee Copperspring", zone = "Tanaris" } } },
    [73474] = { name = "Cataclysmic Gladiator's Cleaver", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Captain Dirgehammer", zone = "Stormwind City" }, { vendor = "Sergeant Thunderhorn", zone = "Orgrimmar" }, { vendor = "Evee Copperspring", zone = "Tanaris" } } },
    [73475] = { name = "Cataclysmic Gladiator's Greatsword", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Captain Dirgehammer", zone = "Stormwind City" }, { vendor = "Sergeant Thunderhorn", zone = "Orgrimmar" }, { vendor = "Evee Copperspring", zone = "Tanaris" } } },
    [73476] = { name = "Cataclysmic Gladiator's Bonegrinder", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Captain Dirgehammer", zone = "Stormwind City" }, { vendor = "Sergeant Thunderhorn", zone = "Orgrimmar" }, { vendor = "Evee Copperspring", zone = "Tanaris" } } },
    [73477] = { name = "Cataclysmic Gladiator's Decapitator", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" }, { vendor = "Tiny Tayger", zone = "Tanaris" }, { vendor = "Captain Dirgehammer", zone = "Stormwind City" }, { vendor = "Sergeant Thunderhorn", zone = "Orgrimmar" }, { vendor = "Evee Copperspring", zone = "Tanaris" } } },
    [77078] = { name = "Scintillating Rods", vendors = { { vendor = "Faldren Tillsdale", zone = "Stormwind City" }, { vendor = "Jamus'Vaz", zone = "Orgrimmar" } } },
    [77079] = { name = "Hungermouth Wand", vendors = { { vendor = "Faldren Tillsdale", zone = "Stormwind City" }, { vendor = "Jamus'Vaz", zone = "Orgrimmar" } } },
    [77549] = { name = "Replica Grand Marshal's Demolisher", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77550] = { name = "Replica Grand Marshal's Swiftblade", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77551] = { name = "Replica Grand Marshal's Dirk", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77552] = { name = "Replica Grand Marshal's Mageblade", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77553] = { name = "Replica Grand Marshal's Warhammer", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77554] = { name = "Replica Grand Marshal's Sunderer", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77555] = { name = "Replica Grand Marshal's Hand Cannon", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77556] = { name = "Replica Grand Marshal's Stave", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77557] = { name = "Replica Grand Marshal's Hand Blade", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77558] = { name = "Replica Grand Marshal's Punisher", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77560] = { name = "Replica Grand Marshal's Claymore", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77561] = { name = "Replica Grand Marshal's Longsword", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77562] = { name = "Replica Grand Marshal's Handaxe", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77563] = { name = "Replica Grand Marshal's Battle Hammer", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77564] = { name = "Replica Grand Marshal's Glaive", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77565] = { name = "Replica Grand Marshal's Bullseye", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77566] = { name = "Replica Grand Marshal's Repeater", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77567] = { name = "Replica High Warlord's Battle Mace", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77568] = { name = "Replica High Warlord's Spellblade", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77569] = { name = "Replica High Warlord's Quickblade", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77571] = { name = "Replica High Warlord's Destroyer", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77572] = { name = "Replica High Warlord's Pig Sticker", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77573] = { name = "Replica High Warlord's Pulverizer", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77574] = { name = "Replica High Warlord's Battle Axe", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77575] = { name = "Replica High Warlord's Claw", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77576] = { name = "Replica High Warlord's Razor", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77577] = { name = "Replica High Warlord's Greatsword", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77578] = { name = "Replica High Warlord's Recurve", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77579] = { name = "Replica High Warlord's Street Sweeper", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77580] = { name = "Replica High Warlord's Cleaver", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77581] = { name = "Replica High Warlord's War Staff", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77582] = { name = "Replica High Warlord's Blade", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77584] = { name = "Replica High Warlord's Bludgeon", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },
    [77585] = { name = "Replica High Warlord's Crossbow", vendors = { { vendor = "Big Zokk Torquewrench", zone = "Netherstorm" }, { vendor = "Talgaiir the Ironrender", zone = "Talador" } } },

    ------------------------------------------------------------
    -- MISTS OF PANDARIA (gap2 pass)
    ------------------------------------------------------------
    [73210] = { name = "Trainee's Sword", vendors = { { vendor = "Gerik Koen", zone = "Stormwind City" }, { vendor = "Galthuk", zone = "Orgrimmar" }, { vendor = "Ealyshia Dewwhisper", zone = "Darnassus" }, { vendor = "Geoffrey Hartwell", zone = "Undercity" }, { vendor = "Ohanko", zone = "Thunder Bluff" } } },
    [79740] = { name = "Plain Wooden Staff", vendors = { { vendor = "Salazar Bloch", zone = "Undercity" }, { vendor = "Mindri Dinkles", zone = "Howling Fjord" }, { vendor = "Booker Kells", zone = "Howling Fjord" }, { vendor = "Adelene Sunlance", zone = "Borean Tundra" }, { vendor = "Tink Brightbolt", zone = "Borean Tundra" } } },
    [81671] = { name = "Faded Forest Meditation Staff", vendors = { { vendor = "Rivett Clutchpop", zone = "The Jade Forest" }, { vendor = "Singegruff", zone = "The Jade Forest" }, { vendor = "Trader Jambeezi", zone = "Valley of the Four Winds" }, { vendor = "Claretta", zone = "Valley of the Four Winds" }, { vendor = "Silkweaver Rui", zone = "The Jade Forest" } } },
    [81672] = { name = "Faded Forest Diviner's Rod", vendors = { { vendor = "Rivett Clutchpop", zone = "The Jade Forest" }, { vendor = "Singegruff", zone = "The Jade Forest" }, { vendor = "Trader Jambeezi", zone = "Valley of the Four Winds" }, { vendor = "Claretta", zone = "Valley of the Four Winds" }, { vendor = "Silkweaver Rui", zone = "The Jade Forest" } } },
    [81673] = { name = "Faded Forest Combat Staff", vendors = { { vendor = "Rivett Clutchpop", zone = "The Jade Forest" }, { vendor = "Singegruff", zone = "The Jade Forest" }, { vendor = "Trader Jambeezi", zone = "Valley of the Four Winds" }, { vendor = "Claretta", zone = "Valley of the Four Winds" }, { vendor = "Silkweaver Rui", zone = "The Jade Forest" } } },
    [81674] = { name = "Faded Forest Battlemace", vendors = { { vendor = "Rivett Clutchpop", zone = "The Jade Forest" }, { vendor = "Singegruff", zone = "The Jade Forest" }, { vendor = "Trader Jambeezi", zone = "Valley of the Four Winds" }, { vendor = "Claretta", zone = "Valley of the Four Winds" }, { vendor = "Silkweaver Rui", zone = "The Jade Forest" } } },
    [81675] = { name = "Faded Forest Handaxe", vendors = { { vendor = "Rivett Clutchpop", zone = "The Jade Forest" }, { vendor = "Singegruff", zone = "The Jade Forest" }, { vendor = "Trader Jambeezi", zone = "Valley of the Four Winds" }, { vendor = "Claretta", zone = "Valley of the Four Winds" }, { vendor = "Silkweaver Rui", zone = "The Jade Forest" } } },
    [81676] = { name = "Faded Forest Crossbow", vendors = { { vendor = "Rivett Clutchpop", zone = "The Jade Forest" }, { vendor = "Singegruff", zone = "The Jade Forest" }, { vendor = "Trader Jambeezi", zone = "Valley of the Four Winds" }, { vendor = "Claretta", zone = "Valley of the Four Winds" }, { vendor = "Silkweaver Rui", zone = "The Jade Forest" } } },
    [81677] = { name = "Faded Forest Saber", vendors = { { vendor = "Rivett Clutchpop", zone = "The Jade Forest" }, { vendor = "Singegruff", zone = "The Jade Forest" }, { vendor = "Trader Jambeezi", zone = "Valley of the Four Winds" }, { vendor = "Claretta", zone = "Valley of the Four Winds" }, { vendor = "Silkweaver Rui", zone = "The Jade Forest" } } },
    [81678] = { name = "Faded Forest Scepter", vendors = { { vendor = "Rivett Clutchpop", zone = "The Jade Forest" }, { vendor = "Singegruff", zone = "The Jade Forest" }, { vendor = "Trader Jambeezi", zone = "Valley of the Four Winds" }, { vendor = "Claretta", zone = "Valley of the Four Winds" }, { vendor = "Silkweaver Rui", zone = "The Jade Forest" } } },
    [81679] = { name = "Faded Forest Dagger", vendors = { { vendor = "Rivett Clutchpop", zone = "The Jade Forest" }, { vendor = "Singegruff", zone = "The Jade Forest" }, { vendor = "Trader Jambeezi", zone = "Valley of the Four Winds" }, { vendor = "Claretta", zone = "Valley of the Four Winds" }, { vendor = "Silkweaver Rui", zone = "The Jade Forest" } } },
    [81680] = { name = "Faded Forest Smasher", vendors = { { vendor = "Rivett Clutchpop", zone = "The Jade Forest" }, { vendor = "Singegruff", zone = "The Jade Forest" }, { vendor = "Trader Jambeezi", zone = "Valley of the Four Winds" }, { vendor = "Claretta", zone = "Valley of the Four Winds" }, { vendor = "Silkweaver Rui", zone = "The Jade Forest" } } },
    [81681] = { name = "Faded Forest Greatsword", vendors = { { vendor = "Rivett Clutchpop", zone = "The Jade Forest" }, { vendor = "Singegruff", zone = "The Jade Forest" }, { vendor = "Trader Jambeezi", zone = "Valley of the Four Winds" }, { vendor = "Claretta", zone = "Valley of the Four Winds" }, { vendor = "Silkweaver Rui", zone = "The Jade Forest" } } },
    [81682] = { name = "Faded Forest Mace", vendors = { { vendor = "Rivett Clutchpop", zone = "The Jade Forest" }, { vendor = "Singegruff", zone = "The Jade Forest" }, { vendor = "Trader Jambeezi", zone = "Valley of the Four Winds" }, { vendor = "Claretta", zone = "Valley of the Four Winds" }, { vendor = "Silkweaver Rui", zone = "The Jade Forest" } } },
    [81685] = { name = "Faded Forest Blade", vendors = { { vendor = "Rivett Clutchpop", zone = "The Jade Forest" }, { vendor = "Singegruff", zone = "The Jade Forest" }, { vendor = "Trader Jambeezi", zone = "Valley of the Four Winds" }, { vendor = "Claretta", zone = "Valley of the Four Winds" }, { vendor = "Silkweaver Rui", zone = "The Jade Forest" } } },
    [81686] = { name = "Faded Forest Axe", vendors = { { vendor = "Rivett Clutchpop", zone = "The Jade Forest" }, { vendor = "Singegruff", zone = "The Jade Forest" }, { vendor = "Trader Jambeezi", zone = "Valley of the Four Winds" }, { vendor = "Claretta", zone = "Valley of the Four Winds" }, { vendor = "Silkweaver Rui", zone = "The Jade Forest" } } },
    [82706] = { name = "Mountainscaler Meditation Staff", vendors = { { vendor = "The Metal Paw", zone = "Kun-Lai Summit" }, { vendor = "Alin the Finder", zone = "Townlong Steppes" } } },
    [82707] = { name = "Mountainscaler Diviner's Rod", vendors = { { vendor = "The Metal Paw", zone = "Kun-Lai Summit" }, { vendor = "Alin the Finder", zone = "Townlong Steppes" } } },
    [82708] = { name = "Mountainscaler Combat Staff", vendors = { { vendor = "The Metal Paw", zone = "Kun-Lai Summit" }, { vendor = "Alin the Finder", zone = "Townlong Steppes" } } },
    [82709] = { name = "Mountainscaler Battlemace", vendors = { { vendor = "The Metal Paw", zone = "Kun-Lai Summit" }, { vendor = "Alin the Finder", zone = "Townlong Steppes" } } },
    [82710] = { name = "Mountainscaler Handaxe", vendors = { { vendor = "The Metal Paw", zone = "Kun-Lai Summit" }, { vendor = "Alin the Finder", zone = "Townlong Steppes" } } },
    [82711] = { name = "Mountainscaler Crossbow", vendors = { { vendor = "The Metal Paw", zone = "Kun-Lai Summit" }, { vendor = "Alin the Finder", zone = "Townlong Steppes" } } },
    [82712] = { name = "Mountainscaler Saber", vendors = { { vendor = "The Metal Paw", zone = "Kun-Lai Summit" }, { vendor = "Alin the Finder", zone = "Townlong Steppes" } } },
    [82713] = { name = "Mountainscaler Scepter", vendors = { { vendor = "The Metal Paw", zone = "Kun-Lai Summit" }, { vendor = "Alin the Finder", zone = "Townlong Steppes" } } },
    [82714] = { name = "Mountainscaler Dagger", vendors = { { vendor = "The Metal Paw", zone = "Kun-Lai Summit" }, { vendor = "Alin the Finder", zone = "Townlong Steppes" } } },
    [82715] = { name = "Mountainscaler Smasher", vendors = { { vendor = "The Metal Paw", zone = "Kun-Lai Summit" }, { vendor = "Alin the Finder", zone = "Townlong Steppes" } } },
    [82716] = { name = "Mountainscaler Greatsword", vendors = { { vendor = "The Metal Paw", zone = "Kun-Lai Summit" }, { vendor = "Alin the Finder", zone = "Townlong Steppes" } } },
    [82717] = { name = "Mountainscaler Mace", vendors = { { vendor = "The Metal Paw", zone = "Kun-Lai Summit" }, { vendor = "Alin the Finder", zone = "Townlong Steppes" } } },
    [82720] = { name = "Mountainscaler Blade", vendors = { { vendor = "The Metal Paw", zone = "Kun-Lai Summit" }, { vendor = "Alin the Finder", zone = "Townlong Steppes" } } },
    [82721] = { name = "Mountainscaler Axe", vendors = { { vendor = "The Metal Paw", zone = "Kun-Lai Summit" }, { vendor = "Alin the Finder", zone = "Townlong Steppes" } } },
    [83260] = { name = "Wasteland Meditation Staff", vendors = { { vendor = "Supplier Xin", zone = "Townlong Steppes" }, { vendor = "Len at Arms", zone = "Vale of Eternal Blossoms" } } },
    [83261] = { name = "Wasteland Diviner's Rod", vendors = { { vendor = "Supplier Xin", zone = "Townlong Steppes" }, { vendor = "Len at Arms", zone = "Vale of Eternal Blossoms" } } },
    [83262] = { name = "Wasteland Combat Staff", vendors = { { vendor = "Supplier Xin", zone = "Townlong Steppes" }, { vendor = "Len at Arms", zone = "Vale of Eternal Blossoms" } } },
    [83263] = { name = "Wasteland Battlemace", vendors = { { vendor = "Supplier Xin", zone = "Townlong Steppes" }, { vendor = "Len at Arms", zone = "Vale of Eternal Blossoms" } } },
    [83264] = { name = "Wasteland Handaxe", vendors = { { vendor = "Supplier Xin", zone = "Townlong Steppes" }, { vendor = "Len at Arms", zone = "Vale of Eternal Blossoms" } } },
    [83265] = { name = "Wasteland Crossbow", vendors = { { vendor = "Supplier Xin", zone = "Townlong Steppes" }, { vendor = "Len at Arms", zone = "Vale of Eternal Blossoms" } } },
    [83266] = { name = "Wasteland Saber", vendors = { { vendor = "Supplier Xin", zone = "Townlong Steppes" }, { vendor = "Len at Arms", zone = "Vale of Eternal Blossoms" } } },
    [83267] = { name = "Wasteland Scepter", vendors = { { vendor = "Supplier Xin", zone = "Townlong Steppes" }, { vendor = "Len at Arms", zone = "Vale of Eternal Blossoms" } } },
    [83268] = { name = "Wasteland Dagger", vendors = { { vendor = "Supplier Xin", zone = "Townlong Steppes" }, { vendor = "Len at Arms", zone = "Vale of Eternal Blossoms" } } },
    [83269] = { name = "Wasteland Smasher", vendors = { { vendor = "Supplier Xin", zone = "Townlong Steppes" }, { vendor = "Len at Arms", zone = "Vale of Eternal Blossoms" } } },
    [83270] = { name = "Wasteland Greatsword", vendors = { { vendor = "Supplier Xin", zone = "Townlong Steppes" }, { vendor = "Len at Arms", zone = "Vale of Eternal Blossoms" } } },
    [83271] = { name = "Wasteland Mace", vendors = { { vendor = "Supplier Xin", zone = "Townlong Steppes" }, { vendor = "Len at Arms", zone = "Vale of Eternal Blossoms" } } },
    [83274] = { name = "Wasteland Blade", vendors = { { vendor = "Supplier Xin", zone = "Townlong Steppes" }, { vendor = "Len at Arms", zone = "Vale of Eternal Blossoms" } } },
    [83275] = { name = "Wasteland Axe", vendors = { { vendor = "Supplier Xin", zone = "Townlong Steppes" }, { vendor = "Len at Arms", zone = "Vale of Eternal Blossoms" } } },
    [88622] = { name = "Monastic Staff", vendors = { { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Iris Moondreamer", zone = "Mount Hyjal" } } },
    [88648] = { name = "Monastic Spire", vendors = { { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Iris Moondreamer", zone = "Mount Hyjal" } } },
    [88649] = { name = "Monastic Sword", vendors = { { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Erunak Stonespeaker", zone = "Kelp'thar Forest" }, { vendor = "Iris Moondreamer", zone = "Mount Hyjal" } } },
    [89551] = { name = "Aspirant's Staff of Harmony", vendors = { { vendor = "Master Hwang", zone = "Kun-Lai Summit" } } },
    [89579] = { name = "Tiger Lord's Bladed Claws", vendors = { { vendor = "Master Tan", zone = "Kun-Lai Summit" } } },
    [89580] = { name = "Novice's Staff", vendors = { { vendor = "Master Hwang", zone = "Kun-Lai Summit" } } },
    [89581] = { name = "Initiate's Staff", vendors = { { vendor = "Master Hwang", zone = "Kun-Lai Summit" } } },
    [89582] = { name = "Sparring Staff", vendors = { { vendor = "Master Hwang", zone = "Kun-Lai Summit" } } },
    [89583] = { name = "Staff of Pilgrimage", vendors = { { vendor = "Master Hwang", zone = "Kun-Lai Summit" } } },
    [89584] = { name = "Staff of Meditation", vendors = { { vendor = "Master Hwang", zone = "Kun-Lai Summit" } } },
    [89585] = { name = "Staff of Fallen Blossoms", vendors = { { vendor = "Master Hwang", zone = "Kun-Lai Summit" } } },
    [89586] = { name = "Staff of Serenity", vendors = { { vendor = "Master Hwang", zone = "Kun-Lai Summit" } } },
    [90010] = { name = "Cranedancer's Staff", vendors = { { vendor = "Master Hwang", zone = "Kun-Lai Summit" } } },
    [90012] = { name = "Staff of Ox-Hoof Thunder", vendors = { { vendor = "Master Hwang", zone = "Kun-Lai Summit" } } },
    [91440] = { name = "Malevolent Gladiator's Decapitator", vendors = { { vendor = "Lucan Malory", zone = "Valley of the Four Winds" }, { vendor = "Doris Chiltonius", zone = "Kun-Lai Summit" } } },
    [91442] = { name = "Malevolent Gladiator's Bonegrinder", vendors = { { vendor = "Lucan Malory", zone = "Valley of the Four Winds" }, { vendor = "Doris Chiltonius", zone = "Kun-Lai Summit" } } },
    [91444] = { name = "Malevolent Gladiator's Greatsword", vendors = { { vendor = "Lucan Malory", zone = "Valley of the Four Winds" }, { vendor = "Doris Chiltonius", zone = "Kun-Lai Summit" } } },
    [91446] = { name = "Malevolent Gladiator's Cleaver", vendors = { { vendor = "Lucan Malory", zone = "Valley of the Four Winds" }, { vendor = "Doris Chiltonius", zone = "Kun-Lai Summit" } } },
    [91450] = { name = "Malevolent Gladiator's Quickblade", vendors = { { vendor = "Lucan Malory", zone = "Valley of the Four Winds" }, { vendor = "Doris Chiltonius", zone = "Kun-Lai Summit" } } },
    [91460] = { name = "Malevolent Gladiator's Longbow", vendors = { { vendor = "Lucan Malory", zone = "Valley of the Four Winds" }, { vendor = "Doris Chiltonius", zone = "Kun-Lai Summit" } } },
    [91484] = { name = "Malevolent Gladiator's Spellblade", vendors = { { vendor = "Lucan Malory", zone = "Valley of the Four Winds" }, { vendor = "Doris Chiltonius", zone = "Kun-Lai Summit" } } },
    [91486] = { name = "Malevolent Gladiator's Battle Staff", vendors = { { vendor = "Lucan Malory", zone = "Valley of the Four Winds" }, { vendor = "Doris Chiltonius", zone = "Kun-Lai Summit" } } },
    [91535] = { name = "Malevolent Gladiator's Staff", vendors = { { vendor = "Lucan Malory", zone = "Valley of the Four Winds" }, { vendor = "Doris Chiltonius", zone = "Kun-Lai Summit" } } },
    [91554] = { name = "Malevolent Gladiator's Rifle", vendors = { { vendor = "Lucan Malory", zone = "Valley of the Four Winds" }, { vendor = "Doris Chiltonius", zone = "Kun-Lai Summit" } } },
    [91556] = { name = "Malevolent Gladiator's Gavel", vendors = { { vendor = "Lucan Malory", zone = "Valley of the Four Winds" }, { vendor = "Doris Chiltonius", zone = "Kun-Lai Summit" } } },
    [91560] = { name = "Malevolent Gladiator's Energy Staff", vendors = { { vendor = "Lucan Malory", zone = "Valley of the Four Winds" }, { vendor = "Doris Chiltonius", zone = "Kun-Lai Summit" } } },
    [91660] = { name = "Malevolent Gladiator's Pike", vendors = { { vendor = "Lucan Malory", zone = "Valley of the Four Winds" }, { vendor = "Doris Chiltonius", zone = "Kun-Lai Summit" } } },
    [91743] = { name = "Malevolent Gladiator's Shanker", vendors = { { vendor = "Lucan Malory", zone = "Valley of the Four Winds" }, { vendor = "Doris Chiltonius", zone = "Kun-Lai Summit" } } },
    [91745] = { name = "Malevolent Gladiator's Ripper", vendors = { { vendor = "Lucan Malory", zone = "Valley of the Four Winds" }, { vendor = "Doris Chiltonius", zone = "Kun-Lai Summit" } } },
    [91749] = { name = "Malevolent Gladiator's Render", vendors = { { vendor = "Lucan Malory", zone = "Valley of the Four Winds" }, { vendor = "Doris Chiltonius", zone = "Kun-Lai Summit" } } },
    [91757] = { name = "Malevolent Gladiator's Hacker", vendors = { { vendor = "Lucan Malory", zone = "Valley of the Four Winds" }, { vendor = "Doris Chiltonius", zone = "Kun-Lai Summit" } } },
    [91759] = { name = "Malevolent Gladiator's Bonecracker", vendors = { { vendor = "Lucan Malory", zone = "Valley of the Four Winds" }, { vendor = "Doris Chiltonius", zone = "Kun-Lai Summit" } } },
    [91761] = { name = "Malevolent Gladiator's Slicer", vendors = { { vendor = "Lucan Malory", zone = "Valley of the Four Winds" }, { vendor = "Doris Chiltonius", zone = "Kun-Lai Summit" } } },
    [93847] = { name = "Crushing Mass of McGowan", vendors = { { vendor = "Enchanter Erodin", zone = "Silvermoon City" } } },
    [93853] = { name = "Pious Aurastone Hammer", vendors = { { vendor = "Enchanter Erodin", zone = "Silvermoon City" } } },
    [99766] = { name = "Tyrannical Gladiator's Decapitator", vendors = { { vendor = "Armsmaster Holinka", zone = "Valley of the Four Winds" } } },
    [99768] = { name = "Tyrannical Gladiator's Greatsword", vendors = { { vendor = "Armsmaster Holinka", zone = "Valley of the Four Winds" } } },
    [99769] = { name = "Tyrannical Gladiator's Cleaver", vendors = { { vendor = "Armsmaster Holinka", zone = "Valley of the Four Winds" } } },
    [99770] = { name = "Tyrannical Gladiator's Pummeler", vendors = { { vendor = "Armsmaster Holinka", zone = "Valley of the Four Winds" } } },
    [99771] = { name = "Tyrannical Gladiator's Quickblade", vendors = { { vendor = "Armsmaster Holinka", zone = "Valley of the Four Winds" } } },
    [99795] = { name = "Tyrannical Gladiator's Spellblade", vendors = { { vendor = "Armsmaster Holinka", zone = "Valley of the Four Winds" } } },
    [99796] = { name = "Tyrannical Gladiator's Battle Staff", vendors = { { vendor = "Armsmaster Holinka", zone = "Valley of the Four Winds" } } },
    [99805] = { name = "Tyrannical Gladiator's Heavy Crossbow", vendors = { { vendor = "Armsmaster Holinka", zone = "Valley of the Four Winds" } } },
    [99824] = { name = "Tyrannical Gladiator's Staff", vendors = { { vendor = "Armsmaster Holinka", zone = "Valley of the Four Winds" } } },
    [99835] = { name = "Tyrannical Gladiator's Gavel", vendors = { { vendor = "Armsmaster Holinka", zone = "Valley of the Four Winds" } } },
    [99837] = { name = "Tyrannical Gladiator's Energy Staff", vendors = { { vendor = "Armsmaster Holinka", zone = "Valley of the Four Winds" } } },
    [99932] = { name = "Tyrannical Gladiator's Shanker", vendors = { { vendor = "Armsmaster Holinka", zone = "Valley of the Four Winds" } } },
    [99933] = { name = "Tyrannical Gladiator's Ripper", vendors = { { vendor = "Armsmaster Holinka", zone = "Valley of the Four Winds" } } },
    [99935] = { name = "Tyrannical Gladiator's Render", vendors = { { vendor = "Armsmaster Holinka", zone = "Valley of the Four Winds" } } },
    [99936] = { name = "Tyrannical Gladiator's Mageblade", vendors = { { vendor = "Armsmaster Holinka", zone = "Valley of the Four Winds" } } },
    [99940] = { name = "Tyrannical Gladiator's Hacker", vendors = { { vendor = "Armsmaster Holinka", zone = "Valley of the Four Winds" } } },
    [99941] = { name = "Tyrannical Gladiator's Bonecracker", vendors = { { vendor = "Armsmaster Holinka", zone = "Valley of the Four Winds" } } },
    [99942] = { name = "Tyrannical Gladiator's Slicer", vendors = { { vendor = "Armsmaster Holinka", zone = "Valley of the Four Winds" } } },
    [99963] = { name = "Tyrannical Gladiator's Gavel", vendors = { { vendor = "Roo Desvin", zone = "Kun-Lai Summit" } } },
    [99965] = { name = "Tyrannical Gladiator's Pummeler", vendors = { { vendor = "Roo Desvin", zone = "Kun-Lai Summit" } } },
    [99967] = { name = "Tyrannical Gladiator's Spellblade", vendors = { { vendor = "Roo Desvin", zone = "Kun-Lai Summit" } } },
    [99968] = { name = "Tyrannical Gladiator's Staff", vendors = { { vendor = "Roo Desvin", zone = "Kun-Lai Summit" } } },
    [99971] = { name = "Tyrannical Gladiator's Mageblade", vendors = { { vendor = "Roo Desvin", zone = "Kun-Lai Summit" } } },
    [99972] = { name = "Tyrannical Gladiator's Greatsword", vendors = { { vendor = "Roo Desvin", zone = "Kun-Lai Summit" } } },
    [99973] = { name = "Tyrannical Gladiator's Cleaver", vendors = { { vendor = "Roo Desvin", zone = "Kun-Lai Summit" } } },
    [99974] = { name = "Tyrannical Gladiator's Battle Staff", vendors = { { vendor = "Roo Desvin", zone = "Kun-Lai Summit" } } },
    [99976] = { name = "Tyrannical Gladiator's Shanker", vendors = { { vendor = "Roo Desvin", zone = "Kun-Lai Summit" } } },
    [99977] = { name = "Tyrannical Gladiator's Ripper", vendors = { { vendor = "Roo Desvin", zone = "Kun-Lai Summit" } } },
    [99978] = { name = "Tyrannical Gladiator's Hacker", vendors = { { vendor = "Roo Desvin", zone = "Kun-Lai Summit" } } },
    [99979] = { name = "Tyrannical Gladiator's Slicer", vendors = { { vendor = "Roo Desvin", zone = "Kun-Lai Summit" } } },
    [99981] = { name = "Tyrannical Gladiator's Energy Staff", vendors = { { vendor = "Roo Desvin", zone = "Kun-Lai Summit" } } },
    [99982] = { name = "Tyrannical Gladiator's Render", vendors = { { vendor = "Roo Desvin", zone = "Kun-Lai Summit" } } },
    [99983] = { name = "Tyrannical Gladiator's Bonecracker", vendors = { { vendor = "Roo Desvin", zone = "Kun-Lai Summit" } } },
    [99984] = { name = "Tyrannical Gladiator's Decapitator", vendors = { { vendor = "Roo Desvin", zone = "Kun-Lai Summit" } } },
    [99986] = { name = "Tyrannical Gladiator's Quickblade", vendors = { { vendor = "Roo Desvin", zone = "Kun-Lai Summit" } } },
    [99987] = { name = "Tyrannical Gladiator's Heavy Crossbow", vendors = { { vendor = "Roo Desvin", zone = "Kun-Lai Summit" } } },
    [102590] = { name = "Prideful Gladiator's Gavel", vendors = { { vendor = "Starlight Sinclair", zone = "Valley of the Four Winds" } } },
    [102591] = { name = "Prideful Gladiator's Longbow", vendors = { { vendor = "Starlight Sinclair", zone = "Valley of the Four Winds" } } },
    [102592] = { name = "Prideful Gladiator's Pummeler", vendors = { { vendor = "Starlight Sinclair", zone = "Valley of the Four Winds" } } },
    [102593] = { name = "Prideful Gladiator's Touch of Defeat", vendors = { { vendor = "Starlight Sinclair", zone = "Valley of the Four Winds" } } },
    [102594] = { name = "Prideful Gladiator's Spellblade", vendors = { { vendor = "Starlight Sinclair", zone = "Valley of the Four Winds" } } },
    [102596] = { name = "Prideful Gladiator's Baton of Light", vendors = { { vendor = "Starlight Sinclair", zone = "Valley of the Four Winds" } } },
    [102597] = { name = "Prideful Gladiator's Rifle", vendors = { { vendor = "Starlight Sinclair", zone = "Valley of the Four Winds" } } },
    [102599] = { name = "Prideful Gladiator's Greatsword", vendors = { { vendor = "Starlight Sinclair", zone = "Valley of the Four Winds" } } },
    [102600] = { name = "Prideful Gladiator's Cleaver", vendors = { { vendor = "Starlight Sinclair", zone = "Valley of the Four Winds" } } },
    [102601] = { name = "Prideful Gladiator's Battle Staff", vendors = { { vendor = "Starlight Sinclair", zone = "Valley of the Four Winds" } } },
    [102602] = { name = "Prideful Gladiator's Shanker", vendors = { { vendor = "Starlight Sinclair", zone = "Valley of the Four Winds" } } },
    [102604] = { name = "Prideful Gladiator's Hacker", vendors = { { vendor = "Starlight Sinclair", zone = "Valley of the Four Winds" } } },
    [102605] = { name = "Prideful Gladiator's Slicer", vendors = { { vendor = "Starlight Sinclair", zone = "Valley of the Four Winds" } } },
    [102606] = { name = "Prideful Gladiator's Pike", vendors = { { vendor = "Starlight Sinclair", zone = "Valley of the Four Winds" } } },
    [102607] = { name = "Prideful Gladiator's Energy Staff", vendors = { { vendor = "Starlight Sinclair", zone = "Valley of the Four Winds" } } },
    [102609] = { name = "Prideful Gladiator's Bonecracker", vendors = { { vendor = "Starlight Sinclair", zone = "Valley of the Four Winds" } } },
    [102610] = { name = "Prideful Gladiator's Decapitator", vendors = { { vendor = "Starlight Sinclair", zone = "Valley of the Four Winds" } } },
    [102612] = { name = "Prideful Gladiator's Quickblade", vendors = { { vendor = "Starlight Sinclair", zone = "Valley of the Four Winds" } } },
    [102787] = { name = "Grievous Gladiator's Gavel", vendors = { { vendor = "Acon Deathwielder", zone = "Kun-Lai Summit" } } },
    [102788] = { name = "Grievous Gladiator's Longbow", vendors = { { vendor = "Acon Deathwielder", zone = "Kun-Lai Summit" } } },
    [102789] = { name = "Grievous Gladiator's Pummeler", vendors = { { vendor = "Acon Deathwielder", zone = "Kun-Lai Summit" } } },
    [102790] = { name = "Grievous Gladiator's Touch of Defeat", vendors = { { vendor = "Acon Deathwielder", zone = "Kun-Lai Summit" } } },
    [102791] = { name = "Grievous Gladiator's Spellblade", vendors = { { vendor = "Acon Deathwielder", zone = "Kun-Lai Summit" } } },
    [102793] = { name = "Grievous Gladiator's Baton of Light", vendors = { { vendor = "Acon Deathwielder", zone = "Kun-Lai Summit" } } },
    [102794] = { name = "Grievous Gladiator's Rifle", vendors = { { vendor = "Acon Deathwielder", zone = "Kun-Lai Summit" } } },
    [102795] = { name = "Grievous Gladiator's Mageblade", vendors = { { vendor = "Acon Deathwielder", zone = "Kun-Lai Summit" } } },
    [102796] = { name = "Grievous Gladiator's Greatsword", vendors = { { vendor = "Acon Deathwielder", zone = "Kun-Lai Summit" } } },
    [102797] = { name = "Grievous Gladiator's Cleaver", vendors = { { vendor = "Acon Deathwielder", zone = "Kun-Lai Summit" } } },
    [102798] = { name = "Grievous Gladiator's Battle Staff", vendors = { { vendor = "Acon Deathwielder", zone = "Kun-Lai Summit" } } },
    [102799] = { name = "Grievous Gladiator's Shanker", vendors = { { vendor = "Acon Deathwielder", zone = "Kun-Lai Summit" } } },
    [102801] = { name = "Grievous Gladiator's Hacker", vendors = { { vendor = "Acon Deathwielder", zone = "Kun-Lai Summit" } } },
    [102802] = { name = "Grievous Gladiator's Slicer", vendors = { { vendor = "Acon Deathwielder", zone = "Kun-Lai Summit" } } },
    [102803] = { name = "Grievous Gladiator's Pike", vendors = { { vendor = "Acon Deathwielder", zone = "Kun-Lai Summit" } } },
    [102804] = { name = "Grievous Gladiator's Energy Staff", vendors = { { vendor = "Acon Deathwielder", zone = "Kun-Lai Summit" } } },
    [102805] = { name = "Grievous Gladiator's Render", vendors = { { vendor = "Acon Deathwielder", zone = "Kun-Lai Summit" } } },
    [102806] = { name = "Grievous Gladiator's Bonecracker", vendors = { { vendor = "Acon Deathwielder", zone = "Kun-Lai Summit" } } },
    [102807] = { name = "Grievous Gladiator's Decapitator", vendors = { { vendor = "Acon Deathwielder", zone = "Kun-Lai Summit" } } },
    [102809] = { name = "Grievous Gladiator's Quickblade", vendors = { { vendor = "Acon Deathwielder", zone = "Kun-Lai Summit" } } },
    [103139] = { name = "Grievous Gladiator's Decapitator", vendors = { { vendor = "Ethan Natice", zone = "Valley of the Four Winds" } } },
    [103141] = { name = "Grievous Gladiator's Greatsword", vendors = { { vendor = "Ethan Natice", zone = "Valley of the Four Winds" } } },
    [103142] = { name = "Grievous Gladiator's Cleaver", vendors = { { vendor = "Ethan Natice", zone = "Valley of the Four Winds" } } },
    [103143] = { name = "Grievous Gladiator's Pummeler", vendors = { { vendor = "Ethan Natice", zone = "Valley of the Four Winds" } } },
    [103144] = { name = "Grievous Gladiator's Quickblade", vendors = { { vendor = "Ethan Natice", zone = "Valley of the Four Winds" } } },
    [103153] = { name = "Grievous Gladiator's Longbow", vendors = { { vendor = "Ethan Natice", zone = "Valley of the Four Winds" } } },
    [103168] = { name = "Grievous Gladiator's Spellblade", vendors = { { vendor = "Ethan Natice", zone = "Valley of the Four Winds" } } },
    [103169] = { name = "Grievous Gladiator's Battle Staff", vendors = { { vendor = "Ethan Natice", zone = "Valley of the Four Winds" } } },
    [103177] = { name = "Grievous Gladiator's Touch of Defeat", vendors = { { vendor = "Ethan Natice", zone = "Valley of the Four Winds" } } },
    [103206] = { name = "Grievous Gladiator's Rifle", vendors = { { vendor = "Ethan Natice", zone = "Valley of the Four Winds" } } },
    [103207] = { name = "Grievous Gladiator's Gavel", vendors = { { vendor = "Ethan Natice", zone = "Valley of the Four Winds" } } },
    [103209] = { name = "Grievous Gladiator's Energy Staff", vendors = { { vendor = "Ethan Natice", zone = "Valley of the Four Winds" } } },
    [103264] = { name = "Grievous Gladiator's Pike", vendors = { { vendor = "Ethan Natice", zone = "Valley of the Four Winds" } } },
    [103304] = { name = "Grievous Gladiator's Shanker", vendors = { { vendor = "Ethan Natice", zone = "Valley of the Four Winds" } } },
    [103305] = { name = "Grievous Gladiator's Ripper", vendors = { { vendor = "Ethan Natice", zone = "Valley of the Four Winds" } } },
    [103306] = { name = "Grievous Gladiator's Render", vendors = { { vendor = "Ethan Natice", zone = "Valley of the Four Winds" } } },
    [103310] = { name = "Grievous Gladiator's Baton of Light", vendors = { { vendor = "Ethan Natice", zone = "Valley of the Four Winds" } } },
    [103311] = { name = "Grievous Gladiator's Hacker", vendors = { { vendor = "Ethan Natice", zone = "Valley of the Four Winds" } } },
    [103312] = { name = "Grievous Gladiator's Bonecracker", vendors = { { vendor = "Ethan Natice", zone = "Valley of the Four Winds" } } },
    [103313] = { name = "Grievous Gladiator's Slicer", vendors = { { vendor = "Ethan Natice", zone = "Valley of the Four Winds" } } },
    [103336] = { name = "Prideful Gladiator's Decapitator", vendors = { { vendor = "Shonn Su", zone = "Kun-Lai Summit" } } },
    [103338] = { name = "Prideful Gladiator's Greatsword", vendors = { { vendor = "Shonn Su", zone = "Kun-Lai Summit" } } },
    [103339] = { name = "Prideful Gladiator's Cleaver", vendors = { { vendor = "Shonn Su", zone = "Kun-Lai Summit" } } },
    [103340] = { name = "Prideful Gladiator's Pummeler", vendors = { { vendor = "Shonn Su", zone = "Kun-Lai Summit" } } },
    [103341] = { name = "Prideful Gladiator's Quickblade", vendors = { { vendor = "Shonn Su", zone = "Kun-Lai Summit" } } },
    [103350] = { name = "Prideful Gladiator's Longbow", vendors = { { vendor = "Shonn Su", zone = "Kun-Lai Summit" } } },
    [103365] = { name = "Prideful Gladiator's Spellblade", vendors = { { vendor = "Shonn Su", zone = "Kun-Lai Summit" } } },
    [103366] = { name = "Prideful Gladiator's Battle Staff", vendors = { { vendor = "Shonn Su", zone = "Kun-Lai Summit" } } },
    [103374] = { name = "Prideful Gladiator's Touch of Defeat", vendors = { { vendor = "Shonn Su", zone = "Kun-Lai Summit" } } },
    [103403] = { name = "Prideful Gladiator's Rifle", vendors = { { vendor = "Shonn Su", zone = "Kun-Lai Summit" } } },
    [103404] = { name = "Prideful Gladiator's Gavel", vendors = { { vendor = "Shonn Su", zone = "Kun-Lai Summit" } } },
    [103406] = { name = "Prideful Gladiator's Energy Staff", vendors = { { vendor = "Shonn Su", zone = "Kun-Lai Summit" } } },
    [103461] = { name = "Prideful Gladiator's Pike", vendors = { { vendor = "Shonn Su", zone = "Kun-Lai Summit" } } },
    [103501] = { name = "Prideful Gladiator's Shanker", vendors = { { vendor = "Shonn Su", zone = "Kun-Lai Summit" } } },
    [103502] = { name = "Prideful Gladiator's Ripper", vendors = { { vendor = "Shonn Su", zone = "Kun-Lai Summit" } } },
    [103503] = { name = "Prideful Gladiator's Render", vendors = { { vendor = "Shonn Su", zone = "Kun-Lai Summit" } } },
    [103504] = { name = "Prideful Gladiator's Mageblade", vendors = { { vendor = "Shonn Su", zone = "Kun-Lai Summit" } } },
    [103507] = { name = "Prideful Gladiator's Baton of Light", vendors = { { vendor = "Shonn Su", zone = "Kun-Lai Summit" } } },
    [103508] = { name = "Prideful Gladiator's Hacker", vendors = { { vendor = "Shonn Su", zone = "Kun-Lai Summit" } } },
    [103509] = { name = "Prideful Gladiator's Bonecracker", vendors = { { vendor = "Shonn Su", zone = "Kun-Lai Summit" } } },
    [103510] = { name = "Prideful Gladiator's Slicer", vendors = { { vendor = "Shonn Su", zone = "Kun-Lai Summit" } } },

    ------------------------------------------------------------
    -- WARLORDS OF DRAENOR (gap2 pass)
    ------------------------------------------------------------
    [111067] = { name = "Primal Gladiator's Cleaver", vendors = { { vendor = "Blood Guard Axelash", zone = "Warspear" } } },
    [111068] = { name = "Primal Gladiator's Shanker", vendors = { { vendor = "Blood Guard Axelash", zone = "Warspear" } } },
    [111069] = { name = "Primal Gladiator's Ripper", vendors = { { vendor = "Blood Guard Axelash", zone = "Warspear" } } },
    [111070] = { name = "Primal Gladiator's Pummeler", vendors = { { vendor = "Blood Guard Axelash", zone = "Warspear" } } },
    [111071] = { name = "Primal Gladiator's Quickblade", vendors = { { vendor = "Blood Guard Axelash", zone = "Warspear" } } },
    [111074] = { name = "Primal Gladiator's Rifle", vendors = { { vendor = "Blood Guard Axelash", zone = "Warspear" } } },
    [111075] = { name = "Primal Gladiator's Pike", vendors = { { vendor = "Blood Guard Axelash", zone = "Warspear" } } },
    [111117] = { name = "Primal Gladiator's Spellblade", vendors = { { vendor = "Blood Guard Axelash", zone = "Warspear" } } },
    [111118] = { name = "Primal Gladiator's Gavel", vendors = { { vendor = "Blood Guard Axelash", zone = "Warspear" } } },
    [111119] = { name = "Primal Gladiator's Mageblade", vendors = { { vendor = "Blood Guard Axelash", zone = "Warspear" } } },
    [111120] = { name = "Primal Gladiator's Baton of Light", vendors = { { vendor = "Blood Guard Axelash", zone = "Warspear" } } },
    [111121] = { name = "Primal Gladiator's Touch of Defeat", vendors = { { vendor = "Blood Guard Axelash", zone = "Warspear" } } },
    [111122] = { name = "Primal Gladiator's Battle Staff", vendors = { { vendor = "Blood Guard Axelash", zone = "Warspear" } } },
    [111123] = { name = "Primal Gladiator's Energy Staff", vendors = { { vendor = "Blood Guard Axelash", zone = "Warspear" } } },
    [111198] = { name = "Primal Gladiator's Hacker", vendors = { { vendor = "Blood Guard Axelash", zone = "Warspear" } } },
    [111199] = { name = "Primal Gladiator's Render", vendors = { { vendor = "Blood Guard Axelash", zone = "Warspear" } } },
    [111200] = { name = "Primal Gladiator's Bonecracker", vendors = { { vendor = "Blood Guard Axelash", zone = "Warspear" } } },
    [111201] = { name = "Primal Gladiator's Slicer", vendors = { { vendor = "Blood Guard Axelash", zone = "Warspear" } } },
    [111202] = { name = "Primal Gladiator's Decapitator", vendors = { { vendor = "Blood Guard Axelash", zone = "Warspear" } } },
    [111203] = { name = "Primal Gladiator's Bonegrinder", vendors = { { vendor = "Blood Guard Axelash", zone = "Warspear" } } },
    [113287] = { name = "Shard of Scorn", vendors = { { vendor = "Tempra", zone = "Stormshield" }, { vendor = "Kronnus", zone = "Warspear" } } },
    [114978] = { name = "Farmer's Shovel", vendors = { { vendor = "Merchant Derrook", zone = "Shadowmoon Valley" }, { vendor = "Gryrmpech", zone = "Thaldraszus" }, { vendor = "Gardener Cereus", zone = "Valdrakken" }, { vendor = "Molvzira", zone = "Dornogal" } } },
    [114979] = { name = "Farmer's Hoe", vendors = { { vendor = "Merchant Derrook", zone = "Shadowmoon Valley" }, { vendor = "Gryrmpech", zone = "Thaldraszus" }, { vendor = "Gardener Cereus", zone = "Valdrakken" }, { vendor = "Molvzira", zone = "Dornogal" } } },
    [114980] = { name = "Farmer's Broom", vendors = { { vendor = "Merchant Derrook", zone = "Shadowmoon Valley" }, { vendor = "Gryrmpech", zone = "Thaldraszus" }, { vendor = "Gardener Cereus", zone = "Valdrakken" }, { vendor = "Molvzira", zone = "Dornogal" } } },
    [115024] = { name = "Primal Combatant's Cleaver", vendors = { { vendor = "Shadow Hunter Gar'ant", zone = "Warspear" }, { vendor = "Stone Guard Brokefist", zone = "Warspear" } } },
    [115025] = { name = "Primal Combatant's Shanker", vendors = { { vendor = "Shadow Hunter Gar'ant", zone = "Warspear" }, { vendor = "Stone Guard Brokefist", zone = "Warspear" } } },
    [115026] = { name = "Primal Combatant's Ripper", vendors = { { vendor = "Shadow Hunter Gar'ant", zone = "Warspear" }, { vendor = "Stone Guard Brokefist", zone = "Warspear" } } },
    [115027] = { name = "Primal Combatant's Pummeler", vendors = { { vendor = "Shadow Hunter Gar'ant", zone = "Warspear" }, { vendor = "Stone Guard Brokefist", zone = "Warspear" } } },
    [115028] = { name = "Primal Combatant's Quickblade", vendors = { { vendor = "Shadow Hunter Gar'ant", zone = "Warspear" }, { vendor = "Stone Guard Brokefist", zone = "Warspear" } } },
    [115029] = { name = "Primal Combatant's Longbow", vendors = { { vendor = "Shadow Hunter Gar'ant", zone = "Warspear" }, { vendor = "Stone Guard Brokefist", zone = "Warspear" } } },
    [115031] = { name = "Primal Combatant's Rifle", vendors = { { vendor = "Shadow Hunter Gar'ant", zone = "Warspear" }, { vendor = "Stone Guard Brokefist", zone = "Warspear" } } },
    [115032] = { name = "Primal Combatant's Pike", vendors = { { vendor = "Shadow Hunter Gar'ant", zone = "Warspear" }, { vendor = "Stone Guard Brokefist", zone = "Warspear" } } },
    [115033] = { name = "Primal Combatant's Staff", vendors = { { vendor = "Shadow Hunter Gar'ant", zone = "Warspear" }, { vendor = "Stone Guard Brokefist", zone = "Warspear" } } },
    [115064] = { name = "Primal Combatant's Spellblade", vendors = { { vendor = "Shadow Hunter Gar'ant", zone = "Warspear" }, { vendor = "Stone Guard Brokefist", zone = "Warspear" } } },
    [115065] = { name = "Primal Combatant's Gavel", vendors = { { vendor = "Shadow Hunter Gar'ant", zone = "Warspear" }, { vendor = "Stone Guard Brokefist", zone = "Warspear" } } },
    [115067] = { name = "Primal Combatant's Baton of Light", vendors = { { vendor = "Shadow Hunter Gar'ant", zone = "Warspear" }, { vendor = "Stone Guard Brokefist", zone = "Warspear" } } },
    [115069] = { name = "Primal Combatant's Battle Staff", vendors = { { vendor = "Shadow Hunter Gar'ant", zone = "Warspear" }, { vendor = "Stone Guard Brokefist", zone = "Warspear" } } },
    [115070] = { name = "Primal Combatant's Energy Staff", vendors = { { vendor = "Shadow Hunter Gar'ant", zone = "Warspear" }, { vendor = "Stone Guard Brokefist", zone = "Warspear" } } },
    [115132] = { name = "Primal Combatant's Hacker", vendors = { { vendor = "Shadow Hunter Gar'ant", zone = "Warspear" }, { vendor = "Stone Guard Brokefist", zone = "Warspear" } } },
    [115133] = { name = "Primal Combatant's Render", vendors = { { vendor = "Shadow Hunter Gar'ant", zone = "Warspear" }, { vendor = "Stone Guard Brokefist", zone = "Warspear" } } },
    [115134] = { name = "Primal Combatant's Bonecracker", vendors = { { vendor = "Shadow Hunter Gar'ant", zone = "Warspear" }, { vendor = "Stone Guard Brokefist", zone = "Warspear" } } },
    [115135] = { name = "Primal Combatant's Slicer", vendors = { { vendor = "Shadow Hunter Gar'ant", zone = "Warspear" }, { vendor = "Stone Guard Brokefist", zone = "Warspear" } } },
    [115136] = { name = "Primal Combatant's Decapitator", vendors = { { vendor = "Shadow Hunter Gar'ant", zone = "Warspear" }, { vendor = "Stone Guard Brokefist", zone = "Warspear" } } },
    [115137] = { name = "Primal Combatant's Bonegrinder", vendors = { { vendor = "Shadow Hunter Gar'ant", zone = "Warspear" }, { vendor = "Stone Guard Brokefist", zone = "Warspear" } } },
    [115138] = { name = "Primal Combatant's Greatsword", vendors = { { vendor = "Shadow Hunter Gar'ant", zone = "Warspear" }, { vendor = "Stone Guard Brokefist", zone = "Warspear" } } },
    [115594] = { name = "Primal Gladiator's Cleaver", vendors = { { vendor = "Ingrid Blackingot", zone = "Stormshield" } } },
    [115595] = { name = "Primal Gladiator's Shanker", vendors = { { vendor = "Ingrid Blackingot", zone = "Stormshield" } } },
    [115596] = { name = "Primal Gladiator's Ripper", vendors = { { vendor = "Ingrid Blackingot", zone = "Stormshield" } } },
    [115597] = { name = "Primal Gladiator's Pummeler", vendors = { { vendor = "Ingrid Blackingot", zone = "Stormshield" } } },
    [115598] = { name = "Primal Gladiator's Quickblade", vendors = { { vendor = "Ingrid Blackingot", zone = "Stormshield" } } },
    [115599] = { name = "Primal Gladiator's Longbow", vendors = { { vendor = "Ingrid Blackingot", zone = "Stormshield" } } },
    [115601] = { name = "Primal Gladiator's Rifle", vendors = { { vendor = "Ingrid Blackingot", zone = "Stormshield" } } },
    [115602] = { name = "Primal Gladiator's Pike", vendors = { { vendor = "Ingrid Blackingot", zone = "Stormshield" } } },
    [115644] = { name = "Primal Gladiator's Spellblade", vendors = { { vendor = "Ingrid Blackingot", zone = "Stormshield" } } },
    [115645] = { name = "Primal Gladiator's Gavel", vendors = { { vendor = "Ingrid Blackingot", zone = "Stormshield" } } },
    [115646] = { name = "Primal Gladiator's Mageblade", vendors = { { vendor = "Ingrid Blackingot", zone = "Stormshield" } } },
    [115648] = { name = "Primal Gladiator's Touch of Defeat", vendors = { { vendor = "Ingrid Blackingot", zone = "Stormshield" } } },
    [115649] = { name = "Primal Gladiator's Battle Staff", vendors = { { vendor = "Ingrid Blackingot", zone = "Stormshield" } } },
    [115650] = { name = "Primal Gladiator's Energy Staff", vendors = { { vendor = "Ingrid Blackingot", zone = "Stormshield" } } },
    [115725] = { name = "Primal Gladiator's Hacker", vendors = { { vendor = "Ingrid Blackingot", zone = "Stormshield" } } },
    [115726] = { name = "Primal Gladiator's Render", vendors = { { vendor = "Ingrid Blackingot", zone = "Stormshield" } } },
    [115727] = { name = "Primal Gladiator's Bonecracker", vendors = { { vendor = "Ingrid Blackingot", zone = "Stormshield" } } },
    [115728] = { name = "Primal Gladiator's Slicer", vendors = { { vendor = "Ingrid Blackingot", zone = "Stormshield" } } },
    [115729] = { name = "Primal Gladiator's Decapitator", vendors = { { vendor = "Ingrid Blackingot", zone = "Stormshield" } } },
    [115730] = { name = "Primal Gladiator's Bonegrinder", vendors = { { vendor = "Ingrid Blackingot", zone = "Stormshield" } } },
    [115731] = { name = "Primal Gladiator's Greatsword", vendors = { { vendor = "Ingrid Blackingot", zone = "Stormshield" } } },
    [118080] = { name = "Admiral Taylor's Greatsword", vendors = { { vendor = "Miril Dumonde", zone = "Spires of Arak" } } },
    [118400] = { name = "Orgrimmar Axe", vendors = { { vendor = "Grun'lek", zone = "Frostwall" } } },
    [118559] = { name = "Garden Shovel", vendors = { { vendor = "Tarnon", zone = "Frostwall" }, { vendor = "Naron Bloomthistle", zone = "Lunarfall" } } },
    [118560] = { name = "Garden Pitchfork", vendors = { { vendor = "Tarnon", zone = "Frostwall" }, { vendor = "Naron Bloomthistle", zone = "Lunarfall" } } },
    [118562] = { name = "Garden Scythe", vendors = { { vendor = "Tarnon", zone = "Frostwall" }, { vendor = "Naron Bloomthistle", zone = "Lunarfall" } } },
    [118563] = { name = "Garden Sickle", vendors = { { vendor = "Tarnon", zone = "Frostwall" }, { vendor = "Naron Bloomthistle", zone = "Lunarfall" } } },
    [118568] = { name = "Garden Hoe", vendors = { { vendor = "Tarnon", zone = "Frostwall" }, { vendor = "Naron Bloomthistle", zone = "Lunarfall" } } },
    [119207] = { name = "Meat Cleaver", vendors = { { vendor = "Madison Clark", zone = "Lunarfall" }, { vendor = "Murg", zone = "Frostwall" }, { vendor = "Murg", zone = "Frostwall" } } },
    [119226] = { name = "Blammo's Blammer", vendors = { { vendor = "Tempra", zone = "Stormshield" }, { vendor = "Kronnus", zone = "Warspear" } } },
    [119396] = { name = "Shadowspeaker's Shard", vendors = { { vendor = "Tempra", zone = "Stormshield" }, { vendor = "Kronnus", zone = "Warspear" } } },
    [119430] = { name = "Gas-Powered Stick", vendors = { { vendor = "Guh", zone = "Frostfire Ridge" } } },
    [120053] = { name = "Primal Combatant's Cleaver", vendors = { { vendor = "Bregg Coppercast", zone = "Stormshield" } } },
    [120055] = { name = "Primal Combatant's Ripper", vendors = { { vendor = "Bregg Coppercast", zone = "Stormshield" } } },
    [120056] = { name = "Primal Combatant's Pummeler", vendors = { { vendor = "Bregg Coppercast", zone = "Stormshield" } } },
    [120057] = { name = "Primal Combatant's Quickblade", vendors = { { vendor = "Bregg Coppercast", zone = "Stormshield" } } },
    [120058] = { name = "Primal Combatant's Longbow", vendors = { { vendor = "Bregg Coppercast", zone = "Stormshield" } } },
    [120060] = { name = "Primal Combatant's Rifle", vendors = { { vendor = "Bregg Coppercast", zone = "Stormshield" } } },
    [120061] = { name = "Primal Combatant's Pike", vendors = { { vendor = "Bregg Coppercast", zone = "Stormshield" } } },
    [120062] = { name = "Primal Combatant's Staff", vendors = { { vendor = "Bregg Coppercast", zone = "Stormshield" } } },
    [120063] = { name = "Primal Combatant's Spellblade", vendors = { { vendor = "Bregg Coppercast", zone = "Stormshield" } } },
    [120064] = { name = "Primal Combatant's Gavel", vendors = { { vendor = "Bregg Coppercast", zone = "Stormshield" } } },
    [120066] = { name = "Primal Combatant's Baton of Light", vendors = { { vendor = "Bregg Coppercast", zone = "Stormshield" } } },
    [120067] = { name = "Primal Combatant's Touch of Defeat", vendors = { { vendor = "Bregg Coppercast", zone = "Stormshield" } } },
    [120068] = { name = "Primal Combatant's Battle Staff", vendors = { { vendor = "Bregg Coppercast", zone = "Stormshield" } } },
    [120069] = { name = "Primal Combatant's Energy Staff", vendors = { { vendor = "Bregg Coppercast", zone = "Stormshield" } } },
    [120070] = { name = "Primal Combatant's Hacker", vendors = { { vendor = "Bregg Coppercast", zone = "Stormshield" } } },
    [120071] = { name = "Primal Combatant's Render", vendors = { { vendor = "Bregg Coppercast", zone = "Stormshield" } } },
    [120072] = { name = "Primal Combatant's Bonecracker", vendors = { { vendor = "Bregg Coppercast", zone = "Stormshield" } } },
    [120073] = { name = "Primal Combatant's Slicer", vendors = { { vendor = "Bregg Coppercast", zone = "Stormshield" } } },
    [120074] = { name = "Primal Combatant's Decapitator", vendors = { { vendor = "Bregg Coppercast", zone = "Stormshield" } } },
    [120075] = { name = "Primal Combatant's Bonegrinder", vendors = { { vendor = "Bregg Coppercast", zone = "Stormshield" } } },
    [120076] = { name = "Primal Combatant's Greatsword", vendors = { { vendor = "Bregg Coppercast", zone = "Stormshield" } } },
    [122349] = { name = "Bloodied Arcanite Reaper", vendors = { { vendor = "Krom Stoutarm", zone = "Ironforge" }, { vendor = "Estelle Gendry", zone = "Undercity" }, { vendor = "Dame Evniki Kapsalis", zone = "Icecrown" }, { vendor = "Daenrand Dawncrest", zone = "Darkmoon Island" } } },
    [122350] = { name = "Balanced Heartseeker", vendors = { { vendor = "Krom Stoutarm", zone = "Ironforge" }, { vendor = "Estelle Gendry", zone = "Undercity" }, { vendor = "Dame Evniki Kapsalis", zone = "Icecrown" }, { vendor = "Daenrand Dawncrest", zone = "Darkmoon Island" } } },
    [122351] = { name = "Venerable Dal'Rend's Sacred Charge", vendors = { { vendor = "Krom Stoutarm", zone = "Ironforge" }, { vendor = "Estelle Gendry", zone = "Undercity" }, { vendor = "Dame Evniki Kapsalis", zone = "Icecrown" }, { vendor = "Daenrand Dawncrest", zone = "Darkmoon Island" } } },
    [122352] = { name = "Charmed Ancient Bone Bow", vendors = { { vendor = "Krom Stoutarm", zone = "Ironforge" }, { vendor = "Estelle Gendry", zone = "Undercity" }, { vendor = "Dame Evniki Kapsalis", zone = "Icecrown" }, { vendor = "Daenrand Dawncrest", zone = "Darkmoon Island" } } },
    [122353] = { name = "Dignified Headmaster's Charge", vendors = { { vendor = "Krom Stoutarm", zone = "Ironforge" }, { vendor = "Estelle Gendry", zone = "Undercity" }, { vendor = "Dame Evniki Kapsalis", zone = "Icecrown" }, { vendor = "Daenrand Dawncrest", zone = "Darkmoon Island" } } },
    [122354] = { name = "Devout Aurastone Hammer", vendors = { { vendor = "Krom Stoutarm", zone = "Ironforge" }, { vendor = "Estelle Gendry", zone = "Undercity" }, { vendor = "Dame Evniki Kapsalis", zone = "Icecrown" }, { vendor = "Daenrand Dawncrest", zone = "Darkmoon Island" } } },
    [122363] = { name = "Burnished Warden Staff", vendors = { { vendor = "Krom Stoutarm", zone = "Ironforge" }, { vendor = "Estelle Gendry", zone = "Undercity" }, { vendor = "Dame Evniki Kapsalis", zone = "Icecrown" }, { vendor = "Daenrand Dawncrest", zone = "Darkmoon Island" } } },
    [122364] = { name = "Sharpened Scarlet Kris", vendors = { { vendor = "Krom Stoutarm", zone = "Ironforge" }, { vendor = "Estelle Gendry", zone = "Undercity" }, { vendor = "Knight Dameron", zone = "Wintergrasp" }, { vendor = "Stone Guard Mukar", zone = "Wintergrasp" }, { vendor = "Liliana Emberfrost", zone = "Stormwind City" } } },
    [122365] = { name = "Reforged Truesilver Champion", vendors = { { vendor = "Krom Stoutarm", zone = "Ironforge" }, { vendor = "Estelle Gendry", zone = "Undercity" }, { vendor = "Knight Dameron", zone = "Wintergrasp" }, { vendor = "Stone Guard Mukar", zone = "Wintergrasp" }, { vendor = "Liliana Emberfrost", zone = "Stormwind City" } } },
    [122366] = { name = "Upgraded Dwarven Hand Cannon", vendors = { { vendor = "Krom Stoutarm", zone = "Ironforge" }, { vendor = "Estelle Gendry", zone = "Undercity" }, { vendor = "Knight Dameron", zone = "Wintergrasp" }, { vendor = "Stone Guard Mukar", zone = "Wintergrasp" }, { vendor = "Liliana Emberfrost", zone = "Stormwind City" } } },
    [122367] = { name = "The Blessed Hammer of Grace", vendors = { { vendor = "Krom Stoutarm", zone = "Ironforge" }, { vendor = "Estelle Gendry", zone = "Undercity" }, { vendor = "Knight Dameron", zone = "Wintergrasp" }, { vendor = "Stone Guard Mukar", zone = "Wintergrasp" }, { vendor = "Liliana Emberfrost", zone = "Stormwind City" } } },
    [122368] = { name = "Grand Staff of Jordan", vendors = { { vendor = "Krom Stoutarm", zone = "Ironforge" }, { vendor = "Estelle Gendry", zone = "Undercity" }, { vendor = "Knight Dameron", zone = "Wintergrasp" }, { vendor = "Stone Guard Mukar", zone = "Wintergrasp" }, { vendor = "Liliana Emberfrost", zone = "Stormwind City" } } },
    [122369] = { name = "Battleworn Thrash Blade", vendors = { { vendor = "Krom Stoutarm", zone = "Ironforge" }, { vendor = "Estelle Gendry", zone = "Undercity" }, { vendor = "Knight Dameron", zone = "Wintergrasp" }, { vendor = "Stone Guard Mukar", zone = "Wintergrasp" }, { vendor = "Liliana Emberfrost", zone = "Stormwind City" } } },
    [122385] = { name = "Venerable Mass of McGowan", vendors = { { vendor = "Krom Stoutarm", zone = "Ironforge" }, { vendor = "Estelle Gendry", zone = "Undercity" }, { vendor = "Dame Evniki Kapsalis", zone = "Icecrown" }, { vendor = "Daenrand Dawncrest", zone = "Darkmoon Island" } } },
    [122386] = { name = "Repurposed Lava Dredger", vendors = { { vendor = "Krom Stoutarm", zone = "Ironforge" }, { vendor = "Estelle Gendry", zone = "Undercity" }, { vendor = "Dame Evniki Kapsalis", zone = "Icecrown" }, { vendor = "Daenrand Dawncrest", zone = "Darkmoon Island" } } },
    [122389] = { name = "Bloodsoaked Skullforge Reaver", vendors = { { vendor = "Krom Stoutarm", zone = "Ironforge" }, { vendor = "Estelle Gendry", zone = "Undercity" }, { vendor = "Dame Evniki Kapsalis", zone = "Icecrown" }, { vendor = "Daenrand Dawncrest", zone = "Darkmoon Island" } } },
    [122396] = { name = "Brawler's Razor Claws", vendors = { { vendor = "Quackenbush", zone = "Deeprun Tram" }, { vendor = "Paul North", zone = "Brawl'gar Arena" }, { vendor = "\"Bad Luck\" Symmes", zone = "Brawl'gar Arena" }, { vendor = "Dershway the Triggered", zone = "Deeprun Tram" } } },
    [124675] = { name = "Wild Gladiator's Cleaver", vendors = { { vendor = "Amelia Clarke", zone = "Stormshield" } } },
    [124676] = { name = "Wild Gladiator's Shanker", vendors = { { vendor = "Amelia Clarke", zone = "Stormshield" } } },
    [124677] = { name = "Wild Gladiator's Ripper", vendors = { { vendor = "Amelia Clarke", zone = "Stormshield" } } },
    [124678] = { name = "Wild Gladiator's Pummeler", vendors = { { vendor = "Amelia Clarke", zone = "Stormshield" } } },
    [124679] = { name = "Wild Gladiator's Quickblade", vendors = { { vendor = "Amelia Clarke", zone = "Stormshield" } } },
    [124680] = { name = "Wild Gladiator's Longbow", vendors = { { vendor = "Amelia Clarke", zone = "Stormshield" } } },
    [124681] = { name = "Wild Gladiator's Heavy Crossbow", vendors = { { vendor = "Amelia Clarke", zone = "Stormshield" } } },
    [124682] = { name = "Wild Gladiator's Rifle", vendors = { { vendor = "Amelia Clarke", zone = "Stormshield" } } },
    [124683] = { name = "Wild Gladiator's Pike", vendors = { { vendor = "Amelia Clarke", zone = "Stormshield" } } },
    [124684] = { name = "Wild Gladiator's Staff", vendors = { { vendor = "Amelia Clarke", zone = "Stormshield" } } },
    [124726] = { name = "Wild Gladiator's Spellblade", vendors = { { vendor = "Amelia Clarke", zone = "Stormshield" } } },
    [124727] = { name = "Wild Gladiator's Gavel", vendors = { { vendor = "Amelia Clarke", zone = "Stormshield" } } },
    [124728] = { name = "Wild Gladiator's Mageblade", vendors = { { vendor = "Amelia Clarke", zone = "Stormshield" } } },
    [124729] = { name = "Wild Gladiator's Baton of Light", vendors = { { vendor = "Amelia Clarke", zone = "Stormshield" } } },
    [124730] = { name = "Wild Gladiator's Touch of Defeat", vendors = { { vendor = "Amelia Clarke", zone = "Stormshield" } } },
    [124731] = { name = "Wild Gladiator's Battle Staff", vendors = { { vendor = "Amelia Clarke", zone = "Stormshield" } } },
    [124732] = { name = "Wild Gladiator's Energy Staff", vendors = { { vendor = "Amelia Clarke", zone = "Stormshield" } } },
    [124837] = { name = "Wild Gladiator's Hacker", vendors = { { vendor = "Amelia Clarke", zone = "Stormshield" } } },
    [124838] = { name = "Wild Gladiator's Render", vendors = { { vendor = "Amelia Clarke", zone = "Stormshield" } } },
    [124839] = { name = "Wild Gladiator's Bonecracker", vendors = { { vendor = "Amelia Clarke", zone = "Stormshield" } } },
    [124840] = { name = "Wild Gladiator's Slicer", vendors = { { vendor = "Amelia Clarke", zone = "Stormshield" } } },
    [124841] = { name = "Wild Gladiator's Decapitator", vendors = { { vendor = "Amelia Clarke", zone = "Stormshield" } } },
    [124842] = { name = "Wild Gladiator's Bonegrinder", vendors = { { vendor = "Amelia Clarke", zone = "Stormshield" } } },
    [124843] = { name = "Wild Gladiator's Greatsword", vendors = { { vendor = "Amelia Clarke", zone = "Stormshield" } } },
    [124885] = { name = "Wild Combatant's Cleaver", vendors = { { vendor = "Slugg Spinbolt", zone = "Stormshield" } } },
    [124886] = { name = "Wild Combatant's Shanker", vendors = { { vendor = "Slugg Spinbolt", zone = "Stormshield" } } },
    [124887] = { name = "Wild Combatant's Ripper", vendors = { { vendor = "Slugg Spinbolt", zone = "Stormshield" } } },
    [124888] = { name = "Wild Combatant's Pummeler", vendors = { { vendor = "Slugg Spinbolt", zone = "Stormshield" } } },
    [124889] = { name = "Wild Combatant's Quickblade", vendors = { { vendor = "Slugg Spinbolt", zone = "Stormshield" } } },
    [124890] = { name = "Wild Combatant's Longbow", vendors = { { vendor = "Slugg Spinbolt", zone = "Stormshield" } } },
    [124891] = { name = "Wild Combatant's Heavy Crossbow", vendors = { { vendor = "Slugg Spinbolt", zone = "Stormshield" } } },
    [124892] = { name = "Wild Combatant's Rifle", vendors = { { vendor = "Slugg Spinbolt", zone = "Stormshield" } } },
    [124893] = { name = "Wild Combatant's Pike", vendors = { { vendor = "Slugg Spinbolt", zone = "Stormshield" } } },
    [124894] = { name = "Wild Combatant's Staff", vendors = { { vendor = "Slugg Spinbolt", zone = "Stormshield" } } },
    [124928] = { name = "Wild Combatant's Spellblade", vendors = { { vendor = "Slugg Spinbolt", zone = "Stormshield" } } },
    [124929] = { name = "Wild Combatant's Gavel", vendors = { { vendor = "Slugg Spinbolt", zone = "Stormshield" } } },
    [124930] = { name = "Wild Combatant's Mageblade", vendors = { { vendor = "Slugg Spinbolt", zone = "Stormshield" } } },
    [124931] = { name = "Wild Combatant's Baton of Light", vendors = { { vendor = "Slugg Spinbolt", zone = "Stormshield" } } },
    [124932] = { name = "Wild Combatant's Touch of Defeat", vendors = { { vendor = "Slugg Spinbolt", zone = "Stormshield" } } },
    [124933] = { name = "Wild Combatant's Battle Staff", vendors = { { vendor = "Slugg Spinbolt", zone = "Stormshield" } } },
    [124934] = { name = "Wild Combatant's Energy Staff", vendors = { { vendor = "Slugg Spinbolt", zone = "Stormshield" } } },
    [125015] = { name = "Wild Combatant's Hacker", vendors = { { vendor = "Slugg Spinbolt", zone = "Stormshield" } } },
    [125016] = { name = "Wild Combatant's Render", vendors = { { vendor = "Slugg Spinbolt", zone = "Stormshield" } } },
    [125017] = { name = "Wild Combatant's Bonecracker", vendors = { { vendor = "Slugg Spinbolt", zone = "Stormshield" } } },
    [125018] = { name = "Wild Combatant's Slicer", vendors = { { vendor = "Slugg Spinbolt", zone = "Stormshield" } } },
    [125019] = { name = "Wild Combatant's Decapitator", vendors = { { vendor = "Slugg Spinbolt", zone = "Stormshield" } } },
    [125020] = { name = "Wild Combatant's Bonegrinder", vendors = { { vendor = "Slugg Spinbolt", zone = "Stormshield" } } },
    [125021] = { name = "Wild Combatant's Greatsword", vendors = { { vendor = "Slugg Spinbolt", zone = "Stormshield" } } },
    [125208] = { name = "Wild Gladiator's Baton of Light", vendors = { { vendor = "Cladd Dawnstrider", zone = "Warspear" } } },
    [125362] = { name = "Wild Combatant's Cleaver", vendors = { { vendor = "Fobbly Kickfix", zone = "Warspear" } } },
    [125363] = { name = "Wild Combatant's Shanker", vendors = { { vendor = "Fobbly Kickfix", zone = "Warspear" } } },
    [125364] = { name = "Wild Combatant's Ripper", vendors = { { vendor = "Fobbly Kickfix", zone = "Warspear" } } },
    [125365] = { name = "Wild Combatant's Pummeler", vendors = { { vendor = "Fobbly Kickfix", zone = "Warspear" } } },
    [125366] = { name = "Wild Combatant's Quickblade", vendors = { { vendor = "Fobbly Kickfix", zone = "Warspear" } } },
    [125367] = { name = "Wild Combatant's Longbow", vendors = { { vendor = "Fobbly Kickfix", zone = "Warspear" } } },
    [125368] = { name = "Wild Combatant's Heavy Crossbow", vendors = { { vendor = "Fobbly Kickfix", zone = "Warspear" } } },
    [125369] = { name = "Wild Combatant's Rifle", vendors = { { vendor = "Fobbly Kickfix", zone = "Warspear" } } },
    [125370] = { name = "Wild Combatant's Pike", vendors = { { vendor = "Fobbly Kickfix", zone = "Warspear" } } },
    [125371] = { name = "Wild Combatant's Staff", vendors = { { vendor = "Fobbly Kickfix", zone = "Warspear" } } },
    [125405] = { name = "Wild Combatant's Spellblade", vendors = { { vendor = "Fobbly Kickfix", zone = "Warspear" } } },
    [125406] = { name = "Wild Combatant's Gavel", vendors = { { vendor = "Fobbly Kickfix", zone = "Warspear" } } },
    [125407] = { name = "Wild Combatant's Mageblade", vendors = { { vendor = "Fobbly Kickfix", zone = "Warspear" } } },
    [125408] = { name = "Wild Combatant's Baton of Light", vendors = { { vendor = "Fobbly Kickfix", zone = "Warspear" } } },
    [125409] = { name = "Wild Combatant's Touch of Defeat", vendors = { { vendor = "Fobbly Kickfix", zone = "Warspear" } } },
    [125410] = { name = "Wild Combatant's Battle Staff", vendors = { { vendor = "Fobbly Kickfix", zone = "Warspear" } } },
    [125411] = { name = "Wild Combatant's Energy Staff", vendors = { { vendor = "Fobbly Kickfix", zone = "Warspear" } } },
    [125492] = { name = "Wild Combatant's Hacker", vendors = { { vendor = "Fobbly Kickfix", zone = "Warspear" } } },
    [125493] = { name = "Wild Combatant's Render", vendors = { { vendor = "Fobbly Kickfix", zone = "Warspear" } } },
    [125494] = { name = "Wild Combatant's Bonecracker", vendors = { { vendor = "Fobbly Kickfix", zone = "Warspear" } } },
    [125495] = { name = "Wild Combatant's Slicer", vendors = { { vendor = "Fobbly Kickfix", zone = "Warspear" } } },
    [125496] = { name = "Wild Combatant's Decapitator", vendors = { { vendor = "Fobbly Kickfix", zone = "Warspear" } } },
    [125497] = { name = "Wild Combatant's Bonegrinder", vendors = { { vendor = "Fobbly Kickfix", zone = "Warspear" } } },
    [125498] = { name = "Wild Combatant's Greatsword", vendors = { { vendor = "Fobbly Kickfix", zone = "Warspear" } } },
    [125789] = { name = "Warmongering Gladiator's Cleaver", vendors = { { vendor = "Marshal Gabriel", zone = "Ashran" }, { vendor = "Holly McTilla", zone = "Stormshield" } } },
    [125790] = { name = "Warmongering Gladiator's Shanker", vendors = { { vendor = "Marshal Gabriel", zone = "Ashran" }, { vendor = "Holly McTilla", zone = "Stormshield" } } },
    [125791] = { name = "Warmongering Gladiator's Ripper", vendors = { { vendor = "Marshal Gabriel", zone = "Ashran" }, { vendor = "Holly McTilla", zone = "Stormshield" } } },
    [125792] = { name = "Warmongering Gladiator's Pummeler", vendors = { { vendor = "Marshal Gabriel", zone = "Ashran" }, { vendor = "Holly McTilla", zone = "Stormshield" } } },
    [125793] = { name = "Warmongering Gladiator's Quickblade", vendors = { { vendor = "Marshal Gabriel", zone = "Ashran" }, { vendor = "Holly McTilla", zone = "Stormshield" } } },
    [125794] = { name = "Warmongering Gladiator's Longbow", vendors = { { vendor = "Marshal Gabriel", zone = "Ashran" }, { vendor = "Holly McTilla", zone = "Stormshield" } } },
    [125795] = { name = "Warmongering Gladiator's Heavy Crossbow", vendors = { { vendor = "Marshal Gabriel", zone = "Ashran" }, { vendor = "Holly McTilla", zone = "Stormshield" } } },
    [125796] = { name = "Warmongering Gladiator's Rifle", vendors = { { vendor = "Marshal Gabriel", zone = "Ashran" }, { vendor = "Holly McTilla", zone = "Stormshield" } } },
    [125797] = { name = "Warmongering Gladiator's Pike", vendors = { { vendor = "Marshal Gabriel", zone = "Ashran" }, { vendor = "Holly McTilla", zone = "Stormshield" } } },
    [125798] = { name = "Warmongering Gladiator's Staff", vendors = { { vendor = "Marshal Gabriel", zone = "Ashran" }, { vendor = "Holly McTilla", zone = "Stormshield" } } },
    [125840] = { name = "Warmongering Gladiator's Spellblade", vendors = { { vendor = "Marshal Gabriel", zone = "Ashran" }, { vendor = "Holly McTilla", zone = "Stormshield" } } },
    [125841] = { name = "Warmongering Gladiator's Gavel", vendors = { { vendor = "Marshal Gabriel", zone = "Ashran" }, { vendor = "Holly McTilla", zone = "Stormshield" } } },
    [125842] = { name = "Warmongering Gladiator's Mageblade", vendors = { { vendor = "Marshal Gabriel", zone = "Ashran" }, { vendor = "Holly McTilla", zone = "Stormshield" } } },
    [125843] = { name = "Warmongering Gladiator's Baton of Light", vendors = { { vendor = "Marshal Gabriel", zone = "Ashran" }, { vendor = "Holly McTilla", zone = "Stormshield" } } },
    [125844] = { name = "Warmongering Gladiator's Touch of Defeat", vendors = { { vendor = "Marshal Gabriel", zone = "Ashran" }, { vendor = "Holly McTilla", zone = "Stormshield" } } },
    [125845] = { name = "Warmongering Gladiator's Battle Staff", vendors = { { vendor = "Marshal Gabriel", zone = "Ashran" }, { vendor = "Holly McTilla", zone = "Stormshield" } } },
    [125846] = { name = "Warmongering Gladiator's Energy Staff", vendors = { { vendor = "Marshal Gabriel", zone = "Ashran" }, { vendor = "Holly McTilla", zone = "Stormshield" } } },
    [125951] = { name = "Warmongering Gladiator's Hacker", vendors = { { vendor = "Marshal Gabriel", zone = "Ashran" }, { vendor = "Holly McTilla", zone = "Stormshield" } } },
    [125952] = { name = "Warmongering Gladiator's Render", vendors = { { vendor = "Marshal Gabriel", zone = "Ashran" }, { vendor = "Holly McTilla", zone = "Stormshield" } } },
    [125953] = { name = "Warmongering Gladiator's Bonecracker", vendors = { { vendor = "Marshal Gabriel", zone = "Ashran" }, { vendor = "Holly McTilla", zone = "Stormshield" } } },
    [125954] = { name = "Warmongering Gladiator's Slicer", vendors = { { vendor = "Marshal Gabriel", zone = "Ashran" }, { vendor = "Holly McTilla", zone = "Stormshield" } } },
    [125955] = { name = "Warmongering Gladiator's Decapitator", vendors = { { vendor = "Marshal Gabriel", zone = "Ashran" }, { vendor = "Holly McTilla", zone = "Stormshield" } } },
    [125956] = { name = "Warmongering Gladiator's Bonegrinder", vendors = { { vendor = "Marshal Gabriel", zone = "Ashran" }, { vendor = "Holly McTilla", zone = "Stormshield" } } },
    [125957] = { name = "Warmongering Gladiator's Greatsword", vendors = { { vendor = "Marshal Gabriel", zone = "Ashran" }, { vendor = "Holly McTilla", zone = "Stormshield" } } },
    [125999] = { name = "Warmongering Combatant's Cleaver", vendors = { { vendor = "Marshal Karsh Stormforge", zone = "Ashran" }, { vendor = "Li \"Crunchpaw\" Tsang", zone = "Stormshield" } } },
    [126000] = { name = "Warmongering Combatant's Shanker", vendors = { { vendor = "Marshal Karsh Stormforge", zone = "Ashran" }, { vendor = "Li \"Crunchpaw\" Tsang", zone = "Stormshield" } } },
    [126001] = { name = "Warmongering Combatant's Ripper", vendors = { { vendor = "Marshal Karsh Stormforge", zone = "Ashran" }, { vendor = "Li \"Crunchpaw\" Tsang", zone = "Stormshield" } } },
    [126002] = { name = "Warmongering Combatant's Pummeler", vendors = { { vendor = "Marshal Karsh Stormforge", zone = "Ashran" }, { vendor = "Li \"Crunchpaw\" Tsang", zone = "Stormshield" } } },
    [126003] = { name = "Warmongering Combatant's Quickblade", vendors = { { vendor = "Marshal Karsh Stormforge", zone = "Ashran" }, { vendor = "Li \"Crunchpaw\" Tsang", zone = "Stormshield" } } },
    [126004] = { name = "Warmongering Combatant's Longbow", vendors = { { vendor = "Marshal Karsh Stormforge", zone = "Ashran" }, { vendor = "Li \"Crunchpaw\" Tsang", zone = "Stormshield" } } },
    [126005] = { name = "Warmongering Combatant's Heavy Crossbow", vendors = { { vendor = "Marshal Karsh Stormforge", zone = "Ashran" }, { vendor = "Li \"Crunchpaw\" Tsang", zone = "Stormshield" } } },
    [126006] = { name = "Warmongering Combatant's Rifle", vendors = { { vendor = "Marshal Karsh Stormforge", zone = "Ashran" }, { vendor = "Li \"Crunchpaw\" Tsang", zone = "Stormshield" } } },
    [126007] = { name = "Warmongering Combatant's Pike", vendors = { { vendor = "Marshal Karsh Stormforge", zone = "Ashran" }, { vendor = "Li \"Crunchpaw\" Tsang", zone = "Stormshield" } } },
    [126008] = { name = "Warmongering Combatant's Staff", vendors = { { vendor = "Marshal Karsh Stormforge", zone = "Ashran" }, { vendor = "Li \"Crunchpaw\" Tsang", zone = "Stormshield" } } },
    [126042] = { name = "Warmongering Combatant's Spellblade", vendors = { { vendor = "Marshal Karsh Stormforge", zone = "Ashran" }, { vendor = "Li \"Crunchpaw\" Tsang", zone = "Stormshield" } } },
    [126044] = { name = "Warmongering Combatant's Mageblade", vendors = { { vendor = "Marshal Karsh Stormforge", zone = "Ashran" }, { vendor = "Li \"Crunchpaw\" Tsang", zone = "Stormshield" } } },
    [126045] = { name = "Warmongering Combatant's Baton of Light", vendors = { { vendor = "Marshal Karsh Stormforge", zone = "Ashran" }, { vendor = "Li \"Crunchpaw\" Tsang", zone = "Stormshield" } } },
    [126046] = { name = "Warmongering Combatant's Touch of Defeat", vendors = { { vendor = "Marshal Karsh Stormforge", zone = "Ashran" }, { vendor = "Li \"Crunchpaw\" Tsang", zone = "Stormshield" } } },
    [126047] = { name = "Warmongering Combatant's Battle Staff", vendors = { { vendor = "Marshal Karsh Stormforge", zone = "Ashran" }, { vendor = "Li \"Crunchpaw\" Tsang", zone = "Stormshield" } } },
    [126048] = { name = "Warmongering Combatant's Energy Staff", vendors = { { vendor = "Marshal Karsh Stormforge", zone = "Ashran" }, { vendor = "Li \"Crunchpaw\" Tsang", zone = "Stormshield" } } },
    [126129] = { name = "Warmongering Combatant's Hacker", vendors = { { vendor = "Marshal Karsh Stormforge", zone = "Ashran" }, { vendor = "Li \"Crunchpaw\" Tsang", zone = "Stormshield" } } },
    [126130] = { name = "Warmongering Combatant's Render", vendors = { { vendor = "Marshal Karsh Stormforge", zone = "Ashran" }, { vendor = "Li \"Crunchpaw\" Tsang", zone = "Stormshield" } } },
    [126132] = { name = "Warmongering Combatant's Slicer", vendors = { { vendor = "Marshal Karsh Stormforge", zone = "Ashran" }, { vendor = "Li \"Crunchpaw\" Tsang", zone = "Stormshield" } } },
    [126133] = { name = "Warmongering Combatant's Decapitator", vendors = { { vendor = "Marshal Karsh Stormforge", zone = "Ashran" }, { vendor = "Li \"Crunchpaw\" Tsang", zone = "Stormshield" } } },
    [126134] = { name = "Warmongering Combatant's Bonegrinder", vendors = { { vendor = "Marshal Karsh Stormforge", zone = "Ashran" }, { vendor = "Li \"Crunchpaw\" Tsang", zone = "Stormshield" } } },
    [126135] = { name = "Warmongering Combatant's Greatsword", vendors = { { vendor = "Marshal Karsh Stormforge", zone = "Ashran" }, { vendor = "Li \"Crunchpaw\" Tsang", zone = "Stormshield" } } },
    [126268] = { name = "Warmongering Gladiator's Cleaver", vendors = { { vendor = "General Aevd", zone = "Ashran" }, { vendor = "Malukah Lightsong", zone = "Warspear" } } },
    [126269] = { name = "Warmongering Gladiator's Shanker", vendors = { { vendor = "General Aevd", zone = "Ashran" }, { vendor = "Malukah Lightsong", zone = "Warspear" } } },
    [126271] = { name = "Warmongering Gladiator's Pummeler", vendors = { { vendor = "General Aevd", zone = "Ashran" }, { vendor = "Malukah Lightsong", zone = "Warspear" } } },
    [126272] = { name = "Warmongering Gladiator's Quickblade", vendors = { { vendor = "General Aevd", zone = "Ashran" }, { vendor = "Malukah Lightsong", zone = "Warspear" } } },
    [126273] = { name = "Warmongering Gladiator's Longbow", vendors = { { vendor = "General Aevd", zone = "Ashran" }, { vendor = "Malukah Lightsong", zone = "Warspear" } } },
    [126274] = { name = "Warmongering Gladiator's Heavy Crossbow", vendors = { { vendor = "General Aevd", zone = "Ashran" }, { vendor = "Malukah Lightsong", zone = "Warspear" } } },
    [126275] = { name = "Warmongering Gladiator's Rifle", vendors = { { vendor = "General Aevd", zone = "Ashran" }, { vendor = "Malukah Lightsong", zone = "Warspear" } } },
    [126276] = { name = "Warmongering Gladiator's Pike", vendors = { { vendor = "General Aevd", zone = "Ashran" }, { vendor = "Malukah Lightsong", zone = "Warspear" } } },
    [126277] = { name = "Warmongering Gladiator's Staff", vendors = { { vendor = "General Aevd", zone = "Ashran" }, { vendor = "Malukah Lightsong", zone = "Warspear" } } },
    [126319] = { name = "Warmongering Gladiator's Spellblade", vendors = { { vendor = "General Aevd", zone = "Ashran" }, { vendor = "Malukah Lightsong", zone = "Warspear" } } },
    [126320] = { name = "Warmongering Gladiator's Gavel", vendors = { { vendor = "General Aevd", zone = "Ashran" }, { vendor = "Malukah Lightsong", zone = "Warspear" } } },
    [126321] = { name = "Warmongering Gladiator's Mageblade", vendors = { { vendor = "General Aevd", zone = "Ashran" }, { vendor = "Malukah Lightsong", zone = "Warspear" } } },
    [126322] = { name = "Warmongering Gladiator's Baton of Light", vendors = { { vendor = "General Aevd", zone = "Ashran" }, { vendor = "Malukah Lightsong", zone = "Warspear" } } },
    [126323] = { name = "Warmongering Gladiator's Touch of Defeat", vendors = { { vendor = "General Aevd", zone = "Ashran" }, { vendor = "Malukah Lightsong", zone = "Warspear" } } },
    [126324] = { name = "Warmongering Gladiator's Battle Staff", vendors = { { vendor = "General Aevd", zone = "Ashran" }, { vendor = "Malukah Lightsong", zone = "Warspear" } } },
    [126325] = { name = "Warmongering Gladiator's Energy Staff", vendors = { { vendor = "General Aevd", zone = "Ashran" }, { vendor = "Malukah Lightsong", zone = "Warspear" } } },
    [126430] = { name = "Warmongering Gladiator's Hacker", vendors = { { vendor = "General Aevd", zone = "Ashran" }, { vendor = "Malukah Lightsong", zone = "Warspear" } } },
    [126431] = { name = "Warmongering Gladiator's Render", vendors = { { vendor = "General Aevd", zone = "Ashran" }, { vendor = "Malukah Lightsong", zone = "Warspear" } } },
    [126432] = { name = "Warmongering Gladiator's Bonecracker", vendors = { { vendor = "General Aevd", zone = "Ashran" }, { vendor = "Malukah Lightsong", zone = "Warspear" } } },
    [126433] = { name = "Warmongering Gladiator's Slicer", vendors = { { vendor = "General Aevd", zone = "Ashran" }, { vendor = "Malukah Lightsong", zone = "Warspear" } } },
    [126434] = { name = "Warmongering Gladiator's Decapitator", vendors = { { vendor = "General Aevd", zone = "Ashran" }, { vendor = "Malukah Lightsong", zone = "Warspear" } } },
    [126435] = { name = "Warmongering Gladiator's Bonegrinder", vendors = { { vendor = "General Aevd", zone = "Ashran" }, { vendor = "Malukah Lightsong", zone = "Warspear" } } },
    [126436] = { name = "Warmongering Gladiator's Greatsword", vendors = { { vendor = "General Aevd", zone = "Ashran" }, { vendor = "Malukah Lightsong", zone = "Warspear" } } },
    [126476] = { name = "Warmongering Combatant's Cleaver", vendors = { { vendor = "Warlord Noktyn", zone = "Ashran" }, { vendor = "Tae'loxe Soulshrivel", zone = "Warspear" } } },
    [126477] = { name = "Warmongering Combatant's Shanker", vendors = { { vendor = "Warlord Noktyn", zone = "Ashran" }, { vendor = "Tae'loxe Soulshrivel", zone = "Warspear" } } },
    [126478] = { name = "Warmongering Combatant's Ripper", vendors = { { vendor = "Warlord Noktyn", zone = "Ashran" }, { vendor = "Tae'loxe Soulshrivel", zone = "Warspear" } } },
    [126479] = { name = "Warmongering Combatant's Pummeler", vendors = { { vendor = "Warlord Noktyn", zone = "Ashran" }, { vendor = "Tae'loxe Soulshrivel", zone = "Warspear" } } },
    [126480] = { name = "Warmongering Combatant's Quickblade", vendors = { { vendor = "Warlord Noktyn", zone = "Ashran" }, { vendor = "Tae'loxe Soulshrivel", zone = "Warspear" } } },
    [126481] = { name = "Warmongering Combatant's Longbow", vendors = { { vendor = "Warlord Noktyn", zone = "Ashran" }, { vendor = "Tae'loxe Soulshrivel", zone = "Warspear" } } },
    [126482] = { name = "Warmongering Combatant's Heavy Crossbow", vendors = { { vendor = "Warlord Noktyn", zone = "Ashran" }, { vendor = "Tae'loxe Soulshrivel", zone = "Warspear" } } },
    [126483] = { name = "Warmongering Combatant's Rifle", vendors = { { vendor = "Warlord Noktyn", zone = "Ashran" }, { vendor = "Tae'loxe Soulshrivel", zone = "Warspear" } } },
    [126484] = { name = "Warmongering Combatant's Pike", vendors = { { vendor = "Warlord Noktyn", zone = "Ashran" }, { vendor = "Tae'loxe Soulshrivel", zone = "Warspear" } } },
    [126485] = { name = "Warmongering Combatant's Staff", vendors = { { vendor = "Warlord Noktyn", zone = "Ashran" }, { vendor = "Tae'loxe Soulshrivel", zone = "Warspear" } } },
    [126519] = { name = "Warmongering Combatant's Spellblade", vendors = { { vendor = "Warlord Noktyn", zone = "Ashran" }, { vendor = "Tae'loxe Soulshrivel", zone = "Warspear" } } },
    [126520] = { name = "Warmongering Combatant's Gavel", vendors = { { vendor = "Warlord Noktyn", zone = "Ashran" }, { vendor = "Tae'loxe Soulshrivel", zone = "Warspear" } } },
    [126521] = { name = "Warmongering Combatant's Mageblade", vendors = { { vendor = "Warlord Noktyn", zone = "Ashran" }, { vendor = "Tae'loxe Soulshrivel", zone = "Warspear" } } },
    [126522] = { name = "Warmongering Combatant's Baton of Light", vendors = { { vendor = "Warlord Noktyn", zone = "Ashran" }, { vendor = "Tae'loxe Soulshrivel", zone = "Warspear" } } },
    [126523] = { name = "Warmongering Combatant's Touch of Defeat", vendors = { { vendor = "Warlord Noktyn", zone = "Ashran" }, { vendor = "Tae'loxe Soulshrivel", zone = "Warspear" } } },
    [126524] = { name = "Warmongering Combatant's Battle Staff", vendors = { { vendor = "Warlord Noktyn", zone = "Ashran" }, { vendor = "Tae'loxe Soulshrivel", zone = "Warspear" } } },
    [126525] = { name = "Warmongering Combatant's Energy Staff", vendors = { { vendor = "Warlord Noktyn", zone = "Ashran" }, { vendor = "Tae'loxe Soulshrivel", zone = "Warspear" } } },
    [126606] = { name = "Warmongering Combatant's Hacker", vendors = { { vendor = "Warlord Noktyn", zone = "Ashran" }, { vendor = "Tae'loxe Soulshrivel", zone = "Warspear" } } },
    [126607] = { name = "Warmongering Combatant's Render", vendors = { { vendor = "Warlord Noktyn", zone = "Ashran" }, { vendor = "Tae'loxe Soulshrivel", zone = "Warspear" } } },
    [126608] = { name = "Warmongering Combatant's Bonecracker", vendors = { { vendor = "Warlord Noktyn", zone = "Ashran" }, { vendor = "Tae'loxe Soulshrivel", zone = "Warspear" } } },
    [126609] = { name = "Warmongering Combatant's Slicer", vendors = { { vendor = "Warlord Noktyn", zone = "Ashran" }, { vendor = "Tae'loxe Soulshrivel", zone = "Warspear" } } },
    [126610] = { name = "Warmongering Combatant's Decapitator", vendors = { { vendor = "Warlord Noktyn", zone = "Ashran" }, { vendor = "Tae'loxe Soulshrivel", zone = "Warspear" } } },
    [126611] = { name = "Warmongering Combatant's Bonegrinder", vendors = { { vendor = "Warlord Noktyn", zone = "Ashran" }, { vendor = "Tae'loxe Soulshrivel", zone = "Warspear" } } },
    [126612] = { name = "Warmongering Combatant's Greatsword", vendors = { { vendor = "Warlord Noktyn", zone = "Ashran" }, { vendor = "Tae'loxe Soulshrivel", zone = "Warspear" } } },
    [127339] = { name = "Forgotten Champion's Blade", vendors = { { vendor = "Tempra", zone = "Stormshield" }, { vendor = "Kronnus", zone = "Warspear" } } },
    [127378] = { name = "Warmongering Combatant's Chopper", vendors = { { vendor = "Warlord Noktyn", zone = "Ashran" }, { vendor = "Tae'loxe Soulshrivel", zone = "Warspear" } } },
    [127379] = { name = "Warmongering Combatant's Chopper", vendors = { { vendor = "Marshal Karsh Stormforge", zone = "Ashran" }, { vendor = "Li \"Crunchpaw\" Tsang", zone = "Stormshield" } } },
    [129827] = { name = "The Blade of Harbingers", vendors = { { vendor = "Cupri", zone = "Shattrath City" } } },
    [129828] = { name = "Staff of the Soul-Eater", vendors = { { vendor = "Cupri", zone = "Shattrath City" } } },
    [129829] = { name = "Staff of the Forest Lord", vendors = { { vendor = "Cupri", zone = "Shattrath City" } } },
    [129845] = { name = "Crossbow of Relentless Strikes", vendors = { { vendor = "Cupri", zone = "Shattrath City" } } },
    [129856] = { name = "Vanir's Fist of Brutality", vendors = { { vendor = "Cupri", zone = "Shattrath City" } } },
    [129857] = { name = "Scryer's Blade of Focus", vendors = { { vendor = "Cupri", zone = "Shattrath City" } } },
    [129858] = { name = "Gavel of Naaru Blessings", vendors = { { vendor = "Cupri", zone = "Shattrath City" } } },
    [129861] = { name = "Sword of Unyielding Force", vendors = { { vendor = "Cupri", zone = "Shattrath City" } } },
    [129931] = { name = "The Mutilator", vendors = { { vendor = "Cupri", zone = "Shattrath City" } } },
    [129934] = { name = "Wild Gladiator's Runeaxe", vendors = { { vendor = "Amelia Clarke", zone = "Stormshield" } } },

    ------------------------------------------------------------
    -- CLASSIC (gap2 pass)
    ------------------------------------------------------------
    [37] = { name = "Worn Axe", vendors = { { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Delgo Ragetotem", zone = "Thunder Bluff" }, { vendor = "Zendo'jian", zone = "Orgrimmar" }, { vendor = "Ariyell Skyshadow", zone = "Darnassus" }, { vendor = "Glorandiir", zone = "Darnassus" } } },
    [851] = { name = "Cutlass", vendors = { { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Gunther Weller", zone = "Stormwind City" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" }, { vendor = "Kard Ragetotem", zone = "Thunder Bluff" }, { vendor = "Urtharo", zone = "Orgrimmar" } } },
    [852] = { name = "Mace", vendors = { { vendor = "Nillen Andemar", zone = "Loch Modan" }, { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Gunther Weller", zone = "Stormwind City" }, { vendor = "Gregory Ardus", zone = "Stormwind City" }, { vendor = "Kizz Bluntstrike", zone = "The Cape of Stranglethorn" } } },
    [853] = { name = "Hatchet", vendors = { { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Gunther Weller", zone = "Stormwind City" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" }, { vendor = "Delgo Ragetotem", zone = "Thunder Bluff" }, { vendor = "Urtharo", zone = "Orgrimmar" } } },
    [854] = { name = "Quarter Staff", vendors = { { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Gunther Weller", zone = "Stormwind City" }, { vendor = "Gregory Ardus", zone = "Stormwind City" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" }, { vendor = "Etu Ragetotem", zone = "Thunder Bluff" } } },
    [922] = { name = "Dacian Falx", vendors = { { vendor = "Gavin Gnarltree", zone = "Duskwood" }, { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Gunther Weller", zone = "Stormwind City" }, { vendor = "Brak Durnad", zone = "Wetlands" }, { vendor = "Kard Ragetotem", zone = "Thunder Bluff" } } },
    [923] = { name = "Longsword", vendors = { { vendor = "Gavin Gnarltree", zone = "Duskwood" }, { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Gunther Weller", zone = "Stormwind City" }, { vendor = "Brak Durnad", zone = "Wetlands" }, { vendor = "Kard Ragetotem", zone = "Thunder Bluff" } } },
    [924] = { name = "Maul", vendors = { { vendor = "Gavin Gnarltree", zone = "Duskwood" }, { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Gunther Weller", zone = "Stormwind City" }, { vendor = "Gregory Ardus", zone = "Stormwind City" }, { vendor = "Brak Durnad", zone = "Wetlands" } } },
    [925] = { name = "Flail", vendors = { { vendor = "Gavin Gnarltree", zone = "Duskwood" }, { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Gunther Weller", zone = "Stormwind City" }, { vendor = "Gregory Ardus", zone = "Stormwind City" }, { vendor = "Brak Durnad", zone = "Wetlands" } } },
    [926] = { name = "Battle Axe", vendors = { { vendor = "Gavin Gnarltree", zone = "Duskwood" }, { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Gunther Weller", zone = "Stormwind City" }, { vendor = "Brak Durnad", zone = "Wetlands" }, { vendor = "Delgo Ragetotem", zone = "Thunder Bluff" } } },
    [927] = { name = "Double Axe", vendors = { { vendor = "Gavin Gnarltree", zone = "Duskwood" }, { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Gunther Weller", zone = "Stormwind City" }, { vendor = "Brak Durnad", zone = "Wetlands" }, { vendor = "Delgo Ragetotem", zone = "Thunder Bluff" } } },
    [928] = { name = "Long Staff", vendors = { { vendor = "Gavin Gnarltree", zone = "Duskwood" }, { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Gunther Weller", zone = "Stormwind City" }, { vendor = "Gregory Ardus", zone = "Stormwind City" }, { vendor = "Brak Durnad", zone = "Wetlands" } } },
    [1194] = { name = "Bastard Sword", vendors = { { vendor = "Janos Hammerknuckle", zone = "Northshire and Elwynn Forest" }, { vendor = "Rybrad Coldbank", zone = "Coldridge Valley" }, { vendor = "Harold Raims", zone = "Deathknell" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" }, { vendor = "Marjak Keenblade", zone = "Camp Narache and Mulgore" } } },
    [1196] = { name = "Tabar", vendors = { { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Gunther Weller", zone = "Stormwind City" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" }, { vendor = "Delgo Ragetotem", zone = "Thunder Bluff" }, { vendor = "Urtharo", zone = "Orgrimmar" } } },
    [1197] = { name = "Giant Mace", vendors = { { vendor = "Nillen Andemar", zone = "Loch Modan" }, { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Gunther Weller", zone = "Stormwind City" }, { vendor = "Gregory Ardus", zone = "Stormwind City" }, { vendor = "Kizz Bluntstrike", zone = "The Cape of Stranglethorn" } } },
    [1198] = { name = "Claymore", vendors = { { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Gunther Weller", zone = "Stormwind City" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" }, { vendor = "Kard Ragetotem", zone = "Thunder Bluff" }, { vendor = "Urtharo", zone = "Orgrimmar" } } },
    [1515] = { name = "Rough Wooden Staff", vendors = { { vendor = "Salazar Bloch", zone = "Undercity" }, { vendor = "Mindri Dinkles", zone = "Howling Fjord" }, { vendor = "Booker Kells", zone = "Howling Fjord" }, { vendor = "Adelene Sunlance", zone = "Borean Tundra" }, { vendor = "Tink Brightbolt", zone = "Borean Tundra" } } },
    [2024] = { name = "Espadon", vendors = { { vendor = "Gavin Gnarltree", zone = "Duskwood" }, { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Gunther Weller", zone = "Stormwind City" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" }, { vendor = "Kard Ragetotem", zone = "Thunder Bluff" } } },
    [2025] = { name = "Bearded Axe", vendors = { { vendor = "Gavin Gnarltree", zone = "Duskwood" }, { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Gunther Weller", zone = "Stormwind City" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" }, { vendor = "Delgo Ragetotem", zone = "Thunder Bluff" } } },
    [2026] = { name = "Rock Hammer", vendors = { { vendor = "Gavin Gnarltree", zone = "Duskwood" }, { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Gunther Weller", zone = "Stormwind City" }, { vendor = "Gregory Ardus", zone = "Stormwind City" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" } } },
    [2027] = { name = "Scimitar", vendors = { { vendor = "Gavin Gnarltree", zone = "Duskwood" }, { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Gunther Weller", zone = "Stormwind City" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" }, { vendor = "Kard Ragetotem", zone = "Thunder Bluff" } } },
    [2028] = { name = "Hammer", vendors = { { vendor = "Gavin Gnarltree", zone = "Duskwood" }, { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Gunther Weller", zone = "Stormwind City" }, { vendor = "Gregory Ardus", zone = "Stormwind City" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" } } },
    [2029] = { name = "Cleaver", vendors = { { vendor = "Gavin Gnarltree", zone = "Duskwood" }, { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Gunther Weller", zone = "Stormwind City" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" }, { vendor = "Delgo Ragetotem", zone = "Thunder Bluff" } } },
    [2030] = { name = "Gnarled Staff", vendors = { { vendor = "Gavin Gnarltree", zone = "Duskwood" }, { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Gunther Weller", zone = "Stormwind City" }, { vendor = "Gregory Ardus", zone = "Stormwind City" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" } } },
    [2130] = { name = "Club", vendors = { { vendor = "Janos Hammerknuckle", zone = "Northshire and Elwynn Forest" }, { vendor = "Rybrad Coldbank", zone = "Coldridge Valley" }, { vendor = "Harold Raims", zone = "Deathknell" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" }, { vendor = "Marjak Keenblade", zone = "Camp Narache and Mulgore" } } },
    [2131] = { name = "Shortsword", vendors = { { vendor = "Janos Hammerknuckle", zone = "Northshire and Elwynn Forest" }, { vendor = "Rybrad Coldbank", zone = "Coldridge Valley" }, { vendor = "Harold Raims", zone = "Deathknell" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" }, { vendor = "Marjak Keenblade", zone = "Camp Narache and Mulgore" } } },
    [2132] = { name = "Short Staff", vendors = { { vendor = "Janos Hammerknuckle", zone = "Northshire and Elwynn Forest" }, { vendor = "Rybrad Coldbank", zone = "Coldridge Valley" }, { vendor = "Harold Raims", zone = "Deathknell" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" }, { vendor = "Marjak Keenblade", zone = "Camp Narache and Mulgore" } } },
    [2134] = { name = "Hand Axe", vendors = { { vendor = "Janos Hammerknuckle", zone = "Northshire and Elwynn Forest" }, { vendor = "Rybrad Coldbank", zone = "Coldridge Valley" }, { vendor = "Harold Raims", zone = "Deathknell" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" }, { vendor = "Marjak Keenblade", zone = "Camp Narache and Mulgore" } } },
    [2139] = { name = "Dirk", vendors = { { vendor = "Janos Hammerknuckle", zone = "Northshire and Elwynn Forest" }, { vendor = "Rybrad Coldbank", zone = "Coldridge Valley" }, { vendor = "Harold Raims", zone = "Deathknell" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" }, { vendor = "Marjak Keenblade", zone = "Camp Narache and Mulgore" } } },
    [2207] = { name = "Jambiya", vendors = { { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Gunther Weller", zone = "Stormwind City" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" }, { vendor = "Kard Ragetotem", zone = "Thunder Bluff" }, { vendor = "Urtharo", zone = "Orgrimmar" } } },
    [2208] = { name = "Poniard", vendors = { { vendor = "Gavin Gnarltree", zone = "Duskwood" }, { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Gunther Weller", zone = "Stormwind City" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" }, { vendor = "Kard Ragetotem", zone = "Thunder Bluff" } } },
    [2209] = { name = "Kris", vendors = { { vendor = "Gavin Gnarltree", zone = "Duskwood" }, { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Gunther Weller", zone = "Stormwind City" }, { vendor = "Brak Durnad", zone = "Wetlands" }, { vendor = "Kard Ragetotem", zone = "Thunder Bluff" } } },
    [2361] = { name = "Battleworn Bludgeon", vendors = { { vendor = "Gerik Koen", zone = "Stormwind City" }, { vendor = "Galthuk", zone = "Orgrimmar" }, { vendor = "Ealyshia Dewwhisper", zone = "Darnassus" }, { vendor = "Geoffrey Hartwell", zone = "Undercity" }, { vendor = "Ohanko", zone = "Thunder Bluff" } } },
    [2479] = { name = "Broad Axe", vendors = { { vendor = "Janos Hammerknuckle", zone = "Northshire and Elwynn Forest" }, { vendor = "Rybrad Coldbank", zone = "Coldridge Valley" }, { vendor = "Harold Raims", zone = "Deathknell" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" }, { vendor = "Marjak Keenblade", zone = "Camp Narache and Mulgore" } } },
    [2480] = { name = "Large Club", vendors = { { vendor = "Janos Hammerknuckle", zone = "Northshire and Elwynn Forest" }, { vendor = "Rybrad Coldbank", zone = "Coldridge Valley" }, { vendor = "Harold Raims", zone = "Deathknell" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" }, { vendor = "Marjak Keenblade", zone = "Camp Narache and Mulgore" } } },
    [2488] = { name = "Gladius", vendors = { { vendor = "Corina Steele", zone = "Elwynn Forest" }, { vendor = "Grawn Thromwyn", zone = "Dun Morogh" }, { vendor = "Frast Dokner", zone = "Dun Morogh" }, { vendor = "Oliver Dwor", zone = "Tirisfal Glades" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" } } },
    [2489] = { name = "Two-Handed Sword", vendors = { { vendor = "Corina Steele", zone = "Elwynn Forest" }, { vendor = "Grawn Thromwyn", zone = "Dun Morogh" }, { vendor = "Frast Dokner", zone = "Dun Morogh" }, { vendor = "Oliver Dwor", zone = "Tirisfal Glades" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" } } },
    [2490] = { name = "Tomahawk", vendors = { { vendor = "Corina Steele", zone = "Elwynn Forest" }, { vendor = "Grawn Thromwyn", zone = "Dun Morogh" }, { vendor = "Frast Dokner", zone = "Dun Morogh" }, { vendor = "Oliver Dwor", zone = "Tirisfal Glades" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" } } },
    [2491] = { name = "Large Axe", vendors = { { vendor = "Corina Steele", zone = "Elwynn Forest" }, { vendor = "Grawn Thromwyn", zone = "Dun Morogh" }, { vendor = "Frast Dokner", zone = "Dun Morogh" }, { vendor = "Oliver Dwor", zone = "Tirisfal Glades" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" } } },
    [2492] = { name = "Cudgel", vendors = { { vendor = "Corina Steele", zone = "Elwynn Forest" }, { vendor = "Nillen Andemar", zone = "Loch Modan" }, { vendor = "Grawn Thromwyn", zone = "Dun Morogh" }, { vendor = "Gregory Ardus", zone = "Stormwind City" }, { vendor = "Frast Dokner", zone = "Dun Morogh" } } },
    [2493] = { name = "Wooden Mallet", vendors = { { vendor = "Corina Steele", zone = "Elwynn Forest" }, { vendor = "Nillen Andemar", zone = "Loch Modan" }, { vendor = "Grawn Thromwyn", zone = "Dun Morogh" }, { vendor = "Gregory Ardus", zone = "Stormwind City" }, { vendor = "Frast Dokner", zone = "Dun Morogh" } } },
    [2494] = { name = "Stiletto", vendors = { { vendor = "Corina Steele", zone = "Elwynn Forest" }, { vendor = "Grawn Thromwyn", zone = "Dun Morogh" }, { vendor = "Frast Dokner", zone = "Dun Morogh" }, { vendor = "Oliver Dwor", zone = "Tirisfal Glades" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" } } },
    [2495] = { name = "Walking Stick", vendors = { { vendor = "Corina Steele", zone = "Elwynn Forest" }, { vendor = "Grawn Thromwyn", zone = "Dun Morogh" }, { vendor = "Frast Dokner", zone = "Dun Morogh" }, { vendor = "Oliver Dwor", zone = "Tirisfal Glades" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" } } },
    [2504] = { name = "Worn Shortbow", vendors = { { vendor = "Lina Stover", zone = "Stormwind City" }, { vendor = "Nathaniel Steenwick", zone = "Undercity" }, { vendor = "Narianna", zone = "Moonglade" }, { vendor = "Paelarin", zone = "Eversong Woods (Burning Crusade)" }, { vendor = "Narina", zone = "Ghostlands" } } },
    [2505] = { name = "Polished Shortbow", vendors = { { vendor = "Lina Stover", zone = "Stormwind City" }, { vendor = "Nathaniel Steenwick", zone = "Undercity" }, { vendor = "Narianna", zone = "Moonglade" }, { vendor = "Paelarin", zone = "Eversong Woods (Burning Crusade)" }, { vendor = "Narina", zone = "Ghostlands" } } },
    [2506] = { name = "Hornwood Recurve Bow", vendors = { { vendor = "Rallic Finn", zone = "Elwynn Forest" }, { vendor = "Lina Stover", zone = "Stormwind City" }, { vendor = "Ghrawt", zone = "Durotar" }, { vendor = "Keina", zone = "Shadowglen" }, { vendor = "Jeena Featherbow", zone = "Teldrassil" } } },
    [2507] = { name = "Laminated Recurve Bow", vendors = { { vendor = "Kimberly Hiett", zone = "Redridge Mountains" }, { vendor = "Rallic Finn", zone = "Elwynn Forest" }, { vendor = "Lina Stover", zone = "Stormwind City" }, { vendor = "Naela Trance", zone = "Wetlands" }, { vendor = "William MacGregor", zone = "Westfall" } } },
    [2508] = { name = "Old Blunderbuss", vendors = { { vendor = "Thulman Flintcrag", zone = "Stormwind City" } } },
    [2509] = { name = "Ornate Blunderbuss", vendors = { { vendor = "Hegnar Rumbleshot", zone = "Dun Morogh" }, { vendor = "Lina Stover", zone = "Stormwind City" }, { vendor = "Vrok Blunderblast", zone = "Loch Modan" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" }, { vendor = "Hogor Thunderhoof", zone = "Thunder Bluff" } } },
    [2510] = { name = "Solid Blunderbuss", vendors = { { vendor = "Hegnar Rumbleshot", zone = "Dun Morogh" }, { vendor = "Hogor Thunderhoof", zone = "Thunder Bluff" }, { vendor = "Kennah Hawkseye", zone = "Mulgore" }, { vendor = "Nicholas Atwood", zone = "Undercity" }, { vendor = "Bretta Goldfury", zone = "Ironforge" } } },
    [2511] = { name = "Hunter's Boomstick", vendors = { { vendor = "Lina Stover", zone = "Stormwind City" }, { vendor = "Vrok Blunderblast", zone = "Loch Modan" }, { vendor = "Irene Sureshot", zone = "Loch Modan" }, { vendor = "Jyn Stonehoof", zone = "Thunder Bluff" }, { vendor = "Hogor Thunderhoof", zone = "Thunder Bluff" } } },
    [2520] = { name = "Broadsword", vendors = { { vendor = "Vharr", zone = "Northern Stranglethorn" }, { vendor = "Heinrich Stone", zone = "Stormwind City" }, { vendor = "Quartermaster Hicks", zone = "Elwynn Forest" }, { vendor = "Zarena Cromwind", zone = "The Cape of Stranglethorn" }, { vendor = "Jutak", zone = "The Cape of Stranglethorn" } } },
    [2521] = { name = "Flamberge", vendors = { { vendor = "Vharr", zone = "Northern Stranglethorn" }, { vendor = "Gerik Koen", zone = "Stormwind City" }, { vendor = "Quartermaster Hicks", zone = "Elwynn Forest" }, { vendor = "Zarena Cromwind", zone = "The Cape of Stranglethorn" }, { vendor = "Jutak", zone = "The Cape of Stranglethorn" } } },
    [2522] = { name = "Crescent Axe", vendors = { { vendor = "Vharr", zone = "Northern Stranglethorn" }, { vendor = "Quartermaster Hicks", zone = "Elwynn Forest" }, { vendor = "Zarena Cromwind", zone = "The Cape of Stranglethorn" }, { vendor = "Jaquilina Dramet", zone = "Northern Stranglethorn" }, { vendor = "Gibbert", zone = "Un'Goro Crater" } } },
    [2523] = { name = "Bullova", vendors = { { vendor = "Vharr", zone = "Northern Stranglethorn" }, { vendor = "Gerik Koen", zone = "Stormwind City" }, { vendor = "Quartermaster Hicks", zone = "Elwynn Forest" }, { vendor = "Zarena Cromwind", zone = "The Cape of Stranglethorn" }, { vendor = "Jaquilina Dramet", zone = "Northern Stranglethorn" } } },
    [2524] = { name = "Truncheon", vendors = { { vendor = "Vharr", zone = "Northern Stranglethorn" }, { vendor = "Jannos Ironwill", zone = "Arathi Highlands" }, { vendor = "Quartermaster Hicks", zone = "Elwynn Forest" }, { vendor = "Zarena Cromwind", zone = "The Cape of Stranglethorn" }, { vendor = "Gibbert", zone = "Un'Goro Crater" } } },
    [2525] = { name = "War Hammer", vendors = { { vendor = "Vharr", zone = "Northern Stranglethorn" }, { vendor = "Gerik Koen", zone = "Stormwind City" }, { vendor = "Jannos Ironwill", zone = "Arathi Highlands" }, { vendor = "Quartermaster Hicks", zone = "Elwynn Forest" }, { vendor = "Zarena Cromwind", zone = "The Cape of Stranglethorn" } } },
    [2526] = { name = "Main Gauche", vendors = { { vendor = "Vharr", zone = "Northern Stranglethorn" }, { vendor = "Heinrich Stone", zone = "Stormwind City" }, { vendor = "Quartermaster Hicks", zone = "Elwynn Forest" }, { vendor = "Zarena Cromwind", zone = "The Cape of Stranglethorn" }, { vendor = "Jutak", zone = "The Cape of Stranglethorn" } } },
    [2527] = { name = "Battle Staff", vendors = { { vendor = "Vharr", zone = "Northern Stranglethorn" }, { vendor = "Allan Hafgan", zone = "Stormwind City" }, { vendor = "Jannos Ironwill", zone = "Arathi Highlands" }, { vendor = "Quartermaster Hicks", zone = "Elwynn Forest" }, { vendor = "Zarena Cromwind", zone = "The Cape of Stranglethorn" } } },
    [2528] = { name = "Falchion", vendors = { { vendor = "Hartash", zone = "Swamp of Sorrows" }, { vendor = "Felder Stover", zone = "Burning Steppes" }, { vendor = "Heinrich Stone", zone = "Stormwind City" }, { vendor = "Sranda", zone = "Badlands" }, { vendor = "Jutak", zone = "The Cape of Stranglethorn" } } },
    [2529] = { name = "Zweihander", vendors = { { vendor = "Hartash", zone = "Swamp of Sorrows" }, { vendor = "Felder Stover", zone = "Burning Steppes" }, { vendor = "Gerik Koen", zone = "Stormwind City" }, { vendor = "Sranda", zone = "Badlands" }, { vendor = "Jutak", zone = "The Cape of Stranglethorn" } } },
    [2530] = { name = "Francisca", vendors = { { vendor = "Hartash", zone = "Swamp of Sorrows" }, { vendor = "Felder Stover", zone = "Burning Steppes" }, { vendor = "Sranda", zone = "Badlands" }, { vendor = "Jaquilina Dramet", zone = "Northern Stranglethorn" }, { vendor = "Gibbert", zone = "Un'Goro Crater" } } },
    [2531] = { name = "Great Axe", vendors = { { vendor = "Hartash", zone = "Swamp of Sorrows" }, { vendor = "Felder Stover", zone = "Burning Steppes" }, { vendor = "Gerik Koen", zone = "Stormwind City" }, { vendor = "Sranda", zone = "Badlands" }, { vendor = "Jaquilina Dramet", zone = "Northern Stranglethorn" } } },
    [2532] = { name = "Morning Star", vendors = { { vendor = "Hartash", zone = "Swamp of Sorrows" }, { vendor = "Felder Stover", zone = "Burning Steppes" }, { vendor = "Sranda", zone = "Badlands" }, { vendor = "Jannos Ironwill", zone = "Arathi Highlands" }, { vendor = "Gibbert", zone = "Un'Goro Crater" } } },
    [2533] = { name = "War Maul", vendors = { { vendor = "Hartash", zone = "Swamp of Sorrows" }, { vendor = "Felder Stover", zone = "Burning Steppes" }, { vendor = "Gerik Koen", zone = "Stormwind City" }, { vendor = "Sranda", zone = "Badlands" }, { vendor = "Jannos Ironwill", zone = "Arathi Highlands" } } },
    [2534] = { name = "Rondel", vendors = { { vendor = "Hartash", zone = "Swamp of Sorrows" }, { vendor = "Felder Stover", zone = "Burning Steppes" }, { vendor = "Heinrich Stone", zone = "Stormwind City" }, { vendor = "Sranda", zone = "Badlands" }, { vendor = "Jutak", zone = "The Cape of Stranglethorn" } } },
    [2535] = { name = "War Staff", vendors = { { vendor = "Hartash", zone = "Swamp of Sorrows" }, { vendor = "Felder Stover", zone = "Burning Steppes" }, { vendor = "Allan Hafgan", zone = "Stormwind City" }, { vendor = "Sranda", zone = "Badlands" }, { vendor = "Jannos Ironwill", zone = "Arathi Highlands" } } },
    [3023] = { name = "Large Bore Blunderbuss", vendors = { { vendor = "Lina Stover", zone = "Stormwind City" }, { vendor = "Murndan Derth", zone = "Wetlands" }, { vendor = "Irene Sureshot", zone = "Loch Modan" }, { vendor = "Hogor Thunderhoof", zone = "Thunder Bluff" }, { vendor = "Henry Chapal", zone = "Redridge Mountains" } } },
    [3024] = { name = "BKP 2700 \"Enforcer\"", vendors = { { vendor = "Lina Stover", zone = "Stormwind City" }, { vendor = "Murndan Derth", zone = "Wetlands" }, { vendor = "Hogor Thunderhoof", zone = "Thunder Bluff" }, { vendor = "Kaja", zone = "Orgrimmar" }, { vendor = "Nicholas Atwood", zone = "Undercity" } } },
    [3025] = { name = "BKP 42 \"Ultra\"", vendors = { { vendor = "Kaja", zone = "Orgrimmar" }, { vendor = "Blizrik Buckshot", zone = "Tanaris" }, { vendor = "Cawind Trueaim", zone = "Feralas" }, { vendor = "Wixxrak", zone = "Winterspring" }, { vendor = "Mixie Farshot", zone = "Hellfire Peninsula" } } },
    [3026] = { name = "Reinforced Bow", vendors = { { vendor = "Avette Fellwood", zone = "Duskwood" }, { vendor = "Kimberly Hiett", zone = "Redridge Mountains" }, { vendor = "Lina Stover", zone = "Stormwind City" }, { vendor = "Frederick Stover", zone = "Stormwind City" }, { vendor = "Naela Trance", zone = "Wetlands" } } },
    [3027] = { name = "Heavy Recurve Bow", vendors = { { vendor = "Avette Fellwood", zone = "Duskwood" }, { vendor = "Lina Stover", zone = "Stormwind City" }, { vendor = "Frederick Stover", zone = "Stormwind City" }, { vendor = "Edwina Monzor", zone = "Wetlands" }, { vendor = "Haren Kanmae", zone = "The Cape of Stranglethorn" } } },
    [4565] = { name = "Simple Dagger", vendors = { { vendor = "Jasper Fel", zone = "Stormwind City" }, { vendor = "Sloan McCoy", zone = "Stormwind City" }, { vendor = "Samor Festivus", zone = "Wetlands" }, { vendor = "Sly Garrett", zone = "The Cape of Stranglethorn" }, { vendor = "Gerald Crawley", zone = "Redridge Mountains" } } },
    [4765] = { name = "Enamelled Broadsword", vendors = { { vendor = "Morhan Coppertongue", zone = "Loch Modan" }, { vendor = "Nargal Deatheye", zone = "Northern Barrens" }, { vendor = "Lizzarik", zone = "Northern Barrens" }, { vendor = "Vrang Wildgore", zone = "Northern Barrens" } } },
    [4766] = { name = "Feral Blade", vendors = { { vendor = "Morhan Coppertongue", zone = "Loch Modan" }, { vendor = "Nargal Deatheye", zone = "Northern Barrens" }, { vendor = "Lizzarik", zone = "Northern Barrens" }, { vendor = "Vrang Wildgore", zone = "Northern Barrens" } } },
    [4777] = { name = "Ironwood Maul", vendors = { { vendor = "Nillen Andemar", zone = "Loch Modan" }, { vendor = "Antonio Perelli", zone = "Redridge Mountains, Duskwood, Westfall and Elwynn Forest" }, { vendor = "Kizz Bluntstrike", zone = "The Cape of Stranglethorn" }, { vendor = "Wallace the Blind", zone = "Silverpine Forest" }, { vendor = "Lizzarik", zone = "Northern Barrens" } } },
    [4778] = { name = "Heavy Spiked Mace", vendors = { { vendor = "Nillen Andemar", zone = "Loch Modan" }, { vendor = "Antonio Perelli", zone = "Redridge Mountains, Duskwood, Westfall and Elwynn Forest" }, { vendor = "Kizz Bluntstrike", zone = "The Cape of Stranglethorn" }, { vendor = "Wallace the Blind", zone = "Silverpine Forest" }, { vendor = "Lizzarik", zone = "Northern Barrens" } } },
    [4817] = { name = "Blessed Claymore", vendors = { { vendor = "Brak Durnad", zone = "Wetlands" }, { vendor = "Wallace the Blind", zone = "Silverpine Forest" }, { vendor = "Ott", zone = "Hillsbrad Foothills" }, { vendor = "Piter Verance", zone = "Dustwallow Marsh" }, { vendor = "Harland Waldek", zone = "Hillsbrad Foothills" } } },
    [4818] = { name = "Executioner's Sword", vendors = { { vendor = "Antonio Perelli", zone = "Redridge Mountains, Duskwood, Westfall and Elwynn Forest" }, { vendor = "Brak Durnad", zone = "Wetlands" }, { vendor = "Wallace the Blind", zone = "Silverpine Forest" }, { vendor = "Ott", zone = "Hillsbrad Foothills" }, { vendor = "Piter Verance", zone = "Dustwallow Marsh" } } },
    [4824] = { name = "Blurred Axe", vendors = { { vendor = "Charys Yserian", zone = "Stormwind City" }, { vendor = "Dark Iron Entrepreneur", zone = "Arathi Highlands" }, { vendor = "Ott", zone = "Hillsbrad Foothills" }, { vendor = "Piter Verance", zone = "Dustwallow Marsh" } } },
    [4825] = { name = "Callous Axe", vendors = { { vendor = "Charys Yserian", zone = "Stormwind City" }, { vendor = "Dark Iron Entrepreneur", zone = "Arathi Highlands" }, { vendor = "Ott", zone = "Hillsbrad Foothills" }, { vendor = "Piter Verance", zone = "Dustwallow Marsh" } } },
    [4826] = { name = "Marauder Axe", vendors = { { vendor = "Charys Yserian", zone = "Stormwind City" }, { vendor = "Dark Iron Entrepreneur", zone = "Arathi Highlands" }, { vendor = "Ott", zone = "Hillsbrad Foothills" }, { vendor = "Piter Verance", zone = "Dustwallow Marsh" } } },
    [5208] = { name = "Smoldering Wand", vendors = { { vendor = "Ardwyn Cailen", zone = "Stormwind City" }, { vendor = "Harick Boulderdrum", zone = "Ironforge" }, { vendor = "Zane Bradford", zone = "Undercity" }, { vendor = "Katis", zone = "Orgrimmar" }, { vendor = "Oss", zone = "The Exodar" } } },
    [5209] = { name = "Gloom Wand", vendors = { { vendor = "Ardwyn Cailen", zone = "Stormwind City" }, { vendor = "Harick Boulderdrum", zone = "Ironforge" }, { vendor = "Zane Bradford", zone = "Undercity" }, { vendor = "Katis", zone = "Orgrimmar" }, { vendor = "Oss", zone = "The Exodar" } } },
    [5210] = { name = "Burning Wand", vendors = { { vendor = "Ardwyn Cailen", zone = "Stormwind City" }, { vendor = "Harick Boulderdrum", zone = "Ironforge" }, { vendor = "Zane Bradford", zone = "Undercity" }, { vendor = "Katis", zone = "Orgrimmar" }, { vendor = "Oss", zone = "The Exodar" } } },
    [5211] = { name = "Dusk Wand", vendors = { { vendor = "Ardwyn Cailen", zone = "Stormwind City" }, { vendor = "Harick Boulderdrum", zone = "Ironforge" }, { vendor = "Zane Bradford", zone = "Undercity" }, { vendor = "Katis", zone = "Orgrimmar" }, { vendor = "Oss", zone = "The Exodar" } } },
    [5236] = { name = "Combustible Wand", vendors = { { vendor = "Ardwyn Cailen", zone = "Stormwind City" }, { vendor = "Harick Boulderdrum", zone = "Ironforge" }, { vendor = "Zane Bradford", zone = "Undercity" }, { vendor = "Katis", zone = "Orgrimmar" }, { vendor = "Oss", zone = "The Exodar" } } },
    [5238] = { name = "Pitchwood Wand", vendors = { { vendor = "Ardwyn Cailen", zone = "Stormwind City" }, { vendor = "Harick Boulderdrum", zone = "Ironforge" }, { vendor = "Zane Bradford", zone = "Undercity" }, { vendor = "Katis", zone = "Orgrimmar" }, { vendor = "Oss", zone = "The Exodar" } } },
    [5239] = { name = "Blackbone Wand", vendors = { { vendor = "Ardwyn Cailen", zone = "Stormwind City" }, { vendor = "Harick Boulderdrum", zone = "Ironforge" }, { vendor = "Zane Bradford", zone = "Undercity" }, { vendor = "Katis", zone = "Orgrimmar" }, { vendor = "Oss", zone = "The Exodar" } } },
    [5347] = { name = "Pestilent Wand", vendors = { { vendor = "Ardwyn Cailen", zone = "Stormwind City" }, { vendor = "Harick Boulderdrum", zone = "Ironforge" }, { vendor = "Zane Bradford", zone = "Undercity" }, { vendor = "Katis", zone = "Orgrimmar" }, { vendor = "Oss", zone = "The Exodar" } } },
    [8177] = { name = "Practice Sword", vendors = { { vendor = "Headhunter Lani", zone = "Dazar'alor" }, { vendor = "Spearmon Kol", zone = "Zuldazar" }, { vendor = "Arbo", zone = "Dazar'alor" } } },
    [11303] = { name = "Fine Shortbow", vendors = { { vendor = "Rallic Finn", zone = "Elwynn Forest" }, { vendor = "Frederick Stover", zone = "Stormwind City" }, { vendor = "Kuna Thunderhorn", zone = "Thunder Bluff" }, { vendor = "Kaja", zone = "Orgrimmar" } } },
    [11304] = { name = "Fine Longbow", vendors = { { vendor = "Avette Fellwood", zone = "Duskwood" }, { vendor = "Naela Trance", zone = "Wetlands" }, { vendor = "William MacGregor", zone = "Westfall" }, { vendor = "Cliff Hadin", zone = "Loch Modan" }, { vendor = "Uthrok", zone = "Northern Barrens" } } },
    [11305] = { name = "Dense Shortbow", vendors = { { vendor = "Haren Kanmae", zone = "The Cape of Stranglethorn" }, { vendor = "Bhaldaran Ravenshade", zone = "Ashenvale" }, { vendor = "Jensen Farran", zone = "Dustwallow Marsh" }, { vendor = "Zanara", zone = "Dustwallow Marsh" }, { vendor = "Mu'uta", zone = "Arathi Highlands" } } },
    [11306] = { name = "Sturdy Recurve", vendors = { { vendor = "Frederick Stover", zone = "Stormwind City" }, { vendor = "Kuna Thunderhorn", zone = "Thunder Bluff" }, { vendor = "Kaja", zone = "Orgrimmar" }, { vendor = "Landria", zone = "Darnassus" }, { vendor = "Abigail Sawyer", zone = "Undercity" } } },
    [11307] = { name = "Massive Longbow", vendors = { { vendor = "Frederick Stover", zone = "Stormwind City" }, { vendor = "Kuna Thunderhorn", zone = "Thunder Bluff" }, { vendor = "Kaja", zone = "Orgrimmar" }, { vendor = "Abigail Sawyer", zone = "Undercity" }, { vendor = "Skolmin Goldfury", zone = "Ironforge" } } },
    [11308] = { name = "Sylvan Shortbow", vendors = { { vendor = "Landria", zone = "Darnassus" }, { vendor = "Cawind Trueaim", zone = "Feralas" }, { vendor = "Narianna", zone = "Moonglade" }, { vendor = "Cahill", zone = "Blade's Edge Mountains" }, { vendor = "Talu Frosthoof", zone = "Howling Fjord" } } },
    [12247] = { name = "Broad Bladed Knife", vendors = { { vendor = "Gavin Gnarltree", zone = "Duskwood" }, { vendor = "Ott", zone = "Hillsbrad Foothills" }, { vendor = "Turian", zone = "Darnassus" }, { vendor = "Ott", zone = "Tarren Mill vs Southshore" }, { vendor = "Ott", zone = "Hillsbrad Foothills" } } },
    [12248] = { name = "Daring Dirk", vendors = { { vendor = "Vharr", zone = "Northern Stranglethorn" }, { vendor = "Jutak", zone = "The Cape of Stranglethorn" }, { vendor = "Hans Weston", zone = "Dustwallow Marsh" } } },
    [12249] = { name = "Merciless Axe", vendors = { { vendor = "Gavin Gnarltree", zone = "Duskwood" }, { vendor = "Delgo Ragetotem", zone = "Thunder Bluff" }, { vendor = "Ott", zone = "Hillsbrad Foothills" }, { vendor = "Glorandiir", zone = "Darnassus" }, { vendor = "Hae'Wilani", zone = "Desolace" } } },
    [12250] = { name = "Midnight Axe", vendors = { { vendor = "Vharr", zone = "Northern Stranglethorn" }, { vendor = "Jaquilina Dramet", zone = "Northern Stranglethorn" }, { vendor = "Zulrg", zone = "Dustwallow Marsh" }, { vendor = "Hans Weston", zone = "Dustwallow Marsh" }, { vendor = "Hae'Wilani", zone = "Desolace" } } },
    [12251] = { name = "Big Stick", vendors = { { vendor = "Zarena Cromwind", zone = "The Cape of Stranglethorn" }, { vendor = "Zulrg", zone = "Dustwallow Marsh" }, { vendor = "Ahemen", zone = "Shattrath City" } } },
    [12252] = { name = "Staff of Protection", vendors = { { vendor = "Zarena Cromwind", zone = "The Cape of Stranglethorn" }, { vendor = "Urumir Stavebright", zone = "Shattrath City" } } },
    [12282] = { name = "Worn Battleaxe", vendors = { { vendor = "Gerik Koen", zone = "Stormwind City" }, { vendor = "Galthuk", zone = "Orgrimmar" }, { vendor = "Ealyshia Dewwhisper", zone = "Darnassus" }, { vendor = "Geoffrey Hartwell", zone = "Undercity" }, { vendor = "Ohanko", zone = "Thunder Bluff" } } },
    [12584] = { name = "Grand Marshal's Longsword", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" } } },
    [15807] = { name = "Light Crossbow", vendors = { { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Benijah Fenner", zone = "Undercity" }, { vendor = "Thalgus Thunderfist", zone = "Ironforge" }, { vendor = "Avelii", zone = "The Exodar" }, { vendor = "Mura", zone = "Azuremyst Isle" } } },
    [15808] = { name = "Fine Light Crossbow", vendors = { { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Benijah Fenner", zone = "Undercity" }, { vendor = "Thalgus Thunderfist", zone = "Ironforge" }, { vendor = "Avelii", zone = "The Exodar" }, { vendor = "Mura", zone = "Azuremyst Isle" } } },
    [15809] = { name = "Heavy Crossbow", vendors = { { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Benijah Fenner", zone = "Undercity" }, { vendor = "Thalgus Thunderfist", zone = "Ironforge" }, { vendor = "Avelii", zone = "The Exodar" }, { vendor = "Mura", zone = "Azuremyst Isle" } } },
    [15810] = { name = "Short Spear", vendors = { { vendor = "Gunther Weller", zone = "Stormwind City" }, { vendor = "Francis Eliot", zone = "Undercity" }, { vendor = "Salaran", zone = "Blasted Lands" }, { vendor = "Patricia Marshall", zone = "Eastern Plaguelands" }, { vendor = "Kathryn Humphries", zone = "Eastern Plaguelands" } } },
    [15811] = { name = "Heavy Spear", vendors = { { vendor = "Gunther Weller", zone = "Stormwind City" }, { vendor = "Francis Eliot", zone = "Undercity" }, { vendor = "Salaran", zone = "Blasted Lands" }, { vendor = "Patricia Marshall", zone = "Eastern Plaguelands" }, { vendor = "Kathryn Humphries", zone = "Eastern Plaguelands" } } },
    [15903] = { name = "Slicing Claw", vendors = { { vendor = "Shoma", zone = "Orgrimmar" }, { vendor = "Ariyell Skyshadow", zone = "Darnassus" }, { vendor = "Thalgus Thunderfist", zone = "Ironforge" }, { vendor = "Lissaf", zone = "Shattrath City" } } },
    [15904] = { name = "Deadly Fist Blades", vendors = { { vendor = "Shoma", zone = "Orgrimmar" }, { vendor = "Ariyell Skyshadow", zone = "Darnassus" }, { vendor = "Thalgus Thunderfist", zone = "Ironforge" }, { vendor = "Lissaf", zone = "Shattrath City" } } },
    [15905] = { name = "Brass Knuckles", vendors = { { vendor = "Shoma", zone = "Orgrimmar" }, { vendor = "Ariyell Skyshadow", zone = "Darnassus" }, { vendor = "Thalgus Thunderfist", zone = "Ironforge" }, { vendor = "Lissaf", zone = "Shattrath City" }, { vendor = "Annie Lacier", zone = "Boralus" } } },
    [15906] = { name = "Left-Handed Brass Knuckles", vendors = { { vendor = "Raelis Dawnstar", zone = "Sunstrider Isle" }, { vendor = "Rahein", zone = "Silvermoon City" }, { vendor = "Sleyin", zone = "Silvermoon City" } } },
    [15907] = { name = "Left-Handed Claw", vendors = { { vendor = "Rahein", zone = "Silvermoon City" }, { vendor = "Sleyin", zone = "Silvermoon City" } } },
    [15909] = { name = "Left-Handed Blades", vendors = { { vendor = "Rahein", zone = "Silvermoon City" }, { vendor = "Sleyin", zone = "Silvermoon City" } } },
    [16345] = { name = "High Warlord's Blade", vendors = { { vendor = "Stone Guard Zarg", zone = "Orgrimmar" } } },
    [16769] = { name = "Furbolg Medicine Totem", vendors = { { vendor = "Gorn One Eye", zone = "Felwood" } } },
    [18827] = { name = "Grand Marshal's Handaxe", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" } } },
    [18828] = { name = "High Warlord's Cleaver", vendors = { { vendor = "Stone Guard Zarg", zone = "Orgrimmar" } } },
    [18830] = { name = "Grand Marshal's Sunderer", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" } } },
    [18831] = { name = "High Warlord's Battle Axe", vendors = { { vendor = "Stone Guard Zarg", zone = "Orgrimmar" } } },
    [18833] = { name = "Grand Marshal's Bullseye", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" } } },
    [18835] = { name = "High Warlord's Recurve", vendors = { { vendor = "Stone Guard Zarg", zone = "Orgrimmar" } } },
    [18836] = { name = "Grand Marshal's Repeater", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" } } },
    [18837] = { name = "High Warlord's Crossbow", vendors = { { vendor = "Stone Guard Zarg", zone = "Orgrimmar" } } },
    [18838] = { name = "Grand Marshal's Dirk", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" } } },
    [18840] = { name = "High Warlord's Razor", vendors = { { vendor = "Stone Guard Zarg", zone = "Orgrimmar" } } },
    [18843] = { name = "Grand Marshal's Right Hand Blade", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" } } },
    [18844] = { name = "High Warlord's Right Claw", vendors = { { vendor = "Stone Guard Zarg", zone = "Orgrimmar" } } },
    [18847] = { name = "Grand Marshal's Razor Hand Blade", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" } } },
    [18848] = { name = "High Warlord's Razor Claw", vendors = { { vendor = "Stone Guard Zarg", zone = "Orgrimmar" } } },
    [18855] = { name = "Grand Marshal's Hand Cannon", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" } } },
    [18860] = { name = "High Warlord's Street Sweeper", vendors = { { vendor = "Stone Guard Zarg", zone = "Orgrimmar" } } },
    [18865] = { name = "Grand Marshal's Punisher", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" } } },
    [18866] = { name = "High Warlord's Bludgeon", vendors = { { vendor = "Stone Guard Zarg", zone = "Orgrimmar" } } },
    [18867] = { name = "Grand Marshal's Battle Hammer", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" } } },
    [18868] = { name = "High Warlord's Pulverizer", vendors = { { vendor = "Stone Guard Zarg", zone = "Orgrimmar" } } },
    [18869] = { name = "Grand Marshal's Glaive", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" } } },
    [18871] = { name = "High Warlord's Pig Sticker", vendors = { { vendor = "Stone Guard Zarg", zone = "Orgrimmar" } } },
    [18873] = { name = "Grand Marshal's Stave", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" } } },
    [18874] = { name = "High Warlord's War Staff", vendors = { { vendor = "Stone Guard Zarg", zone = "Orgrimmar" } } },
    [18876] = { name = "Grand Marshal's Claymore", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" } } },
    [18877] = { name = "High Warlord's Greatsword", vendors = { { vendor = "Stone Guard Zarg", zone = "Orgrimmar" } } },
    [19099] = { name = "Glacial Blade", vendors = { { vendor = "Grunnda Wolfheart", zone = "Alterac Valley and Alterac Valley" }, { vendor = "Jorek Ironside", zone = "Hillsbrad Foothills" } } },
    [19100] = { name = "Electrified Dagger", vendors = { { vendor = "Gaelden Hammersmith", zone = "Alterac Valley and Alterac Valley" }, { vendor = "Thanthaldis Snowgleam", zone = "Hillsbrad Foothills" } } },
    [19101] = { name = "Whiteout Staff", vendors = { { vendor = "Grunnda Wolfheart", zone = "Alterac Valley and Alterac Valley" }, { vendor = "Jorek Ironside", zone = "Hillsbrad Foothills" } } },
    [19102] = { name = "Crackling Staff", vendors = { { vendor = "Gaelden Hammersmith", zone = "Alterac Valley and Alterac Valley" }, { vendor = "Thanthaldis Snowgleam", zone = "Hillsbrad Foothills" } } },
    [19103] = { name = "Frostbite", vendors = { { vendor = "Grunnda Wolfheart", zone = "Alterac Valley and Alterac Valley" }, { vendor = "Jorek Ironside", zone = "Hillsbrad Foothills" } } },
    [19104] = { name = "Stormstrike Hammer", vendors = { { vendor = "Gaelden Hammersmith", zone = "Alterac Valley and Alterac Valley" }, { vendor = "Thanthaldis Snowgleam", zone = "Hillsbrad Foothills" } } },
    [19323] = { name = "The Unstoppable Force", vendors = { { vendor = "Gaelden Hammersmith", zone = "Alterac Valley and Alterac Valley" }, { vendor = "Grunnda Wolfheart", zone = "Alterac Valley and Alterac Valley" }, { vendor = "Thanthaldis Snowgleam", zone = "Hillsbrad Foothills" }, { vendor = "Jorek Ironside", zone = "Hillsbrad Foothills" } } },
    [19324] = { name = "The Lobotomizer", vendors = { { vendor = "Gaelden Hammersmith", zone = "Alterac Valley and Alterac Valley" }, { vendor = "Grunnda Wolfheart", zone = "Alterac Valley and Alterac Valley" }, { vendor = "Thanthaldis Snowgleam", zone = "Hillsbrad Foothills" }, { vendor = "Jorek Ironside", zone = "Hillsbrad Foothills" } } },
    [19542] = { name = "Scout's Blade", vendors = { { vendor = "Kelm Hargunth", zone = "Northern Barrens" } } },
    [19543] = { name = "Scout's Blade", vendors = { { vendor = "Kelm Hargunth", zone = "Northern Barrens" } } },
    [19544] = { name = "Scout's Blade", vendors = { { vendor = "Kelm Hargunth", zone = "Northern Barrens" } } },
    [19545] = { name = "Scout's Blade", vendors = { { vendor = "Kelm Hargunth", zone = "Northern Barrens" } } },
    [19546] = { name = "Sentinel's Blade", vendors = { { vendor = "Illiyana Moonblaze", zone = "Ashenvale" } } },
    [19547] = { name = "Sentinel's Blade", vendors = { { vendor = "Illiyana Moonblaze", zone = "Ashenvale" } } },
    [19548] = { name = "Sentinel's Blade", vendors = { { vendor = "Illiyana Moonblaze", zone = "Ashenvale" } } },
    [19549] = { name = "Sentinel's Blade", vendors = { { vendor = "Illiyana Moonblaze", zone = "Ashenvale" } } },
    [19550] = { name = "Legionnaire's Sword", vendors = { { vendor = "Kelm Hargunth", zone = "Northern Barrens" } } },
    [19551] = { name = "Legionnaire's Sword", vendors = { { vendor = "Kelm Hargunth", zone = "Northern Barrens" } } },
    [19552] = { name = "Legionnaire's Sword", vendors = { { vendor = "Kelm Hargunth", zone = "Northern Barrens" } } },
    [19553] = { name = "Legionnaire's Sword", vendors = { { vendor = "Kelm Hargunth", zone = "Northern Barrens" } } },
    [19554] = { name = "Protector's Sword", vendors = { { vendor = "Illiyana Moonblaze", zone = "Ashenvale" } } },
    [19555] = { name = "Protector's Sword", vendors = { { vendor = "Illiyana Moonblaze", zone = "Ashenvale" } } },
    [19556] = { name = "Protector's Sword", vendors = { { vendor = "Illiyana Moonblaze", zone = "Ashenvale" } } },
    [19557] = { name = "Protector's Sword", vendors = { { vendor = "Illiyana Moonblaze", zone = "Ashenvale" } } },
    [19558] = { name = "Outrider's Bow", vendors = { { vendor = "Kelm Hargunth", zone = "Northern Barrens" } } },
    [19559] = { name = "Outrider's Bow", vendors = { { vendor = "Kelm Hargunth", zone = "Northern Barrens" } } },
    [19560] = { name = "Outrider's Bow", vendors = { { vendor = "Kelm Hargunth", zone = "Northern Barrens" } } },
    [19561] = { name = "Outrider's Bow", vendors = { { vendor = "Kelm Hargunth", zone = "Northern Barrens" } } },
    [19562] = { name = "Outrunner's Bow", vendors = { { vendor = "Illiyana Moonblaze", zone = "Ashenvale" } } },
    [19563] = { name = "Outrunner's Bow", vendors = { { vendor = "Illiyana Moonblaze", zone = "Ashenvale" } } },
    [19564] = { name = "Outrunner's Bow", vendors = { { vendor = "Illiyana Moonblaze", zone = "Ashenvale" } } },
    [19565] = { name = "Outrunner's Bow", vendors = { { vendor = "Illiyana Moonblaze", zone = "Ashenvale" } } },
    [19566] = { name = "Advisor's Gnarled Staff", vendors = { { vendor = "Kelm Hargunth", zone = "Northern Barrens" } } },
    [19567] = { name = "Advisor's Gnarled Staff", vendors = { { vendor = "Kelm Hargunth", zone = "Northern Barrens" } } },
    [19568] = { name = "Advisor's Gnarled Staff", vendors = { { vendor = "Kelm Hargunth", zone = "Northern Barrens" } } },
    [19569] = { name = "Advisor's Gnarled Staff", vendors = { { vendor = "Kelm Hargunth", zone = "Northern Barrens" } } },
    [19570] = { name = "Lorekeeper's Staff", vendors = { { vendor = "Illiyana Moonblaze", zone = "Ashenvale" } } },
    [19571] = { name = "Lorekeeper's Staff", vendors = { { vendor = "Illiyana Moonblaze", zone = "Ashenvale" } } },
    [19572] = { name = "Lorekeeper's Staff", vendors = { { vendor = "Illiyana Moonblaze", zone = "Ashenvale" } } },
    [19573] = { name = "Lorekeeper's Staff", vendors = { { vendor = "Illiyana Moonblaze", zone = "Ashenvale" } } },
    [20069] = { name = "Ironbark Staff", vendors = { { vendor = "Samuel Hawke", zone = "Arathi Highlands" }, { vendor = "Samuel Hawke", zone = "Arathi Highlands" } } },
    [20070] = { name = "Sageclaw", vendors = { { vendor = "Samuel Hawke", zone = "Arathi Highlands" }, { vendor = "Samuel Hawke", zone = "Arathi Highlands" } } },
    [20214] = { name = "Mindfang", vendors = { { vendor = "Rutherford Twing", zone = "Arathi Highlands" }, { vendor = "Rutherford Twing", zone = "Arathi Highlands" } } },
    [20220] = { name = "Ironbark Staff", vendors = { { vendor = "Rutherford Twing", zone = "Arathi Highlands" }, { vendor = "Rutherford Twing", zone = "Arathi Highlands" } } },
    [20425] = { name = "Advisor's Gnarled Staff", vendors = { { vendor = "Kelm Hargunth", zone = "Northern Barrens" } } },
    [20430] = { name = "Legionnaire's Sword", vendors = { { vendor = "Kelm Hargunth", zone = "Northern Barrens" } } },
    [20434] = { name = "Lorekeeper's Staff", vendors = { { vendor = "Illiyana Moonblaze", zone = "Ashenvale" } } },
    [20437] = { name = "Outrider's Bow", vendors = { { vendor = "Kelm Hargunth", zone = "Northern Barrens" } } },
    [20438] = { name = "Outrunner's Bow", vendors = { { vendor = "Illiyana Moonblaze", zone = "Ashenvale" } } },
    [20440] = { name = "Protector's Sword", vendors = { { vendor = "Illiyana Moonblaze", zone = "Ashenvale" } } },
    [20441] = { name = "Scout's Blade", vendors = { { vendor = "Kelm Hargunth", zone = "Northern Barrens" } } },
    [20443] = { name = "Sentinel's Blade", vendors = { { vendor = "Illiyana Moonblaze", zone = "Ashenvale" } } },
    [21416] = { name = "Kris of Unspoken Names", vendors = { { vendor = "Warden Haro", zone = "Ahn'Qiraj: The Fallen Kingdom" } } },
    [23451] = { name = "Grand Marshal's Mageblade", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" } } },
    [23454] = { name = "Grand Marshal's Warhammer", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" } } },
    [23455] = { name = "Grand Marshal's Demolisher", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" } } },
    [23456] = { name = "Grand Marshal's Swiftblade", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" } } },
    [23464] = { name = "High Warlord's Battle Mace", vendors = { { vendor = "Stone Guard Zarg", zone = "Orgrimmar" } } },
    [23465] = { name = "High Warlord's Destroyer", vendors = { { vendor = "Stone Guard Zarg", zone = "Orgrimmar" } } },
    [23466] = { name = "High Warlord's Spellblade", vendors = { { vendor = "Stone Guard Zarg", zone = "Orgrimmar" } } },
    [23467] = { name = "High Warlord's Quickblade", vendors = { { vendor = "Stone Guard Zarg", zone = "Orgrimmar" } } },

    ------------------------------------------------------------
    -- THE BURNING CRUSADE (gap2 pass)
    ------------------------------------------------------------
    [20849] = { name = "Arcane-Forged Shortsword", vendors = { { vendor = "Raelis Dawnstar", zone = "Sunstrider Isle" }, { vendor = "Rahein", zone = "Silvermoon City" }, { vendor = "Sleyin", zone = "Silvermoon City" } } },
    [20850] = { name = "Arcane-Forged Axe", vendors = { { vendor = "Raelis Dawnstar", zone = "Sunstrider Isle" }, { vendor = "Rahein", zone = "Silvermoon City" }, { vendor = "Sleyin", zone = "Silvermoon City" } } },
    [20851] = { name = "Arcane-Forged Mace", vendors = { { vendor = "Raelis Dawnstar", zone = "Sunstrider Isle" }, { vendor = "Rahein", zone = "Silvermoon City" }, { vendor = "Sleyin", zone = "Silvermoon City" } } },
    [20852] = { name = "Arcane-Forged Dirk", vendors = { { vendor = "Raelis Dawnstar", zone = "Sunstrider Isle" }, { vendor = "Rahein", zone = "Silvermoon City" }, { vendor = "Sleyin", zone = "Silvermoon City" } } },
    [20853] = { name = "Mana Gathering Staff", vendors = { { vendor = "Raelis Dawnstar", zone = "Sunstrider Isle" }, { vendor = "Rahein", zone = "Silvermoon City" }, { vendor = "Sleyin", zone = "Silvermoon City" } } },
    [20910] = { name = "Stiff Shortbow", vendors = { { vendor = "Raelis Dawnstar", zone = "Sunstrider Isle" }, { vendor = "Rahein", zone = "Silvermoon City" }, { vendor = "Sleyin", zone = "Silvermoon City" } } },
    [20981] = { name = "Neophyte's Mace", vendors = { { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Gregory Ardus", zone = "Stormwind City" }, { vendor = "Etu Ragetotem", zone = "Thunder Bluff" }, { vendor = "Koru", zone = "Orgrimmar" }, { vendor = "Ariyell Skyshadow", zone = "Darnassus" } } },
    [20982] = { name = "Sharp Dagger", vendors = { { vendor = "Marda Weller", zone = "Stormwind City" }, { vendor = "Kard Ragetotem", zone = "Thunder Bluff" }, { vendor = "Kareth", zone = "Orgrimmar" }, { vendor = "Shoma", zone = "Orgrimmar" }, { vendor = "Merelyssa", zone = "Darnassus" } } },
    [20983] = { name = "Acolyte's Dagger", vendors = { { vendor = "\"Silvermoon\" Harry", zone = "Howling Fjord" } } },
    [23346] = { name = "Battleworn Claymore", vendors = { { vendor = "Gerik Koen", zone = "Stormwind City" }, { vendor = "Galthuk", zone = "Orgrimmar" }, { vendor = "Ealyshia Dewwhisper", zone = "Darnassus" }, { vendor = "Geoffrey Hartwell", zone = "Undercity" }, { vendor = "Ohanko", zone = "Thunder Bluff" } } },
    [24550] = { name = "Gladiator's Greatsword", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" } } },
    [24557] = { name = "Gladiator's War Staff", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" } } },
    [27942] = { name = "Incendic Rod", vendors = { { vendor = "Alliance Field Scout", zone = "Zangarmarsh" } } },
    [28294] = { name = "Gladiator's Heavy Crossbow", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" } } },
    [28295] = { name = "Gladiator's Slicer", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" } } },
    [28297] = { name = "Gladiator's Spellblade", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" } } },
    [28298] = { name = "Gladiator's Decapitator", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" } } },
    [28299] = { name = "Gladiator's Bonegrinder", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" } } },
    [28300] = { name = "Gladiator's Painsaw", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" } } },
    [28302] = { name = "Gladiator's Bonecracker", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" } } },
    [28305] = { name = "Gladiator's Pummeler", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" } } },
    [28307] = { name = "Gladiator's Quickblade", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" } } },
    [28308] = { name = "Gladiator's Cleaver", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" } } },
    [28309] = { name = "Gladiator's Hacker", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" } } },
    [28310] = { name = "Gladiator's Shiv", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" } } },
    [28312] = { name = "Gladiator's Shanker", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" } } },
    [28313] = { name = "Gladiator's Ripper", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" } } },
    [28314] = { name = "Gladiator's Fleshslicer", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" } } },
    [28320] = { name = "Gladiator's Touch of Defeat", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" } } },
    [28476] = { name = "Gladiator's Maul", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" } } },
    [29115] = { name = "Consortium Blaster", vendors = { { vendor = "Karaaz", zone = "Netherstorm" }, { vendor = "Paulsta'ats", zone = "Nagrand" } } },
    [29121] = { name = "Guile of Khoraazi", vendors = { { vendor = "Karaaz", zone = "Netherstorm" }, { vendor = "Paulsta'ats", zone = "Nagrand" } } },
    [29456] = { name = "Gift of the Ethereal", vendors = { { vendor = "Karaaz", zone = "Netherstorm" }, { vendor = "Paulsta'ats", zone = "Nagrand" } } },
    [29457] = { name = "Nethershard", vendors = { { vendor = "Karaaz", zone = "Netherstorm" }, { vendor = "Paulsta'ats", zone = "Nagrand" } } },
    [30569] = { name = "Proximo's Rudius", vendors = { { vendor = "Coreiel", zone = "Nagrand" }, { vendor = "Aldraan", zone = "Nagrand" } } },
    [30749] = { name = "Draenic Sparring Blade", vendors = { { vendor = "Fallesh Sunfallow", zone = "Hellfire Peninsula" }, { vendor = "Talaara", zone = "Hellfire Peninsula" }, { vendor = "Grokom Deatheye", zone = "Shadowmoon Valley" }, { vendor = "Cahill", zone = "Blade's Edge Mountains" }, { vendor = "Dunaman", zone = "Shadowmoon Valley" } } },
    [30750] = { name = "Draenic Warblade", vendors = { { vendor = "Fallesh Sunfallow", zone = "Hellfire Peninsula" }, { vendor = "Talaara", zone = "Hellfire Peninsula" }, { vendor = "Grokom Deatheye", zone = "Shadowmoon Valley" }, { vendor = "Cahill", zone = "Blade's Edge Mountains" }, { vendor = "Dunaman", zone = "Shadowmoon Valley" } } },
    [30751] = { name = "Mag'hari Light Axe", vendors = { { vendor = "Fallesh Sunfallow", zone = "Hellfire Peninsula" }, { vendor = "Talaara", zone = "Hellfire Peninsula" }, { vendor = "Grokom Deatheye", zone = "Shadowmoon Valley" }, { vendor = "Cahill", zone = "Blade's Edge Mountains" }, { vendor = "Dunaman", zone = "Shadowmoon Valley" } } },
    [30752] = { name = "Mag'hari Battleaxe", vendors = { { vendor = "Fallesh Sunfallow", zone = "Hellfire Peninsula" }, { vendor = "Talaara", zone = "Hellfire Peninsula" }, { vendor = "Grokom Deatheye", zone = "Shadowmoon Valley" }, { vendor = "Cahill", zone = "Blade's Edge Mountains" }, { vendor = "Dunaman", zone = "Shadowmoon Valley" } } },
    [30753] = { name = "Warphorn Spear", vendors = { { vendor = "Fallesh Sunfallow", zone = "Hellfire Peninsula" }, { vendor = "Talaara", zone = "Hellfire Peninsula" }, { vendor = "Grokom Deatheye", zone = "Shadowmoon Valley" }, { vendor = "Cahill", zone = "Blade's Edge Mountains" }, { vendor = "Dunaman", zone = "Shadowmoon Valley" } } },
    [30754] = { name = "Ancient Bone Mace", vendors = { { vendor = "Fallesh Sunfallow", zone = "Hellfire Peninsula" }, { vendor = "Talaara", zone = "Hellfire Peninsula" }, { vendor = "Grokom Deatheye", zone = "Shadowmoon Valley" }, { vendor = "Cahill", zone = "Blade's Edge Mountains" }, { vendor = "Dunaman", zone = "Shadowmoon Valley" } } },
    [30755] = { name = "Mag'hari Fighting Claw", vendors = { { vendor = "Fallesh Sunfallow", zone = "Hellfire Peninsula" }, { vendor = "Talaara", zone = "Hellfire Peninsula" }, { vendor = "Grokom Deatheye", zone = "Shadowmoon Valley" }, { vendor = "Cahill", zone = "Blade's Edge Mountains" }, { vendor = "Dunaman", zone = "Shadowmoon Valley" } } },
    [30757] = { name = "Draenic Light Crossbow", vendors = { { vendor = "Bar Talet", zone = "Terokkar Forest" }, { vendor = "Nancila", zone = "Nagrand" }, { vendor = "Korthul", zone = "Shadowmoon Valley" }, { vendor = "Raiza", zone = "Blade's Edge Mountains" }, { vendor = "Cahill", zone = "Blade's Edge Mountains" } } },
    [30758] = { name = "Aldor Guardian Rifle", vendors = { { vendor = "Bar Talet", zone = "Terokkar Forest" }, { vendor = "Nancila", zone = "Nagrand" }, { vendor = "Korthul", zone = "Shadowmoon Valley" }, { vendor = "Daggle Ironshaper", zone = "Shadowmoon Valley" }, { vendor = "Raiza", zone = "Blade's Edge Mountains" } } },
    [30759] = { name = "Mag'hari Light Recurve", vendors = { { vendor = "Bar Talet", zone = "Terokkar Forest" }, { vendor = "Nancila", zone = "Nagrand" }, { vendor = "Korthul", zone = "Shadowmoon Valley" }, { vendor = "Raiza", zone = "Blade's Edge Mountains" }, { vendor = "Cahill", zone = "Blade's Edge Mountains" } } },
    [31958] = { name = "Merciless Gladiator's Bonecracker", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Izzee the 'Clutch'", zone = "Netherstorm" } } },
    [31959] = { name = "Merciless Gladiator's Bonegrinder", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Izzee the 'Clutch'", zone = "Netherstorm" } } },
    [31965] = { name = "Merciless Gladiator's Cleaver", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Izzee the 'Clutch'", zone = "Netherstorm" } } },
    [31966] = { name = "Merciless Gladiator's Decapitator", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Izzee the 'Clutch'", zone = "Netherstorm" } } },
    [31984] = { name = "Merciless Gladiator's Greatsword", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Izzee the 'Clutch'", zone = "Netherstorm" } } },
    [31985] = { name = "Merciless Gladiator's Hacker", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Izzee the 'Clutch'", zone = "Netherstorm" } } },
    [31986] = { name = "Merciless Gladiator's Crossbow of the Phoenix", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Izzee the 'Clutch'", zone = "Netherstorm" } } },
    [32003] = { name = "Merciless Gladiator's Fleshslicer", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Izzee the 'Clutch'", zone = "Netherstorm" } } },
    [32014] = { name = "Merciless Gladiator's Maul", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Izzee the 'Clutch'", zone = "Netherstorm" } } },
    [32025] = { name = "Merciless Gladiator's Painsaw", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Izzee the 'Clutch'", zone = "Netherstorm" } } },
    [32026] = { name = "Merciless Gladiator's Pummeler", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Izzee the 'Clutch'", zone = "Netherstorm" } } },
    [32027] = { name = "Merciless Gladiator's Quickblade", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Izzee the 'Clutch'", zone = "Netherstorm" } } },
    [32028] = { name = "Merciless Gladiator's Ripper", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Izzee the 'Clutch'", zone = "Netherstorm" } } },
    [32044] = { name = "Merciless Gladiator's Shanker", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Izzee the 'Clutch'", zone = "Netherstorm" } } },
    [32046] = { name = "Merciless Gladiator's Shiv", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Izzee the 'Clutch'", zone = "Netherstorm" } } },
    [32052] = { name = "Merciless Gladiator's Slicer", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Izzee the 'Clutch'", zone = "Netherstorm" } } },
    [32053] = { name = "Merciless Gladiator's Spellblade", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Izzee the 'Clutch'", zone = "Netherstorm" } } },
    [32055] = { name = "Merciless Gladiator's War Staff", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Izzee the 'Clutch'", zone = "Netherstorm" } } },
    [32450] = { name = "Gladiator's Gavel", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" } } },
    [32451] = { name = "Gladiator's Salvation", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" } } },
    [32645] = { name = "Crystalline Crossbow", vendors = { { vendor = "Jho'nass", zone = "Blade's Edge Mountains" } } },
    [32650] = { name = "Cerulean Crystal Rod", vendors = { { vendor = "Jho'nass", zone = "Blade's Edge Mountains" } } },
    [32962] = { name = "Merciless Gladiator's Touch of Defeat", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Izzee the 'Clutch'", zone = "Netherstorm" } } },
    [32963] = { name = "Merciless Gladiator's Gavel", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Izzee the 'Clutch'", zone = "Netherstorm" } } },
    [32964] = { name = "Merciless Gladiator's Salvation", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Izzee the 'Clutch'", zone = "Netherstorm" } } },
    [33006] = { name = "Vengeful Gladiator's Heavy Crossbow", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [33662] = { name = "Vengeful Gladiator's Bonecracker", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [33663] = { name = "Vengeful Gladiator's Bonegrinder", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [33669] = { name = "Vengeful Gladiator's Cleaver", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [33670] = { name = "Vengeful Gladiator's Decapitator", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [33687] = { name = "Vengeful Gladiator's Gavel", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [33688] = { name = "Vengeful Gladiator's Greatsword", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [33689] = { name = "Vengeful Gladiator's Hacker", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [33705] = { name = "Vengeful Gladiator's Fleshslicer", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [33716] = { name = "Vengeful Gladiator's Staff", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [33727] = { name = "Vengeful Gladiator's Painsaw", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [33733] = { name = "Vengeful Gladiator's Pummeler", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [33734] = { name = "Vengeful Gladiator's Quickblade", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [33737] = { name = "Vengeful Gladiator's Ripper", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [33743] = { name = "Vengeful Gladiator's Salvation", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [33754] = { name = "Vengeful Gladiator's Shanker", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [33756] = { name = "Vengeful Gladiator's Shiv", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [33762] = { name = "Vengeful Gladiator's Slicer", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [33763] = { name = "Vengeful Gladiator's Spellblade", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [33764] = { name = "Vengeful Gladiator's Touch of Defeat", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [33766] = { name = "Vengeful Gladiator's War Staff", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [33801] = { name = "Vengeful Gladiator's Mutilator", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [34014] = { name = "Vengeful Gladiator's Waraxe", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [34015] = { name = "Vengeful Gladiator's Chopper", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [34016] = { name = "Vengeful Gladiator's Slasher", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [34059] = { name = "Vengeful Gladiator's Baton of Light", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [34066] = { name = "Vengeful Gladiator's Piercing Touch", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [34529] = { name = "Vengeful Gladiator's Longbow", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [34530] = { name = "Vengeful Gladiator's Rifle", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [34540] = { name = "Vengeful Gladiator's Battle Staff", vendors = { { vendor = "Kezzik the Striker", zone = "Netherstorm" }, { vendor = "Kitzie Crankshot", zone = "Netherstorm" } } },
    [34665] = { name = "Bombardier's Blade", vendors = { { vendor = "Eldara Dawnrunner", zone = "Isle of Quel'Danas" } } },
    [34666] = { name = "The Sunbreaker", vendors = { { vendor = "Eldara Dawnrunner", zone = "Isle of Quel'Danas" } } },
    [34667] = { name = "Archmage's Guile", vendors = { { vendor = "Eldara Dawnrunner", zone = "Isle of Quel'Danas" } } },
    [34670] = { name = "Seeker's Gavel", vendors = { { vendor = "Eldara Dawnrunner", zone = "Isle of Quel'Danas" } } },
    [34671] = { name = "K'iru's Presage", vendors = { { vendor = "Eldara Dawnrunner", zone = "Isle of Quel'Danas" } } },
    [34672] = { name = "Inuuro's Blade", vendors = { { vendor = "Eldara Dawnrunner", zone = "Isle of Quel'Danas" } } },
    [34673] = { name = "Legionfoe", vendors = { { vendor = "Eldara Dawnrunner", zone = "Isle of Quel'Danas" } } },
    [34674] = { name = "Truestrike Crossbow", vendors = { { vendor = "Eldara Dawnrunner", zone = "Isle of Quel'Danas" } } },
    [34891] = { name = "The Blade of Harbingers", vendors = { { vendor = "Smith Hauthaa", zone = "Isle of Quel'Danas" }, { vendor = "Anwehu", zone = "Shattrath City" } } },
    [34892] = { name = "Crossbow of Relentless Strikes", vendors = { { vendor = "Smith Hauthaa", zone = "Isle of Quel'Danas" }, { vendor = "Anwehu", zone = "Shattrath City" } } },
    [34893] = { name = "Vanir's Fist of Brutality", vendors = { { vendor = "Smith Hauthaa", zone = "Isle of Quel'Danas" }, { vendor = "Anwehu", zone = "Shattrath City" } } },
    [34894] = { name = "Blade of Serration", vendors = { { vendor = "Smith Hauthaa", zone = "Isle of Quel'Danas" }, { vendor = "Anwehu", zone = "Shattrath City" } } },
    [34895] = { name = "Scryer's Blade of Focus", vendors = { { vendor = "Smith Hauthaa", zone = "Isle of Quel'Danas" }, { vendor = "Anwehu", zone = "Shattrath City" } } },
    [34896] = { name = "Gavel of Naaru Blessings", vendors = { { vendor = "Smith Hauthaa", zone = "Isle of Quel'Danas" }, { vendor = "Anwehu", zone = "Shattrath City" } } },
    [34898] = { name = "Staff of the Forest Lord", vendors = { { vendor = "Smith Hauthaa", zone = "Isle of Quel'Danas" }, { vendor = "Anwehu", zone = "Shattrath City" } } },
    [34949] = { name = "Swift Blade of Uncertainty", vendors = { { vendor = "Smith Hauthaa", zone = "Isle of Quel'Danas" }, { vendor = "Anwehu", zone = "Shattrath City" } } },
    [34950] = { name = "Vanir's Fist of Savagery", vendors = { { vendor = "Smith Hauthaa", zone = "Isle of Quel'Danas" }, { vendor = "Anwehu", zone = "Shattrath City" } } },
    [34951] = { name = "Vanir's Fist of Carnage", vendors = { { vendor = "Smith Hauthaa", zone = "Isle of Quel'Danas" }, { vendor = "Anwehu", zone = "Shattrath City" } } },
    [34952] = { name = "The Mutilator", vendors = { { vendor = "Smith Hauthaa", zone = "Isle of Quel'Danas" }, { vendor = "Anwehu", zone = "Shattrath City" } } },
    [34985] = { name = "Brutal Gladiator's Baton of Light", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [34987] = { name = "Brutal Gladiator's Battle Staff", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [34988] = { name = "Brutal Gladiator's Bonecracker", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [34989] = { name = "Brutal Gladiator's Bonegrinder", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [34995] = { name = "Brutal Gladiator's Chopper", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [34996] = { name = "Brutal Gladiator's Cleaver", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [34997] = { name = "Brutal Gladiator's Decapitator", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [35014] = { name = "Brutal Gladiator's Gavel", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [35015] = { name = "Brutal Gladiator's Greatsword", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [35017] = { name = "Brutal Gladiator's Hacker", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [35018] = { name = "Brutal Gladiator's Heavy Crossbow", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [35037] = { name = "Brutal Gladiator's Slasher", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [35038] = { name = "Brutal Gladiator's Fleshslicer", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [35047] = { name = "Brutal Gladiator's Longbow", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [35058] = { name = "Brutal Gladiator's Mutilator", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [35064] = { name = "Brutal Gladiator's Painsaw", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [35065] = { name = "Brutal Gladiator's Piercing Touch", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [35071] = { name = "Brutal Gladiator's Pummeler", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [35072] = { name = "Brutal Gladiator's Quickblade", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [35075] = { name = "Brutal Gladiator's Rifle", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [35076] = { name = "Brutal Gladiator's Ripper", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [35082] = { name = "Brutal Gladiator's Salvation", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [35093] = { name = "Brutal Gladiator's Shanker", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [35095] = { name = "Brutal Gladiator's Shiv", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [35101] = { name = "Brutal Gladiator's Slicer", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [35102] = { name = "Brutal Gladiator's Spellblade", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [35103] = { name = "Brutal Gladiator's Staff", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [35107] = { name = "Brutal Gladiator's Touch of Defeat", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [35109] = { name = "Brutal Gladiator's War Staff", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [35110] = { name = "Brutal Gladiator's Waraxe", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },
    [36737] = { name = "Brutal Gladiator's Hatchet", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Blaze Magmaburn", zone = "Netherstorm" } } },

    ------------------------------------------------------------
    -- WRATH OF THE LICH KING (gap2 pass)
    ------------------------------------------------------------
    [20978] = { name = "Apprentice's Staff", vendors = { { vendor = "\"Silvermoon\" Harry", zone = "Howling Fjord" } } },
    [34661] = { name = "Massacre Sword", vendors = { { vendor = "Quartermaster Ozorg", zone = "Plaguelands: The Scarlet Enclave and Eastern Plaguelands" }, { vendor = "Quartermaster Ozorg", zone = "Broken Shore, Icecrown Citadel" } } },
    [38356] = { name = "Venture Battle Wand", vendors = { { vendor = "Purkom", zone = "Grizzly Hills" }, { vendor = "\"Grizzly\" D. Adams", zone = "Grizzly Hills" } } },
    [38454] = { name = "Warsong Punisher", vendors = { { vendor = "Gara Skullcrush", zone = "Borean Tundra" }, { vendor = "Sebastian Crane", zone = "Howling Fjord" } } },
    [38455] = { name = "Hammer of the Alliance Vanguard", vendors = { { vendor = "Logistics Officer Silverstone", zone = "Borean Tundra" }, { vendor = "Logistics Officer Brighton", zone = "Howling Fjord" } } },
    [38456] = { name = "Sin'dorei Recurve Bow", vendors = { { vendor = "Gara Skullcrush", zone = "Borean Tundra" }, { vendor = "Sebastian Crane", zone = "Howling Fjord" } } },
    [38457] = { name = "Sawed-Off Hand Cannon", vendors = { { vendor = "Logistics Officer Silverstone", zone = "Borean Tundra" }, { vendor = "Logistics Officer Brighton", zone = "Howling Fjord" } } },
    [38460] = { name = "Charged Wand of the Cleft", vendors = { { vendor = "Gara Skullcrush", zone = "Borean Tundra" }, { vendor = "Sebastian Crane", zone = "Howling Fjord" } } },
    [38461] = { name = "Warsong Shanker", vendors = { { vendor = "Gara Skullcrush", zone = "Borean Tundra" }, { vendor = "Sebastian Crane", zone = "Howling Fjord" } } },
    [38464] = { name = "Gnomish Magician's Quill", vendors = { { vendor = "Logistics Officer Silverstone", zone = "Borean Tundra" }, { vendor = "Logistics Officer Brighton", zone = "Howling Fjord" } } },
    [38465] = { name = "Vanguard Soldier's Dagger", vendors = { { vendor = "Logistics Officer Silverstone", zone = "Borean Tundra" }, { vendor = "Logistics Officer Brighton", zone = "Howling Fjord" } } },
    [38632] = { name = "Greatsword of the Ebon Blade", vendors = { { vendor = "Quartermaster Ozorg", zone = "Plaguelands: The Scarlet Enclave and Eastern Plaguelands" }, { vendor = "Quartermaster Ozorg", zone = "Broken Shore, Icecrown Citadel" } } },
    [38633] = { name = "Greataxe of the Ebon Blade", vendors = { { vendor = "Quartermaster Ozorg", zone = "Plaguelands: The Scarlet Enclave and Eastern Plaguelands" }, { vendor = "Quartermaster Ozorg", zone = "Broken Shore, Icecrown Citadel" } } },
    [38707] = { name = "Runed Soulblade", vendors = { { vendor = "Quartermaster Ozorg", zone = "Plaguelands: The Scarlet Enclave and Eastern Plaguelands" }, { vendor = "Quartermaster Ozorg", zone = "Broken Shore, Icecrown Citadel" } } },
    [39987] = { name = "Tuskarr Fishing Spear", vendors = { { vendor = "Deniigi", zone = "Howling Fjord" }, { vendor = "Kuk'uq", zone = "Dragonblight" }, { vendor = "Koatini", zone = "Dazar'alor" }, { vendor = "Bri'tani", zone = "Dazar'alor" }, { vendor = "Tonraq", zone = "Borean Tundra" } } },
    [40004] = { name = "Forsaken Greatsword", vendors = { { vendor = "Orson Locke", zone = "Howling Fjord" }, { vendor = "Initiate Claget", zone = "Icecrown" } } },
    [40005] = { name = "Forsaken Blade", vendors = { { vendor = "Orson Locke", zone = "Howling Fjord" }, { vendor = "Initiate Claget", zone = "Icecrown" } } },
    [40006] = { name = "Forsaken Sword", vendors = { { vendor = "Orson Locke", zone = "Howling Fjord" }, { vendor = "Initiate Claget", zone = "Icecrown" } } },
    [40018] = { name = "Wand of Onyx", vendors = { { vendor = "Librarian Whitley", zone = "Borean Tundra" }, { vendor = "Wanda Chanter", zone = "Dalaran" }, { vendor = "Wanda Chanter", zone = "Dalaran" } } },
    [40019] = { name = "Wand of Amber", vendors = { { vendor = "Librarian Whitley", zone = "Borean Tundra" }, { vendor = "Wanda Chanter", zone = "Dalaran" }, { vendor = "Wanda Chanter", zone = "Dalaran" } } },
    [40020] = { name = "Wand of Jade", vendors = { { vendor = "Librarian Whitley", zone = "Borean Tundra" }, { vendor = "Wanda Chanter", zone = "Dalaran" }, { vendor = "Wanda Chanter", zone = "Dalaran" } } },
    [40021] = { name = "Wand of Crystal", vendors = { { vendor = "Librarian Whitley", zone = "Borean Tundra" }, { vendor = "Wanda Chanter", zone = "Dalaran" }, { vendor = "Wanda Chanter", zone = "Dalaran" } } },
    [40702] = { name = "Rolfsen's Ripper", vendors = { { vendor = "Bartram Haller", zone = "Dalaran" }, { vendor = "Hexil Garrot", zone = "Dalaran" }, { vendor = "Arcanist Ivrenne", zone = "Dalaran" }, { vendor = "Magistrix Lambriesse", zone = "Dalaran" }, { vendor = "Cho Ironpalm", zone = "Dalaran" } } },
    [40703] = { name = "Grasscutter", vendors = { { vendor = "Valaden Silverblade", zone = "Dalaran" }, { vendor = "Arcanist Ivrenne", zone = "Dalaran" }, { vendor = "Magistrix Lambriesse", zone = "Dalaran" }, { vendor = "Valaden Silverblade", zone = "Dalaran" }, { vendor = "Valaden Silverblade", zone = "Dalaran" } } },
    [40704] = { name = "Pride", vendors = { { vendor = "Bartram Haller", zone = "Dalaran" }, { vendor = "Hexil Garrot", zone = "Dalaran" }, { vendor = "Arcanist Ivrenne", zone = "Dalaran" }, { vendor = "Magistrix Lambriesse", zone = "Dalaran" }, { vendor = "Cho Ironpalm", zone = "Dalaran" } } },
    [42210] = { name = "Relentless Gladiator's Cleaver", vendors = { { vendor = "Zom Bocom", zone = "Dalaran" } } },
    [42227] = { name = "Deadly Gladiator's Hacker", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" } } },
    [42228] = { name = "Furious Gladiator's Hacker", vendors = { { vendor = "Kylo Kelwin", zone = "Dalaran" } } },
    [42233] = { name = "Furious Gladiator's Chopper", vendors = { { vendor = "Kylo Kelwin", zone = "Dalaran" } } },
    [42236] = { name = "Hateful Gladiator's Waraxe", vendors = { { vendor = "Blazik Fireclaw", zone = "Dalaran" } } },
    [42237] = { name = "Deadly Gladiator's Waraxe", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" } } },
    [42241] = { name = "Hateful Gladiator's Shanker", vendors = { { vendor = "Blazik Fireclaw", zone = "Dalaran" } } },
    [42242] = { name = "Deadly Gladiator's Shanker", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" } } },
    [42247] = { name = "Hateful Gladiator's Shiv", vendors = { { vendor = "Blazik Fireclaw", zone = "Dalaran" } } },
    [42248] = { name = "Deadly Gladiator's Shiv", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" } } },
    [42254] = { name = "Hateful Gladiator's Mutilator", vendors = { { vendor = "Blazik Fireclaw", zone = "Dalaran" } } },
    [42256] = { name = "Furious Gladiator's Mutilator", vendors = { { vendor = "Kylo Kelwin", zone = "Dalaran" } } },
    [42257] = { name = "Relentless Gladiator's Mutilator", vendors = { { vendor = "Zom Bocom", zone = "Dalaran" } } },
    [42259] = { name = "Hateful Gladiator's Ripper", vendors = { { vendor = "Blazik Fireclaw", zone = "Dalaran" } } },
    [42261] = { name = "Furious Gladiator's Ripper", vendors = { { vendor = "Kylo Kelwin", zone = "Dalaran" } } },
    [42262] = { name = "Relentless Gladiator's Ripper", vendors = { { vendor = "Zom Bocom", zone = "Dalaran" } } },
    [42266] = { name = "Furious Gladiator's Slasher", vendors = { { vendor = "Kylo Kelwin", zone = "Dalaran" } } },
    [42269] = { name = "Hateful Gladiator's Fleshslicer", vendors = { { vendor = "Blazik Fireclaw", zone = "Dalaran" } } },
    [42274] = { name = "Hateful Gladiator's Pummeler", vendors = { { vendor = "Blazik Fireclaw", zone = "Dalaran" } } },
    [42276] = { name = "Furious Gladiator's Pummeler", vendors = { { vendor = "Kylo Kelwin", zone = "Dalaran" } } },
    [42279] = { name = "Hateful Gladiator's Bonecracker", vendors = { { vendor = "Blazik Fireclaw", zone = "Dalaran" } } },
    [42281] = { name = "Furious Gladiator's Bonecracker", vendors = { { vendor = "Kylo Kelwin", zone = "Dalaran" } } },
    [42282] = { name = "Relentless Gladiator's Bonecracker", vendors = { { vendor = "Zom Bocom", zone = "Dalaran" } } },
    [42284] = { name = "Hateful Gladiator's Slicer", vendors = { { vendor = "Blazik Fireclaw", zone = "Dalaran" } } },
    [42285] = { name = "Deadly Gladiator's Slicer", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" } } },
    [42286] = { name = "Furious Gladiator's Slicer", vendors = { { vendor = "Kylo Kelwin", zone = "Dalaran" } } },
    [42318] = { name = "Furious Gladiator's Decapitator", vendors = { { vendor = "Kylo Kelwin", zone = "Dalaran" } } },
    [42322] = { name = "Deadly Gladiator's Bonegrinder", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" } } },
    [42326] = { name = "Hateful Gladiator's Pike", vendors = { { vendor = "Blazik Fireclaw", zone = "Dalaran" } } },
    [42327] = { name = "Deadly Gladiator's Pike", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" } } },
    [42345] = { name = "Hateful Gladiator's Spellblade", vendors = { { vendor = "Blazik Fireclaw", zone = "Dalaran" } } },
    [42346] = { name = "Deadly Gladiator's Spellblade", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" } } },
    [42352] = { name = "Deadly Gladiator's Gavel", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" } } },
    [42353] = { name = "Furious Gladiator's Gavel", vendors = { { vendor = "Kylo Kelwin", zone = "Dalaran" } } },
    [42362] = { name = "Deadly Gladiator's Battle Staff", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" } } },
    [42364] = { name = "Furious Gladiator's Battle Staff", vendors = { { vendor = "Kylo Kelwin", zone = "Dalaran" } } },
    [42383] = { name = "Hateful Gladiator's Energy Staff", vendors = { { vendor = "Blazik Fireclaw", zone = "Dalaran" } } },
    [42384] = { name = "Deadly Gladiator's Energy Staff", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" } } },
    [42386] = { name = "Relentless Gladiator's Energy Staff", vendors = { { vendor = "Zom Bocom", zone = "Dalaran" } } },
    [42389] = { name = "Hateful Gladiator's Staff", vendors = { { vendor = "Blazik Fireclaw", zone = "Dalaran" } } },
    [42390] = { name = "Deadly Gladiator's Staff", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" } } },
    [42391] = { name = "Furious Gladiator's Staff", vendors = { { vendor = "Kylo Kelwin", zone = "Dalaran" } } },
    [42392] = { name = "Relentless Gladiator's Staff", vendors = { { vendor = "Zom Bocom", zone = "Dalaran" } } },
    [42487] = { name = "Relentless Gladiator's Rifle", vendors = { { vendor = "Zom Bocom", zone = "Dalaran" } } },
    [42494] = { name = "Hateful Gladiator's Heavy Crossbow", vendors = { { vendor = "Blazik Fireclaw", zone = "Dalaran" } } },
    [42495] = { name = "Deadly Gladiator's Heavy Crossbow", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" } } },
    [42496] = { name = "Furious Gladiator's Heavy Crossbow", vendors = { { vendor = "Kylo Kelwin", zone = "Dalaran" } } },
    [42498] = { name = "Relentless Gladiator's Heavy Crossbow", vendors = { { vendor = "Zom Bocom", zone = "Dalaran" } } },
    [42501] = { name = "Hateful Gladiator's Touch of Defeat", vendors = { { vendor = "Blazik Fireclaw", zone = "Dalaran" } } },
    [42502] = { name = "Deadly Gladiator's Touch of Defeat", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" } } },
    [42503] = { name = "Furious Gladiator's Touch of Defeat", vendors = { { vendor = "Kylo Kelwin", zone = "Dalaran" } } },
    [42514] = { name = "Furious Gladiator's Baton of Light", vendors = { { vendor = "Kylo Kelwin", zone = "Dalaran" } } },
    [42518] = { name = "Hateful Gladiator's Piercing Touch", vendors = { { vendor = "Blazik Fireclaw", zone = "Dalaran" } } },
    [42521] = { name = "Relentless Gladiator's Piercing Touch", vendors = { { vendor = "Zom Bocom", zone = "Dalaran" } } },
    [44051] = { name = "Traditional Flensing Knife", vendors = { { vendor = "Tanaika", zone = "Howling Fjord" }, { vendor = "Sairuk", zone = "Dragonblight" } } },
    [44052] = { name = "Totemic Purification Rod", vendors = { { vendor = "Tanaika", zone = "Howling Fjord" }, { vendor = "Sairuk", zone = "Dragonblight" } } },
    [44053] = { name = "Whale-Stick Harpoon", vendors = { { vendor = "Tanaika", zone = "Howling Fjord" }, { vendor = "Sairuk", zone = "Dragonblight" } } },
    [44193] = { name = "Broken Stalactite", vendors = { { vendor = "Lillehoff", zone = "The Storm Peaks" } } },
    [44241] = { name = "Unholy Persuader", vendors = { { vendor = "Duchess Mynx", zone = "Icecrown" } } },
    [44418] = { name = "Hateful Gladiator's Focus Staff", vendors = { { vendor = "Blazik Fireclaw", zone = "Dalaran" } } },
    [44420] = { name = "Deadly Gladiator's Focus Staff", vendors = { { vendor = "Herwin Steampop", zone = "Dalaran" } } },
    [44421] = { name = "Furious Gladiator's War Staff", vendors = { { vendor = "Kylo Kelwin", zone = "Dalaran" } } },
    [44422] = { name = "Furious Gladiator's Focus Staff", vendors = { { vendor = "Kylo Kelwin", zone = "Dalaran" } } },
    [44635] = { name = "Dalaran Rifle", vendors = { { vendor = "Dagna Flintlock", zone = "Dalaran" }, { vendor = "Dagna Flintlock", zone = "Dalaran" }, { vendor = "Patrick Markson", zone = "Boralus" } } },
    [44636] = { name = "Dalaran Cudgel", vendors = { { vendor = "Walther Whiteford", zone = "Dalaran" }, { vendor = "Kerta the Bold", zone = "Dalaran" } } },
    [44637] = { name = "Dalaran Crossbow", vendors = { { vendor = "Aemara", zone = "Dalaran" }, { vendor = "Brian Terrel", zone = "Twilight Highlands" }, { vendor = "Aemara", zone = "Dalaran" } } },
    [44638] = { name = "Dalaran Sword", vendors = { { vendor = "Valaden Silverblade", zone = "Dalaran" }, { vendor = "Valaden Silverblade", zone = "Dalaran" }, { vendor = "Valaden Silverblade", zone = "Dalaran" } } },
    [44639] = { name = "Dalaran Greatsword", vendors = { { vendor = "Valaden Silverblade", zone = "Dalaran" }, { vendor = "Valaden Silverblade", zone = "Dalaran" }, { vendor = "Valaden Silverblade", zone = "Dalaran" } } },
    [44640] = { name = "Dalaran Great Axe", vendors = { { vendor = "Kerta the Bold", zone = "Dalaran" }, { vendor = "Jawknee", zone = "Dalaran" } } },
    [44641] = { name = "Dalaran Knuckles", vendors = { { vendor = "Bartram Haller", zone = "Dalaran" }, { vendor = "Hexil Garrot", zone = "Dalaran" }, { vendor = "Cho Ironpalm", zone = "Dalaran" } } },
    [44642] = { name = "Dalaran Axe", vendors = { { vendor = "Kerta the Bold", zone = "Dalaran" }, { vendor = "Jawknee", zone = "Dalaran" } } },
    [44643] = { name = "Dalaran Bow", vendors = { { vendor = "Aemara", zone = "Dalaran" }, { vendor = "Brian Terrel", zone = "Twilight Highlands" }, { vendor = "Aemara", zone = "Dalaran" } } },
    [44645] = { name = "Dalaran Hammer", vendors = { { vendor = "Walther Whiteford", zone = "Dalaran" }, { vendor = "Kerta the Bold", zone = "Dalaran" } } },
    [44652] = { name = "Dalaran Dagger", vendors = { { vendor = "Bartram Haller", zone = "Dalaran" }, { vendor = "Hexil Garrot", zone = "Dalaran" }, { vendor = "Cho Ironpalm", zone = "Dalaran" } } },
    [44654] = { name = "Dalaran Spear", vendors = { { vendor = "Kerta the Bold", zone = "Dalaran" }, { vendor = "Jawknee", zone = "Dalaran" }, { vendor = "Bri'tani", zone = "Dazar'alor" }, { vendor = "Rawajo", zone = "Dazar'alor" } } },
    [44655] = { name = "Dalaran Stave", vendors = { { vendor = "Shen Kang Cheng", zone = "Dalaran" }, { vendor = "Icks", zone = "Dalaran" } } },
    [45074] = { name = "Claymore of the Prophet", vendors = { { vendor = "Corporal Arthur Flew", zone = "Icecrown" }, { vendor = "Derrick Brindlebeard", zone = "Icecrown" }, { vendor = "Rillie Spindlenut", zone = "Icecrown" }, { vendor = "Rook Hawkfist", zone = "Icecrown" }, { vendor = "Irisee", zone = "Icecrown" } } },
    [45075] = { name = "Ironforge Smasher", vendors = { { vendor = "Corporal Arthur Flew", zone = "Icecrown" }, { vendor = "Derrick Brindlebeard", zone = "Icecrown" }, { vendor = "Rillie Spindlenut", zone = "Icecrown" }, { vendor = "Rook Hawkfist", zone = "Icecrown" }, { vendor = "Irisee", zone = "Icecrown" } } },
    [45076] = { name = "Teldrassil Protector", vendors = { { vendor = "Corporal Arthur Flew", zone = "Icecrown" }, { vendor = "Derrick Brindlebeard", zone = "Icecrown" }, { vendor = "Rillie Spindlenut", zone = "Icecrown" }, { vendor = "Rook Hawkfist", zone = "Icecrown" }, { vendor = "Irisee", zone = "Icecrown" } } },
    [45077] = { name = "Dagger of the Rising Moon", vendors = { { vendor = "Corporal Arthur Flew", zone = "Icecrown" }, { vendor = "Derrick Brindlebeard", zone = "Icecrown" }, { vendor = "Rillie Spindlenut", zone = "Icecrown" }, { vendor = "Rook Hawkfist", zone = "Icecrown" }, { vendor = "Irisee", zone = "Icecrown" } } },
    [45078] = { name = "Dagger of Lunar Purity", vendors = { { vendor = "Corporal Arthur Flew", zone = "Icecrown" }, { vendor = "Derrick Brindlebeard", zone = "Icecrown" }, { vendor = "Rillie Spindlenut", zone = "Icecrown" }, { vendor = "Rook Hawkfist", zone = "Icecrown" }, { vendor = "Irisee", zone = "Icecrown" } } },
    [45128] = { name = "Silvery Sylvan Stave", vendors = { { vendor = "Corporal Arthur Flew", zone = "Icecrown" }, { vendor = "Derrick Brindlebeard", zone = "Icecrown" }, { vendor = "Rillie Spindlenut", zone = "Icecrown" }, { vendor = "Rook Hawkfist", zone = "Icecrown" }, { vendor = "Irisee", zone = "Icecrown" } } },
    [45129] = { name = "Gnomeregan Bonechopper", vendors = { { vendor = "Corporal Arthur Flew", zone = "Icecrown" }, { vendor = "Derrick Brindlebeard", zone = "Icecrown" }, { vendor = "Rillie Spindlenut", zone = "Icecrown" }, { vendor = "Rook Hawkfist", zone = "Icecrown" }, { vendor = "Irisee", zone = "Icecrown" } } },
    [45130] = { name = "Blunderbuss of Khaz Modan", vendors = { { vendor = "Corporal Arthur Flew", zone = "Icecrown" }, { vendor = "Derrick Brindlebeard", zone = "Icecrown" }, { vendor = "Rillie Spindlenut", zone = "Icecrown" }, { vendor = "Rook Hawkfist", zone = "Icecrown" }, { vendor = "Irisee", zone = "Icecrown" } } },
    [45203] = { name = "Grimhorn Crusher", vendors = { { vendor = "Freka Bloodaxe", zone = "Icecrown" }, { vendor = "Samamba", zone = "Icecrown" }, { vendor = "Eliza Killian", zone = "Icecrown" }, { vendor = "Doru Thunderhorn", zone = "Icecrown" }, { vendor = "Trellis Morningsun", zone = "Icecrown" } } },
    [45204] = { name = "Axe of the Sen'jin Protector", vendors = { { vendor = "Freka Bloodaxe", zone = "Icecrown" }, { vendor = "Samamba", zone = "Icecrown" }, { vendor = "Eliza Killian", zone = "Icecrown" }, { vendor = "Doru Thunderhorn", zone = "Icecrown" }, { vendor = "Trellis Morningsun", zone = "Icecrown" } } },
    [45205] = { name = "Greatsword of the Sin'dorei", vendors = { { vendor = "Freka Bloodaxe", zone = "Icecrown" }, { vendor = "Samamba", zone = "Icecrown" }, { vendor = "Eliza Killian", zone = "Icecrown" }, { vendor = "Doru Thunderhorn", zone = "Icecrown" }, { vendor = "Trellis Morningsun", zone = "Icecrown" } } },
    [45208] = { name = "Blade of the Keening Banshee", vendors = { { vendor = "Freka Bloodaxe", zone = "Icecrown" }, { vendor = "Samamba", zone = "Icecrown" }, { vendor = "Eliza Killian", zone = "Icecrown" }, { vendor = "Doru Thunderhorn", zone = "Icecrown" }, { vendor = "Trellis Morningsun", zone = "Icecrown" } } },
    [45210] = { name = "Sen'jin Beakblade Longrifle", vendors = { { vendor = "Freka Bloodaxe", zone = "Icecrown" }, { vendor = "Samamba", zone = "Icecrown" }, { vendor = "Eliza Killian", zone = "Icecrown" }, { vendor = "Doru Thunderhorn", zone = "Icecrown" }, { vendor = "Trellis Morningsun", zone = "Icecrown" } } },
    [45212] = { name = "Staff of Feral Furies", vendors = { { vendor = "Freka Bloodaxe", zone = "Icecrown" }, { vendor = "Samamba", zone = "Icecrown" }, { vendor = "Eliza Killian", zone = "Icecrown" }, { vendor = "Doru Thunderhorn", zone = "Icecrown" }, { vendor = "Trellis Morningsun", zone = "Icecrown" } } },
    [45214] = { name = "Scalpel of the Royal Apothecary", vendors = { { vendor = "Freka Bloodaxe", zone = "Icecrown" }, { vendor = "Samamba", zone = "Icecrown" }, { vendor = "Eliza Killian", zone = "Icecrown" }, { vendor = "Doru Thunderhorn", zone = "Icecrown" }, { vendor = "Trellis Morningsun", zone = "Icecrown" } } },
    [45222] = { name = "Spinal Destroyer", vendors = { { vendor = "Freka Bloodaxe", zone = "Icecrown" }, { vendor = "Samamba", zone = "Icecrown" }, { vendor = "Eliza Killian", zone = "Icecrown" }, { vendor = "Doru Thunderhorn", zone = "Icecrown" }, { vendor = "Trellis Morningsun", zone = "Icecrown" } } },
    [47658] = { name = "Brimstone Igniter", vendors = { { vendor = "Wanda Chanter", zone = "Dalaran" }, { vendor = "Arcanist Miluria", zone = "Dalaran" }, { vendor = "Magistrix Vesara", zone = "Dalaran" }, { vendor = "Arcanist Asarina", zone = "Icecrown" }, { vendor = "Magistrix Iruvia", zone = "Icecrown" } } },
    [49185] = { name = "Relentless Gladiator's Wand of Alacrity", vendors = { { vendor = "Zom Bocom", zone = "Dalaran" } } },
    [49189] = { name = "Relentless Gladiator's Blade of Alacrity", vendors = { { vendor = "Zom Bocom", zone = "Dalaran" } } },
    [49778] = { name = "Worn Greatsword", vendors = { { vendor = "Gerik Koen", zone = "Stormwind City" }, { vendor = "Galthuk", zone = "Orgrimmar" }, { vendor = "Ealyshia Dewwhisper", zone = "Darnassus" }, { vendor = "Geoffrey Hartwell", zone = "Undercity" }, { vendor = "Ohanko", zone = "Thunder Bluff" } } },
    [51388] = { name = "Wrathful Gladiator's Decapitator", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51390] = { name = "Wrathful Gladiator's Bonegrinder", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51392] = { name = "Wrathful Gladiator's Greatsword", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51394] = { name = "Wrathful Gladiator's Longbow", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51397] = { name = "Wrathful Gladiator's Spellblade", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51400] = { name = "Wrathful Gladiator's War Staff", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51402] = { name = "Wrathful Gladiator's Focus Staff", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51404] = { name = "Wrathful Gladiator's Battle Staff", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51406] = { name = "Wrathful Gladiator's Blade of Alacrity", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51410] = { name = "Wrathful Gladiator's Touch of Defeat", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51411] = { name = "Wrathful Gladiator's Heavy Crossbow", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51431] = { name = "Wrathful Gladiator's Staff", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51439] = { name = "Wrathful Gladiator's Hacker", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51441] = { name = "Wrathful Gladiator's Shiv", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51443] = { name = "Wrathful Gladiator's Fleshslicer", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51445] = { name = "Wrathful Gladiator's Bonecracker", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51447] = { name = "Wrathful Gladiator's Quickblade", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51449] = { name = "Wrathful Gladiator's Rifle", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51451] = { name = "Wrathful Gladiator's Wand of Alacrity", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51453] = { name = "Wrathful Gladiator's Gavel", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51456] = { name = "Wrathful Gladiator's Energy Staff", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51480] = { name = "Wrathful Gladiator's Pike", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51515] = { name = "Wrathful Gladiator's Cleaver", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51517] = { name = "Wrathful Gladiator's Shanker", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51519] = { name = "Wrathful Gladiator's Pummeler", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51521] = { name = "Wrathful Gladiator's Slicer", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51523] = { name = "Wrathful Gladiator's Ripper", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51525] = { name = "Wrathful Gladiator's Chopper", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51527] = { name = "Wrathful Gladiator's Mutilator", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51530] = { name = "Wrathful Gladiator's Slasher", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51531] = { name = "Wrathful Gladiator's Piercing Touch", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },
    [51532] = { name = "Wrathful Gladiator's Baton of Light", vendors = { { vendor = "Lieutenant Jackspring", zone = "Stormwind City" }, { vendor = "Stone Guard Zarg", zone = "Orgrimmar" }, { vendor = "Trapjaw Rix", zone = "The Situation in Dalaran, Dalaran" }, { vendor = "Blazzek the Biter", zone = "Tanaris" }, { vendor = "Xazi Smolderpipe", zone = "Dalaran" } } },

    ------------------------------------------------------------
    -- LEGION (gap2 pass)
    ------------------------------------------------------------
    [112458] = { name = "Illidari Warglaive", vendors = { { vendor = "Falara Nightsong", zone = "Mardum, the Shattered Abyss" }, { vendor = "Falara Nightsong", zone = "Mardum, the Shattered Abyss" }, { vendor = "Falara Nightsong", zone = "Vault of the Wardens" }, { vendor = "Demissya Gladestrider", zone = "Mardum, the Shattered Abyss" } } },
    [129181] = { name = "Illidari Warglaive", vendors = { { vendor = "Falara Nightsong", zone = "Mardum, the Shattered Abyss" }, { vendor = "Falara Nightsong", zone = "Mardum, the Shattered Abyss" }, { vendor = "Falara Nightsong", zone = "Vault of the Wardens" }, { vendor = "Demissya Gladestrider", zone = "Mardum, the Shattered Abyss" } } },
    [136629] = { name = "Felgibber Shotgun", vendors = { { vendor = "Hobart Grapplehammer", zone = "Dalaran" }, { vendor = "Fargo Flintlocke", zone = "Azsuna" } } },
    [136630] = { name = "\"Twirling Bottom\" Repeater", vendors = { { vendor = "Hobart Grapplehammer", zone = "Dalaran" }, { vendor = "Fargo Flintlocke", zone = "Azsuna" } } },
    [136631] = { name = "Surface-to-Infernal Rocket Launcher", vendors = { { vendor = "Hobart Grapplehammer", zone = "Dalaran" }, { vendor = "Fargo Flintlocke", zone = "Azsuna" } } },
    [136632] = { name = "Chaos Blaster", vendors = { { vendor = "Hobart Grapplehammer", zone = "Dalaran" }, { vendor = "Fargo Flintlocke", zone = "Azsuna" } } },
    [140538] = { name = "Broadaxe of the Ebon Blade", vendors = { { vendor = "Quartermaster Ozorg", zone = "Broken Shore" } } },
    [140554] = { name = "Warsword of the Ebon Blade", vendors = { { vendor = "Quartermaster Ozorg", zone = "Broken Shore" } } },
    [140773] = { name = "Eagletalon Spear", vendors = { { vendor = "Krom Stoutarm", zone = "Ironforge" }, { vendor = "Estelle Gendry", zone = "Undercity" } } },
    [141604] = { name = "Glaive of the Fallen", vendors = { { vendor = "Captive Wyrmtongue", zone = "Orgrimmar" } } },
    [142526] = { name = "Glaive of the Fallen", vendors = { { vendor = "Captive Wyrmtongue", zone = "Orgrimmar" } } },
    [151524] = { name = "Hammer of Vigilance", vendors = { { vendor = "Pythagorus", zone = "" } } },

    ------------------------------------------------------------
    -- BATTLE FOR AZEROTH (gap2 pass)
    ------------------------------------------------------------
    [164932] = { name = "Grapeshotter of Khaz Modan", vendors = { { vendor = "Corporal Arthur Flew", zone = "Icecrown" }, { vendor = "Derrick Brindlebeard", zone = "Icecrown" }, { vendor = "Rillie Spindlenut", zone = "Icecrown" }, { vendor = "Rook Hawkfist", zone = "Icecrown" }, { vendor = "Irisee", zone = "Icecrown" } } },
    [169448] = { name = "Bottomless Brewfest Stein", vendors = { { vendor = "Belbi Quikswitch", zone = "Dun Morogh" }, { vendor = "Blix Fixwidget", zone = "Durotar" }, { vendor = "Bragdur Battlebrew", zone = "Valdrakken" }, { vendor = "Thalira Shadowlace", zone = "Dun Morogh" }, { vendor = "Sylvessa Luminweave", zone = "Durotar" } } },
    [172114] = { name = "Glacial Blade", vendors = { { vendor = "Time-Displaced Jorek Ironside", zone = "Hillsbrad Foothills" }, { vendor = "Time-Displaced Jorek Ironside", zone = "Tanaris" } } },
    [172115] = { name = "Electrified Dagger", vendors = { { vendor = "Time-Displaced Thanthaldis Snowgleam", zone = "Hillsbrad Foothills" }, { vendor = "Time-Displaced Thanthaldis Snowgleam", zone = "Tanaris" } } },
    [172116] = { name = "Whiteout Staff", vendors = { { vendor = "Time-Displaced Jorek Ironside", zone = "Hillsbrad Foothills" }, { vendor = "Time-Displaced Jorek Ironside", zone = "Tanaris" } } },
    [172117] = { name = "Crackling Staff", vendors = { { vendor = "Time-Displaced Thanthaldis Snowgleam", zone = "Hillsbrad Foothills" }, { vendor = "Time-Displaced Thanthaldis Snowgleam", zone = "Tanaris" } } },
    [172118] = { name = "Frostbite", vendors = { { vendor = "Time-Displaced Jorek Ironside", zone = "Hillsbrad Foothills" }, { vendor = "Time-Displaced Jorek Ironside", zone = "Tanaris" } } },
    [172119] = { name = "Stormstrike Hammer", vendors = { { vendor = "Time-Displaced Thanthaldis Snowgleam", zone = "Hillsbrad Foothills" }, { vendor = "Time-Displaced Thanthaldis Snowgleam", zone = "Tanaris" } } },
    [172121] = { name = "Ice Barbed Spear", vendors = { { vendor = "Time-Displaced Thanthaldis Snowgleam", zone = "Hillsbrad Foothills" }, { vendor = "Time-Displaced Jorek Ironside", zone = "Hillsbrad Foothills" }, { vendor = "Time-Displaced Thanthaldis Snowgleam", zone = "Tanaris" }, { vendor = "Time-Displaced Jorek Ironside", zone = "Tanaris" } } },
    [172122] = { name = "Bloodseeker", vendors = { { vendor = "Time-Displaced Thanthaldis Snowgleam", zone = "Hillsbrad Foothills" }, { vendor = "Time-Displaced Jorek Ironside", zone = "Hillsbrad Foothills" }, { vendor = "Time-Displaced Thanthaldis Snowgleam", zone = "Tanaris" }, { vendor = "Time-Displaced Jorek Ironside", zone = "Tanaris" } } },
    [172123] = { name = "Wand of Biting Cold", vendors = { { vendor = "Time-Displaced Thanthaldis Snowgleam", zone = "Hillsbrad Foothills" }, { vendor = "Time-Displaced Jorek Ironside", zone = "Hillsbrad Foothills" }, { vendor = "Time-Displaced Thanthaldis Snowgleam", zone = "Tanaris" }, { vendor = "Time-Displaced Jorek Ironside", zone = "Tanaris" } } },
    [172125] = { name = "Cold Forged Blade", vendors = { { vendor = "Time-Displaced Thanthaldis Snowgleam", zone = "Hillsbrad Foothills" }, { vendor = "Time-Displaced Jorek Ironside", zone = "Hillsbrad Foothills" }, { vendor = "Time-Displaced Thanthaldis Snowgleam", zone = "Tanaris" }, { vendor = "Time-Displaced Jorek Ironside", zone = "Tanaris" } } },
    [172136] = { name = "The Unstoppable Force", vendors = { { vendor = "Time-Displaced Thanthaldis Snowgleam", zone = "Hillsbrad Foothills" }, { vendor = "Time-Displaced Jorek Ironside", zone = "Hillsbrad Foothills" }, { vendor = "Time-Displaced Thanthaldis Snowgleam", zone = "Tanaris" }, { vendor = "Time-Displaced Jorek Ironside", zone = "Tanaris" } } },
    [172137] = { name = "The Lobotomizer", vendors = { { vendor = "Time-Displaced Thanthaldis Snowgleam", zone = "Hillsbrad Foothills" }, { vendor = "Time-Displaced Jorek Ironside", zone = "Hillsbrad Foothills" }, { vendor = "Time-Displaced Thanthaldis Snowgleam", zone = "Tanaris" }, { vendor = "Time-Displaced Jorek Ironside", zone = "Tanaris" } } },
    [172139] = { name = "Cold Forged Hammer", vendors = { { vendor = "Time-Displaced Thanthaldis Snowgleam", zone = "Hillsbrad Foothills" }, { vendor = "Time-Displaced Jorek Ironside", zone = "Hillsbrad Foothills" }, { vendor = "Time-Displaced Thanthaldis Snowgleam", zone = "Tanaris" }, { vendor = "Time-Displaced Jorek Ironside", zone = "Tanaris" } } },
    [172858] = { name = "Corrupted Aspirant's Stabber", vendors = { { vendor = "Alice Fischer", zone = "Stormwind City" } } },
    [172859] = { name = "Corrupted Aspirant's Shanker", vendors = { { vendor = "Alice Fischer", zone = "Stormwind City" } } },
    [172862] = { name = "Corrupted Aspirant's Wand", vendors = { { vendor = "Alice Fischer", zone = "Stormwind City" } } },
    [172863] = { name = "Corrupted Aspirant's Wand", vendors = { { vendor = "Aneka Melae", zone = "Orgrimmar" } } },
    [172872] = { name = "Corrupted Aspirant's Gavel", vendors = { { vendor = "Alice Fischer", zone = "Stormwind City" } } },
    [172873] = { name = "Corrupted Aspirant's Gavel", vendors = { { vendor = "Aneka Melae", zone = "Orgrimmar" } } },
    [172874] = { name = "Corrupted Aspirant's Pummeler", vendors = { { vendor = "Alice Fischer", zone = "Stormwind City" } } },
    [172875] = { name = "Corrupted Aspirant's Pummeler", vendors = { { vendor = "Aneka Melae", zone = "Orgrimmar" } } },
    [172876] = { name = "Corrupted Aspirant's Slicer", vendors = { { vendor = "Alice Fischer", zone = "Stormwind City" } } },
    [172878] = { name = "Corrupted Aspirant's Cleaver", vendors = { { vendor = "Alice Fischer", zone = "Stormwind City" } } },
    [172879] = { name = "Corrupted Aspirant's Cleaver", vendors = { { vendor = "Aneka Melae", zone = "Orgrimmar" } } },
    [172880] = { name = "Corrupted Aspirant's Chopper", vendors = { { vendor = "Alice Fischer", zone = "Stormwind City" } } },
    [172883] = { name = "Corrupted Aspirant's Pike", vendors = { { vendor = "Aneka Melae", zone = "Orgrimmar" } } },
    [172885] = { name = "Corrupted Aspirant's Greatsword", vendors = { { vendor = "Aneka Melae", zone = "Orgrimmar" } } },
    [172886] = { name = "Corrupted Aspirant's Warglaive", vendors = { { vendor = "Alice Fischer", zone = "Stormwind City" } } },
    [172887] = { name = "Corrupted Aspirant's Warglaive", vendors = { { vendor = "Aneka Melae", zone = "Orgrimmar" } } },
    [174011] = { name = "Corrupted Aspirant's Spellblade", vendors = { { vendor = "Alice Fischer", zone = "Stormwind City" } } },
    [174013] = { name = "Corrupted Aspirant's Claw", vendors = { { vendor = "Alice Fischer", zone = "Stormwind City" } } },
    [174017] = { name = "Corrupted Aspirant's Rifle", vendors = { { vendor = "Alice Fischer", zone = "Stormwind City" } } },
    [174485] = { name = "Burning Greatsword of the Ebon Blade", vendors = { { vendor = "Quartermaster Ozorg", zone = "Plaguelands: The Scarlet Enclave" }, { vendor = "Quartermaster Ozorg", zone = "Broken Shore" } } },
    [174486] = { name = "Crimson Greatsword of the Ebon Blade", vendors = { { vendor = "Quartermaster Ozorg", zone = "Plaguelands: The Scarlet Enclave" }, { vendor = "Quartermaster Ozorg", zone = "Broken Shore" } } },
    [174487] = { name = "Unholy Greatsword of the Ebon Blade", vendors = { { vendor = "Quartermaster Ozorg", zone = "Plaguelands: The Scarlet Enclave" }, { vendor = "Quartermaster Ozorg", zone = "Broken Shore" } } },
    [174488] = { name = "Freezing Greatsword of the Ebon Blade", vendors = { { vendor = "Quartermaster Ozorg", zone = "Plaguelands: The Scarlet Enclave" }, { vendor = "Quartermaster Ozorg", zone = "Broken Shore" } } },
    [174659] = { name = "Crimson Saber of the Ebon Blade", vendors = { { vendor = "Quartermaster Ozorg", zone = "Plaguelands: The Scarlet Enclave" }, { vendor = "Quartermaster Ozorg", zone = "Broken Shore" } } },
    [174660] = { name = "Freezing Saber of the Ebon Blade", vendors = { { vendor = "Quartermaster Ozorg", zone = "Plaguelands: The Scarlet Enclave" }, { vendor = "Quartermaster Ozorg", zone = "Broken Shore" } } },
    [174661] = { name = "Unholy Saber of the Ebon Blade", vendors = { { vendor = "Quartermaster Ozorg", zone = "Plaguelands: The Scarlet Enclave" }, { vendor = "Quartermaster Ozorg", zone = "Broken Shore" } } },
    [174662] = { name = "Burning Saber of the Ebon Blade", vendors = { { vendor = "Quartermaster Ozorg", zone = "Plaguelands: The Scarlet Enclave" }, { vendor = "Quartermaster Ozorg", zone = "Broken Shore" } } },

    ------------------------------------------------------------
    -- SHADOWLANDS (gap2 pass)
    ------------------------------------------------------------
    [174298] = { name = "Dutiful Disciple's Cleaver", vendors = { { vendor = "Alisius", zone = "Elysian Hold" }, { vendor = "Kelli Hoo", zone = "Elysian Hold" }, { vendor = "Provisioner Prothos", zone = "Elysian Hold" }, { vendor = "Battlemaster Endios", zone = "Elysian Hold" } } },
    [174300] = { name = "Doubt Tinged Carver", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [174301] = { name = "Selfless Bearer's Labrys", vendors = { { vendor = "Forgelite Neptira", zone = "Elysian Hold" } } },
    [174302] = { name = "Labrys of the Loyal Larion", vendors = { { vendor = "Alisius", zone = "Elysian Hold" }, { vendor = "Kelli Hoo", zone = "Elysian Hold" }, { vendor = "Provisioner Prothos", zone = "Elysian Hold" }, { vendor = "Battlemaster Endios", zone = "Elysian Hold" } } },
    [174303] = { name = "Harmonious Forgelite's Carver", vendors = { { vendor = "Adjutant Galos", zone = "Elysian Hold" } } },
    [175161] = { name = "Expeditionary Axe", vendors = { { vendor = "Provisioner Jin'hake", zone = "Orgrimmar" } } },
    [175162] = { name = "Expeditionary Longbow", vendors = { { vendor = "Quartermaster Richter", zone = "Stormwind City" } } },
    [175163] = { name = "Expeditionary Quarterstaff", vendors = { { vendor = "Provisioner Jin'hake", zone = "Orgrimmar" } } },
    [175164] = { name = "Expeditionary Staff", vendors = { { vendor = "Provisioner Jin'hake", zone = "Orgrimmar" } } },
    [175165] = { name = "Expeditionary Greataxe", vendors = { { vendor = "Provisioner Jin'hake", zone = "Orgrimmar" } } },
    [175166] = { name = "Expeditionary Greatsword", vendors = { { vendor = "Quartermaster Richter", zone = "Stormwind City" } } },
    [175167] = { name = "Expeditionary Staff", vendors = { { vendor = "Quartermaster Richter", zone = "Stormwind City" } } },
    [175168] = { name = "Expeditionary Quarterstaff", vendors = { { vendor = "Quartermaster Richter", zone = "Stormwind City" } } },
    [175169] = { name = "Expeditionary Longbow", vendors = { { vendor = "Provisioner Jin'hake", zone = "Orgrimmar" } } },
    [175170] = { name = "Expeditionary Short Sword", vendors = { { vendor = "Quartermaster Richter", zone = "Stormwind City" } } },
    [175171] = { name = "Expeditionary Dagger", vendors = { { vendor = "Provisioner Jin'hake", zone = "Orgrimmar" } } },
    [175172] = { name = "Expeditionary Dagger", vendors = { { vendor = "Quartermaster Richter", zone = "Stormwind City" } } },
    [175173] = { name = "Expeditionary Cudgel", vendors = { { vendor = "Quartermaster Richter", zone = "Stormwind City" } } },
    [175174] = { name = "Expeditionary Cudgel", vendors = { { vendor = "Provisioner Jin'hake", zone = "Orgrimmar" } } },
    [175248] = { name = "Selfless Bearer's Blade", vendors = { { vendor = "Forgelite Neptira", zone = "Elysian Hold" } } },
    [175249] = { name = "Selfless Collector's Javelin", vendors = { { vendor = "Forgelite Neptira", zone = "Elysian Hold" } } },
    [175251] = { name = "Forked Blade of Fortitude", vendors = { { vendor = "Alisius", zone = "Elysian Hold" }, { vendor = "Kelli Hoo", zone = "Elysian Hold" }, { vendor = "Provisioner Prothos", zone = "Elysian Hold" }, { vendor = "Battlemaster Endios", zone = "Elysian Hold" } } },
    [175279] = { name = "Lost Soul Xiphos", vendors = { { vendor = "Alisius", zone = "Elysian Hold" }, { vendor = "Kelli Hoo", zone = "Elysian Hold" }, { vendor = "Provisioner Prothos", zone = "Elysian Hold" }, { vendor = "Battlemaster Endios", zone = "Elysian Hold" } } },
    [176098] = { name = "Truthseeker Longbow", vendors = { { vendor = "Alisius", zone = "Elysian Hold" }, { vendor = "Kelli Hoo", zone = "Elysian Hold" }, { vendor = "Provisioner Prothos", zone = "Elysian Hold" }, { vendor = "Battlemaster Endios", zone = "Elysian Hold" } } },
    [177847] = { name = "Doubt Tinged Slicer", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [177848] = { name = "Harmonious Collector's Kopis", vendors = { { vendor = "Adjutant Galos", zone = "Elysian Hold" } } },
    [177849] = { name = "Soulbearer's Blade of Salvation", vendors = { { vendor = "Alisius", zone = "Elysian Hold" }, { vendor = "Kelli Hoo", zone = "Elysian Hold" }, { vendor = "Provisioner Prothos", zone = "Elysian Hold" }, { vendor = "Battlemaster Endios", zone = "Elysian Hold" } } },
    [177850] = { name = "Meditation's Muse", vendors = { { vendor = "Alisius", zone = "Elysian Hold" }, { vendor = "Kelli Hoo", zone = "Elysian Hold" }, { vendor = "Provisioner Prothos", zone = "Elysian Hold" }, { vendor = "Battlemaster Endios", zone = "Elysian Hold" } } },
    [177852] = { name = "Doubt Tinged Rapier", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [177853] = { name = "Selfless Watcher's Spellsword", vendors = { { vendor = "Forgelite Neptira", zone = "Elysian Hold" } } },
    [177854] = { name = "Harmonious Watcher's Spellsword", vendors = { { vendor = "Adjutant Galos", zone = "Elysian Hold" } } },
    [177855] = { name = "Spellblade of Antiquity", vendors = { { vendor = "Alisius", zone = "Elysian Hold" }, { vendor = "Kelli Hoo", zone = "Elysian Hold" }, { vendor = "Provisioner Prothos", zone = "Elysian Hold" }, { vendor = "Battlemaster Endios", zone = "Elysian Hold" } } },
    [177857] = { name = "Doubt Tinged Warbow", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [177858] = { name = "Selfless Forgelite's Longbow", vendors = { { vendor = "Forgelite Neptira", zone = "Elysian Hold" } } },
    [177859] = { name = "Harmonious Forgelite's Bow", vendors = { { vendor = "Adjutant Galos", zone = "Elysian Hold" } } },
    [177860] = { name = "Silvered Recurve of Reconciliation", vendors = { { vendor = "Alisius", zone = "Elysian Hold" }, { vendor = "Kelli Hoo", zone = "Elysian Hold" }, { vendor = "Provisioner Prothos", zone = "Elysian Hold" }, { vendor = "Battlemaster Endios", zone = "Elysian Hold" } } },
    [177862] = { name = "Doubt Tinged Twinblade", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [177863] = { name = "Selfless Watcher's Sidearm", vendors = { { vendor = "Forgelite Neptira", zone = "Elysian Hold" } } },
    [177864] = { name = "Harmonious Bearer's Poniard", vendors = { { vendor = "Adjutant Galos", zone = "Elysian Hold" } } },
    [177865] = { name = "Faithful Sidearm", vendors = { { vendor = "Alisius", zone = "Elysian Hold" }, { vendor = "Kelli Hoo", zone = "Elysian Hold" }, { vendor = "Provisioner Prothos", zone = "Elysian Hold" }, { vendor = "Battlemaster Endios", zone = "Elysian Hold" } } },
    [177871] = { name = "Doubt Tinged Glaive", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [177872] = { name = "Archon's Guiding Glaive", vendors = { { vendor = "Alisius", zone = "Elysian Hold" }, { vendor = "Kelli Hoo", zone = "Elysian Hold" }, { vendor = "Provisioner Prothos", zone = "Elysian Hold" }, { vendor = "Battlemaster Endios", zone = "Elysian Hold" } } },
    [178468] = { name = "Sinful Aspirant's Battleaxe", vendors = { { vendor = "Purveyor Zo'kuul", zone = "Oribos" } } },
    [178474] = { name = "Sinful Aspirant's Sword", vendors = { { vendor = "Purveyor Zo'kuul", zone = "Oribos" } } },
    [178475] = { name = "Sinful Aspirant's Greataxe", vendors = { { vendor = "Purveyor Zo'kuul", zone = "Oribos" } } },
    [178476] = { name = "Sinful Aspirant's Greatsword", vendors = { { vendor = "Purveyor Zo'kuul", zone = "Oribos" } } },
    [178481] = { name = "Sinful Aspirant's Gavel", vendors = { { vendor = "Purveyor Zo'kuul", zone = "Oribos" } } },
    [178663] = { name = "Sinful Aspirant's Hatchet", vendors = { { vendor = "Purveyor Zo'kuul", zone = "Oribos" } } },
    [178664] = { name = "Sinful Aspirant's Recurve", vendors = { { vendor = "Purveyor Zo'kuul", zone = "Oribos" } } },
    [178668] = { name = "Sinful Aspirant's Longspear", vendors = { { vendor = "Purveyor Zo'kuul", zone = "Oribos" } } },
    [178970] = { name = "Selfless Watcher's Spire", vendors = { { vendor = "Forgelite Neptira", zone = "Elysian Hold" } } },
    [178971] = { name = "Sinful Gladiator's Vesper", vendors = { { vendor = "Zo'sorg", zone = "Oribos" } } },
    [178972] = { name = "Doubt Tinged Greatstaff", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [178973] = { name = "Symphonic Chimekeeper", vendors = { { vendor = "Alisius", zone = "Elysian Hold" }, { vendor = "Kelli Hoo", zone = "Elysian Hold" }, { vendor = "Provisioner Prothos", zone = "Elysian Hold" }, { vendor = "Battlemaster Endios", zone = "Elysian Hold" } } },
    [178974] = { name = "Harmonious Watcher's Vesperstaff", vendors = { { vendor = "Adjutant Galos", zone = "Elysian Hold" } } },
    [178975] = { name = "Vesiphone's Vesper of Reflection", vendors = { { vendor = "Alisius", zone = "Elysian Hold" }, { vendor = "Kelli Hoo", zone = "Elysian Hold" }, { vendor = "Provisioner Prothos", zone = "Elysian Hold" }, { vendor = "Battlemaster Endios", zone = "Elysian Hold" } } },
    [179492] = { name = "Keepcrawler's Gutripper", vendors = { { vendor = "Sparklebreeze", zone = "Heart of the Forest" }, { vendor = "Adera", zone = "Heart of the Forest" }, { vendor = "Harkoth", zone = "Heart of the Forest" }, { vendor = "Sulanoom", zone = "Heart of the Forest" } } },
    [179493] = { name = "Fang of the Wild Hunt", vendors = { { vendor = "Mar'lan", zone = "Heart of the Forest" } } },
    [179494] = { name = "Night Courtier's Fang", vendors = { { vendor = "Elwyn", zone = "Heart of the Forest" } } },
    [179497] = { name = "Fang of the Winged Sentry", vendors = { { vendor = "Sparklebreeze", zone = "Heart of the Forest" }, { vendor = "Adera", zone = "Heart of the Forest" }, { vendor = "Harkoth", zone = "Heart of the Forest" }, { vendor = "Sulanoom", zone = "Heart of the Forest" } } },
    [179499] = { name = "Nightwillow Barb", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [179509] = { name = "Grove Warden's Edge", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [179514] = { name = "Ripvine Saber", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [179516] = { name = "Songwood Staff", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [179527] = { name = "Gargon-Tamer's Spear", vendors = { { vendor = "Sparklebreeze", zone = "Heart of the Forest" }, { vendor = "Adera", zone = "Heart of the Forest" }, { vendor = "Harkoth", zone = "Heart of the Forest" }, { vendor = "Sulanoom", zone = "Heart of the Forest" } } },
    [179529] = { name = "Warspear of the Wild Hunt", vendors = { { vendor = "Mar'lan", zone = "Heart of the Forest" } } },
    [179530] = { name = "Nightwatch Eviscerator", vendors = { { vendor = "Sparklebreeze", zone = "Heart of the Forest" }, { vendor = "Adera", zone = "Heart of the Forest" }, { vendor = "Harkoth", zone = "Heart of the Forest" }, { vendor = "Sulanoom", zone = "Heart of the Forest" } } },
    [179533] = { name = "Grove Warden's Harvester", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [179538] = { name = "Grove Warden's Maul", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [179541] = { name = "Colossal Sludgepounder", vendors = { { vendor = "Sparklebreeze", zone = "Heart of the Forest" }, { vendor = "Adera", zone = "Heart of the Forest" }, { vendor = "Harkoth", zone = "Heart of the Forest" }, { vendor = "Sulanoom", zone = "Heart of the Forest" } } },
    [179542] = { name = "Warmaul of the Wild Hunt", vendors = { { vendor = "Mar'lan", zone = "Heart of the Forest" } } },
    [179544] = { name = "Ashcarved Sledgehammer", vendors = { { vendor = "Sparklebreeze", zone = "Heart of the Forest" }, { vendor = "Adera", zone = "Heart of the Forest" }, { vendor = "Harkoth", zone = "Heart of the Forest" }, { vendor = "Sulanoom", zone = "Heart of the Forest" } } },
    [179548] = { name = "Elderwood Gavel", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [179557] = { name = "Baron's Oaken Scepter", vendors = { { vendor = "Sparklebreeze", zone = "Heart of the Forest" }, { vendor = "Adera", zone = "Heart of the Forest" }, { vendor = "Harkoth", zone = "Heart of the Forest" }, { vendor = "Sulanoom", zone = "Heart of the Forest" } } },
    [179560] = { name = "Scepter of the Wild Hunt", vendors = { { vendor = "Mar'lan", zone = "Heart of the Forest" } } },
    [179561] = { name = "Rootspinner's Bloodbough", vendors = { { vendor = "Sparklebreeze", zone = "Heart of the Forest" }, { vendor = "Adera", zone = "Heart of the Forest" }, { vendor = "Harkoth", zone = "Heart of the Forest" }, { vendor = "Sulanoom", zone = "Heart of the Forest" } } },
    [179577] = { name = "Stonesnap Mandibles", vendors = { { vendor = "Sparklebreeze", zone = "Heart of the Forest" }, { vendor = "Adera", zone = "Heart of the Forest" }, { vendor = "Harkoth", zone = "Heart of the Forest" }, { vendor = "Sulanoom", zone = "Heart of the Forest" } } },
    [179579] = { name = "Jaws of the Hungerer", vendors = { { vendor = "Sparklebreeze", zone = "Heart of the Forest" }, { vendor = "Adera", zone = "Heart of the Forest" }, { vendor = "Harkoth", zone = "Heart of the Forest" }, { vendor = "Sulanoom", zone = "Heart of the Forest" } } },
    [179580] = { name = "Jaws of the Wild Hunt", vendors = { { vendor = "Mar'lan", zone = "Heart of the Forest" } } },
    [179581] = { name = "Night Courtier's Jaws", vendors = { { vendor = "Elwyn", zone = "Heart of the Forest" } } },
    [179585] = { name = "Nightwillow Shortbow", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [180000] = { name = "Staff of the Penitent", vendors = { { vendor = "Sparklebreeze", zone = "Heart of the Forest" }, { vendor = "Adera", zone = "Heart of the Forest" }, { vendor = "Harkoth", zone = "Heart of the Forest" }, { vendor = "Sulanoom", zone = "Heart of the Forest" } } },
    [180002] = { name = "Spire of the Long Dark", vendors = { { vendor = "Sparklebreeze", zone = "Heart of the Forest" }, { vendor = "Adera", zone = "Heart of the Forest" }, { vendor = "Harkoth", zone = "Heart of the Forest" }, { vendor = "Sulanoom", zone = "Heart of the Forest" } } },
    [180005] = { name = "Staff of the Wild Hunt", vendors = { { vendor = "Mar'lan", zone = "Heart of the Forest" } } },
    [180020] = { name = "Night Courtier's Wand", vendors = { { vendor = "Elwyn", zone = "Heart of the Forest" } } },
    [180021] = { name = "Wand of the Wild Hunt", vendors = { { vendor = "Mar'lan", zone = "Heart of the Forest" } } },
    [180022] = { name = "Rootbulb of the Sinless", vendors = { { vendor = "Sparklebreeze", zone = "Heart of the Forest" }, { vendor = "Adera", zone = "Heart of the Forest" }, { vendor = "Harkoth", zone = "Heart of the Forest" }, { vendor = "Sulanoom", zone = "Heart of the Forest" } } },
    [180023] = { name = "Wand of Arboreal Artifice", vendors = { { vendor = "Sparklebreeze", zone = "Heart of the Forest" }, { vendor = "Adera", zone = "Heart of the Forest" }, { vendor = "Harkoth", zone = "Heart of the Forest" }, { vendor = "Sulanoom", zone = "Heart of the Forest" } } },
    [180071] = { name = "Shrieking Sinseeker", vendors = { { vendor = "Sparklebreeze", zone = "Heart of the Forest" }, { vendor = "Adera", zone = "Heart of the Forest" }, { vendor = "Harkoth", zone = "Heart of the Forest" }, { vendor = "Sulanoom", zone = "Heart of the Forest" } } },
    [180073] = { name = "Heartstalker's Longbow", vendors = { { vendor = "Sparklebreeze", zone = "Heart of the Forest" }, { vendor = "Adera", zone = "Heart of the Forest" }, { vendor = "Harkoth", zone = "Heart of the Forest" }, { vendor = "Sulanoom", zone = "Heart of the Forest" } } },
    [180079] = { name = "Warbow of the Wild Hunt", vendors = { { vendor = "Mar'lan", zone = "Heart of the Forest" } } },
    [180258] = { name = "Faeweald Fleshrender", vendors = { { vendor = "Sparklebreeze", zone = "Heart of the Forest" }, { vendor = "Adera", zone = "Heart of the Forest" }, { vendor = "Harkoth", zone = "Heart of the Forest" }, { vendor = "Sulanoom", zone = "Heart of the Forest" } } },
    [180259] = { name = "Warglaive of the Wild Hunt", vendors = { { vendor = "Mar'lan", zone = "Heart of the Forest" } } },
    [180260] = { name = "Deathdancer's Warglaive", vendors = { { vendor = "Sparklebreeze", zone = "Heart of the Forest" }, { vendor = "Adera", zone = "Heart of the Forest" }, { vendor = "Harkoth", zone = "Heart of the Forest" }, { vendor = "Sulanoom", zone = "Heart of the Forest" } } },
    [180311] = { name = "Selfless Collector's Cudgel", vendors = { { vendor = "Forgelite Neptira", zone = "Elysian Hold" } } },
    [180312] = { name = "Guarding Cudgel of the Goliath", vendors = { { vendor = "Alisius", zone = "Elysian Hold" }, { vendor = "Kelli Hoo", zone = "Elysian Hold" }, { vendor = "Provisioner Prothos", zone = "Elysian Hold" }, { vendor = "Battlemaster Endios", zone = "Elysian Hold" } } },
    [180314] = { name = "Doubt Tinged Bludgeon", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [180315] = { name = "Polemarch's Scepter of Faith", vendors = { { vendor = "Alisius", zone = "Elysian Hold" }, { vendor = "Kelli Hoo", zone = "Elysian Hold" }, { vendor = "Provisioner Prothos", zone = "Elysian Hold" }, { vendor = "Battlemaster Endios", zone = "Elysian Hold" } } },
    [180316] = { name = "Harmonious Collector's Greatmaul", vendors = { { vendor = "Adjutant Galos", zone = "Elysian Hold" } } },
    [180954] = { name = "Crypt Watcher's Spire", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [180955] = { name = "Stonewing Halberd", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [180956] = { name = "Axeblade Blunderbuss", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [180957] = { name = "Batwing Glaive", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [180958] = { name = "Redelev House Foil", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [180959] = { name = "Dredger Anklebiter", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [180960] = { name = "Shiny-Metal Topped Basher", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [180961] = { name = "Silver-Bladed Ritual Dagger", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [180962] = { name = "Sterling-Silver Cudgel", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [181141] = { name = "Ebony Soul Piercer", vendors = { { vendor = "Gregor the Pallidblade", zone = "Sinfall" } } },
    [181142] = { name = "Dark Blade of the Repentant", vendors = { { vendor = "Gregor the Pallidblade", zone = "Sinfall" } } },
    [181143] = { name = "Claw of the Stoneborn Executioner", vendors = { { vendor = "Gregor the Pallidblade", zone = "Sinfall" } } },
    [181144] = { name = "Gavel of Dark Diviniaton", vendors = { { vendor = "Gregor the Pallidblade", zone = "Sinfall" } } },
    [181146] = { name = "Singed Soul Spire", vendors = { { vendor = "Gregor the Pallidblade", zone = "Sinfall" } } },
    [181148] = { name = "Stave of Dark Passions", vendors = { { vendor = "Gregor the Pallidblade", zone = "Sinfall" } } },
    [181149] = { name = "Dredbat's Dark Guile", vendors = { { vendor = "Gregor the Pallidblade", zone = "Sinfall" } } },
    [181150] = { name = "Sin's Ebon Edge", vendors = { { vendor = "Gregor the Pallidblade", zone = "Sinfall" } } },
    [181151] = { name = "Souleater's Ebony Barb", vendors = { { vendor = "Gregor the Pallidblade", zone = "Sinfall" } } },
    [181152] = { name = "Dredwing's Ebon Edge", vendors = { { vendor = "Gregor the Pallidblade", zone = "Sinfall" } } },
    [181153] = { name = "Ebony Dredspine Repeater", vendors = { { vendor = "Gregor the Pallidblade", zone = "Sinfall" } } },
    [181320] = { name = "Bonejowl Ballista", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [181321] = { name = "Gem-Crowned Wand", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [181323] = { name = "Blightclutched Greatstaff", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [181325] = { name = "Marrowfused Dagger", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [181326] = { name = "Bloodstained Hacksaw", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [181327] = { name = "Spineforged Tenderizer", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [181328] = { name = "Marrowfused Sword", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [181329] = { name = "Marrowfused Claymore", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [181330] = { name = "Marrowfused Warglaive", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [182319] = { name = "Mace of the Wild Hunt", vendors = { { vendor = "Mar'lan", zone = "Heart of the Forest" } } },
    [182351] = { name = "Mace of the Unburdened", vendors = { { vendor = "Sparklebreeze", zone = "Heart of the Forest" }, { vendor = "Adera", zone = "Heart of the Forest" }, { vendor = "Harkoth", zone = "Heart of the Forest" }, { vendor = "Sulanoom", zone = "Heart of the Forest" } } },
    [182369] = { name = "Ornate Ember Court Dagger", vendors = { { vendor = "Freeman", zone = "Revendreth" } } },
    [182370] = { name = "Crusader's Blade of the Ember Court", vendors = { { vendor = "Freeman", zone = "Revendreth" } } },
    [182371] = { name = "Claws of the Court's Sentinels", vendors = { { vendor = "Freeman", zone = "Revendreth" } } },
    [182372] = { name = "Ember Court Gavel", vendors = { { vendor = "Freeman", zone = "Revendreth" } } },
    [182373] = { name = "Ember Court Accuser's Stave", vendors = { { vendor = "Freeman", zone = "Revendreth" } } },
    [182374] = { name = "Spiked Ember Court Stave", vendors = { { vendor = "Freeman", zone = "Revendreth" } } },
    [182375] = { name = "Ember Court Duelist's Blade", vendors = { { vendor = "Freeman", zone = "Revendreth" } } },
    [182376] = { name = "Court Guradian's Blade", vendors = { { vendor = "Freeman", zone = "Revendreth" } } },
    [182377] = { name = "Court Sinweaver's Blade", vendors = { { vendor = "Freeman", zone = "Revendreth" } } },
    [182378] = { name = "Winged Blade of the Ember Court", vendors = { { vendor = "Freeman", zone = "Revendreth" } } },
    [182379] = { name = "Ember Court Sentry's Crossbow", vendors = { { vendor = "Freeman", zone = "Revendreth" } } },
    [182388] = { name = "Nathrian Assassin's Backbiter", vendors = { { vendor = "Solivane", zone = "Sinfall" }, { vendor = "Stoneweaver McConnell", zone = "Sinfall" }, { vendor = "Vorpalia", zone = "Sinfall" }, { vendor = "Lord Afanas", zone = "Sinfall" }, { vendor = "Night Guardian Jethraasa", zone = "Sinfall" } } },
    [182389] = { name = "Nathrian Crusader's Bastard Sword", vendors = { { vendor = "Solivane", zone = "Sinfall" }, { vendor = "Stoneweaver McConnell", zone = "Sinfall" }, { vendor = "Vorpalia", zone = "Sinfall" }, { vendor = "Lord Afanas", zone = "Sinfall" }, { vendor = "Night Guardian Jethraasa", zone = "Sinfall" } } },
    [182390] = { name = "Talons of the Legion Generals", vendors = { { vendor = "Solivane", zone = "Sinfall" }, { vendor = "Stoneweaver McConnell", zone = "Sinfall" }, { vendor = "Vorpalia", zone = "Sinfall" }, { vendor = "Lord Afanas", zone = "Sinfall" }, { vendor = "Night Guardian Jethraasa", zone = "Sinfall" } } },
    [182391] = { name = "Sinstealer's Sentencing Gavel", vendors = { { vendor = "Solivane", zone = "Sinfall" }, { vendor = "Stoneweaver McConnell", zone = "Sinfall" }, { vendor = "Vorpalia", zone = "Sinfall" }, { vendor = "Lord Afanas", zone = "Sinfall" }, { vendor = "Night Guardian Jethraasa", zone = "Sinfall" } } },
    [182392] = { name = "Sinbearer's Absolution Staff", vendors = { { vendor = "Solivane", zone = "Sinfall" }, { vendor = "Stoneweaver McConnell", zone = "Sinfall" }, { vendor = "Vorpalia", zone = "Sinfall" }, { vendor = "Lord Afanas", zone = "Sinfall" }, { vendor = "Night Guardian Jethraasa", zone = "Sinfall" } } },
    [182393] = { name = "Rod of the Stone Sentinels", vendors = { { vendor = "Solivane", zone = "Sinfall" }, { vendor = "Stoneweaver McConnell", zone = "Sinfall" }, { vendor = "Vorpalia", zone = "Sinfall" }, { vendor = "Lord Afanas", zone = "Sinfall" }, { vendor = "Night Guardian Jethraasa", zone = "Sinfall" } } },
    [182394] = { name = "Dredwing Barbed Swordbreaker", vendors = { { vendor = "Solivane", zone = "Sinfall" }, { vendor = "Stoneweaver McConnell", zone = "Sinfall" }, { vendor = "Vorpalia", zone = "Sinfall" }, { vendor = "Lord Afanas", zone = "Sinfall" }, { vendor = "Night Guardian Jethraasa", zone = "Sinfall" } } },
    [182395] = { name = "Stoneborn Terrorblade", vendors = { { vendor = "Solivane", zone = "Sinfall" }, { vendor = "Stoneweaver McConnell", zone = "Sinfall" }, { vendor = "Vorpalia", zone = "Sinfall" }, { vendor = "Lord Afanas", zone = "Sinfall" }, { vendor = "Night Guardian Jethraasa", zone = "Sinfall" } } },
    [182396] = { name = "Hungering Ritualist's Animablade", vendors = { { vendor = "Solivane", zone = "Sinfall" }, { vendor = "Stoneweaver McConnell", zone = "Sinfall" }, { vendor = "Vorpalia", zone = "Sinfall" }, { vendor = "Lord Afanas", zone = "Sinfall" }, { vendor = "Night Guardian Jethraasa", zone = "Sinfall" } } },
    [182397] = { name = "Legion General's Glaivewing", vendors = { { vendor = "Solivane", zone = "Sinfall" }, { vendor = "Stoneweaver McConnell", zone = "Sinfall" }, { vendor = "Vorpalia", zone = "Sinfall" }, { vendor = "Lord Afanas", zone = "Sinfall" }, { vendor = "Night Guardian Jethraasa", zone = "Sinfall" } } },
    [182398] = { name = "Dredfang Ironspitter", vendors = { { vendor = "Solivane", zone = "Sinfall" }, { vendor = "Stoneweaver McConnell", zone = "Sinfall" }, { vendor = "Vorpalia", zone = "Sinfall" }, { vendor = "Lord Afanas", zone = "Sinfall" }, { vendor = "Night Guardian Jethraasa", zone = "Sinfall" } } },
    [182404] = { name = "Sinful Gladiator's Sineater Gavel", vendors = { { vendor = "Zo'sorg", zone = "Oribos" } } },
    [182407] = { name = "Sinful Gladiator's Wingblade", vendors = { { vendor = "Zo'sorg", zone = "Oribos" } } },
    [182414] = { name = "Crimson Court Backstabber", vendors = { { vendor = "Solivane", zone = "Sinfall" }, { vendor = "Stoneweaver McConnell", zone = "Sinfall" }, { vendor = "Vorpalia", zone = "Sinfall" }, { vendor = "Lord Afanas", zone = "Sinfall" }, { vendor = "Night Guardian Jethraasa", zone = "Sinfall" } } },
    [182415] = { name = "Stoneborn Goliath's Cleaver", vendors = { { vendor = "Solivane", zone = "Sinfall" }, { vendor = "Stoneweaver McConnell", zone = "Sinfall" }, { vendor = "Vorpalia", zone = "Sinfall" }, { vendor = "Lord Afanas", zone = "Sinfall" }, { vendor = "Night Guardian Jethraasa", zone = "Sinfall" } } },
    [182416] = { name = "Claws of the Stone Generals", vendors = { { vendor = "Solivane", zone = "Sinfall" }, { vendor = "Stoneweaver McConnell", zone = "Sinfall" }, { vendor = "Vorpalia", zone = "Sinfall" }, { vendor = "Lord Afanas", zone = "Sinfall" }, { vendor = "Night Guardian Jethraasa", zone = "Sinfall" } } },
    [182417] = { name = "Mace of Enveloping Sins", vendors = { { vendor = "Solivane", zone = "Sinfall" }, { vendor = "Stoneweaver McConnell", zone = "Sinfall" }, { vendor = "Vorpalia", zone = "Sinfall" }, { vendor = "Lord Afanas", zone = "Sinfall" }, { vendor = "Night Guardian Jethraasa", zone = "Sinfall" } } },
    [182418] = { name = "Torch of Fiery Atonement", vendors = { { vendor = "Solivane", zone = "Sinfall" }, { vendor = "Stoneweaver McConnell", zone = "Sinfall" }, { vendor = "Vorpalia", zone = "Sinfall" }, { vendor = "Lord Afanas", zone = "Sinfall" }, { vendor = "Night Guardian Jethraasa", zone = "Sinfall" } } },
    [182419] = { name = "Nathrian Torchbearer's Stave", vendors = { { vendor = "Solivane", zone = "Sinfall" }, { vendor = "Stoneweaver McConnell", zone = "Sinfall" }, { vendor = "Vorpalia", zone = "Sinfall" }, { vendor = "Lord Afanas", zone = "Sinfall" }, { vendor = "Night Guardian Jethraasa", zone = "Sinfall" } } },
    [182420] = { name = "Nathrian Duelist's Fleshrender", vendors = { { vendor = "Solivane", zone = "Sinfall" }, { vendor = "Stoneweaver McConnell", zone = "Sinfall" }, { vendor = "Vorpalia", zone = "Sinfall" }, { vendor = "Lord Afanas", zone = "Sinfall" }, { vendor = "Night Guardian Jethraasa", zone = "Sinfall" } } },
    [182421] = { name = "Barbed-Edge of the Stone Legion", vendors = { { vendor = "Solivane", zone = "Sinfall" }, { vendor = "Stoneweaver McConnell", zone = "Sinfall" }, { vendor = "Vorpalia", zone = "Sinfall" }, { vendor = "Lord Afanas", zone = "Sinfall" }, { vendor = "Night Guardian Jethraasa", zone = "Sinfall" } } },
    [182422] = { name = "Dread Inquisitor's Spine", vendors = { { vendor = "Solivane", zone = "Sinfall" }, { vendor = "Stoneweaver McConnell", zone = "Sinfall" }, { vendor = "Vorpalia", zone = "Sinfall" }, { vendor = "Lord Afanas", zone = "Sinfall" }, { vendor = "Night Guardian Jethraasa", zone = "Sinfall" } } },
    [182423] = { name = "Wingdancer's Warglaive", vendors = { { vendor = "Solivane", zone = "Sinfall" }, { vendor = "Stoneweaver McConnell", zone = "Sinfall" }, { vendor = "Vorpalia", zone = "Sinfall" }, { vendor = "Lord Afanas", zone = "Sinfall" }, { vendor = "Night Guardian Jethraasa", zone = "Sinfall" } } },
    [182424] = { name = "Dredbat Repeating Crossbow", vendors = { { vendor = "Solivane", zone = "Sinfall" }, { vendor = "Stoneweaver McConnell", zone = "Sinfall" }, { vendor = "Vorpalia", zone = "Sinfall" }, { vendor = "Lord Afanas", zone = "Sinfall" }, { vendor = "Night Guardian Jethraasa", zone = "Sinfall" } } },
    [182431] = { name = "Gilded Sineater's Staff", vendors = { { vendor = "Chachi the Artiste", zone = "Sinfall" } } },
    [183450] = { name = "Goreforged Shank", vendors = { { vendor = "Slayer Araya", zone = "Seat of the Primus" } } },
    [183453] = { name = "Goreforged Mace", vendors = { { vendor = "Slayer Araya", zone = "Seat of the Primus" } } },
    [183454] = { name = "Goreforged Warglaive", vendors = { { vendor = "Slayer Araya", zone = "Seat of the Primus" } } },
    [183455] = { name = "Goreforged Staff", vendors = { { vendor = "Slayer Araya", zone = "Seat of the Primus" } } },
    [183456] = { name = "Goreforged Blunderbuss", vendors = { { vendor = "Slayer Araya", zone = "Seat of the Primus" } } },
    [183457] = { name = "Goreforged Greataxe", vendors = { { vendor = "Slayer Araya", zone = "Seat of the Primus" } } },
    [183458] = { name = "Goreforged Polearm", vendors = { { vendor = "Slayer Araya", zone = "Seat of the Primus" } } },
    [183459] = { name = "Goreforged Cleaver", vendors = { { vendor = "Slayer Araya", zone = "Seat of the Primus" } } },
    [183460] = { name = "Goreforged Sickle", vendors = { { vendor = "Slayer Araya", zone = "Seat of the Primus" } } },
    [183946] = { name = "Goreforged Chopper", vendors = { { vendor = "Slayer Araya", zone = "Seat of the Primus" } } },
    [183968] = { name = "Venthyr Ritualist's Kris", vendors = { { vendor = "Ta'rmoro", zone = "Revendreth" } } },
    [183969] = { name = "Theater Prop Kris", vendors = { { vendor = "Master Clerk Salorn", zone = "Ardenweald" } } },
    [183974] = { name = "Ember Court Ceremonial Dagger", vendors = { { vendor = "Freeman", zone = "Revendreth" } } },
    [183977] = { name = "House Renathal Ceremonial Dagger", vendors = { { vendor = "Ta'rmoro", zone = "Revendreth" } } },
    [183979] = { name = "Standard Fencer's Rapier", vendors = { { vendor = "Ta'rmoro", zone = "Revendreth" } } },
    [183980] = { name = "Kyrian Gladius", vendors = { { vendor = "Ta'rmoro", zone = "Revendreth" } } },
    [183981] = { name = "Kyrian Greatblade", vendors = { { vendor = "Ta'rmoro", zone = "Revendreth" } } },
    [183982] = { name = "Devourer Mite Sticker", vendors = { { vendor = "Ta'rmoro", zone = "Revendreth" } } },
    [183983] = { name = "Rogue Ritualist's Spellblade", vendors = { { vendor = "Ta'rmoro", zone = "Revendreth" } } },
    [183984] = { name = "Maldraxxian Shortblade", vendors = { { vendor = "Ta'rmoro", zone = "Revendreth" } } },
    [183985] = { name = "Maldraxxian Bonesaw", vendors = { { vendor = "Ta'rmoro", zone = "Revendreth" } } },
    [184063] = { name = "Shank of the Unseen Eye", vendors = { { vendor = "Su Zettai", zone = "Seat of the Primus" } } },
    [184066] = { name = "Wriggling Soulcharged Mace", vendors = { { vendor = "Su Zettai", zone = "Seat of the Primus" } } },
    [184068] = { name = "Greatstaff of the Lichsworn", vendors = { { vendor = "Su Zettai", zone = "Seat of the Primus" } } },
    [184071] = { name = "Blooddoused Aranakk Polearm", vendors = { { vendor = "Su Zettai", zone = "Seat of the Primus" } } },
    [184230] = { name = "Pike of the Honored Peltast", vendors = { { vendor = "Alisius", zone = "Elysian Hold" }, { vendor = "Kelli Hoo", zone = "Elysian Hold" }, { vendor = "Provisioner Prothos", zone = "Elysian Hold" }, { vendor = "Battlemaster Endios", zone = "Elysian Hold" } } },
    [184236] = { name = "Warglaive of Devoted Might", vendors = { { vendor = "Alisius", zone = "Elysian Hold" }, { vendor = "Kelli Hoo", zone = "Elysian Hold" }, { vendor = "Provisioner Prothos", zone = "Elysian Hold" }, { vendor = "Battlemaster Endios", zone = "Elysian Hold" } } },
    [184238] = { name = "Doubt-Tinged Warglaive", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [184239] = { name = "Selfless Bearer's Warglaive", vendors = { { vendor = "Forgelite Neptira", zone = "Elysian Hold" } } },
    [184240] = { name = "Harmonious Bearer's Warglaive", vendors = { { vendor = "Adjutant Galos", zone = "Elysian Hold" } } },
    [184241] = { name = "Stone-Sentinel Breaker", vendors = { { vendor = "Sparklebreeze", zone = "Heart of the Forest" }, { vendor = "Adera", zone = "Heart of the Forest" }, { vendor = "Harkoth", zone = "Heart of the Forest" }, { vendor = "Sulanoom", zone = "Heart of the Forest" } } },
    [184243] = { name = "Praetorian Wingblade", vendors = { { vendor = "Alisius", zone = "Elysian Hold" }, { vendor = "Kelli Hoo", zone = "Elysian Hold" }, { vendor = "Provisioner Prothos", zone = "Elysian Hold" }, { vendor = "Battlemaster Endios", zone = "Elysian Hold" } } },
    [184244] = { name = "Biting Gutsliver Shank", vendors = { { vendor = "Mellisa Fate", zone = "Seat of the Primus" }, { vendor = "Taiya Tacere", zone = "Seat of the Primus" }, { vendor = "Odious Gwor", zone = "Seat of the Primus" }, { vendor = "Mortis Elfsen", zone = "Seat of the Primus" } } },
    [184247] = { name = "Grip of the Dead", vendors = { { vendor = "Mellisa Fate", zone = "Seat of the Primus" }, { vendor = "Taiya Tacere", zone = "Seat of the Primus" }, { vendor = "Odious Gwor", zone = "Seat of the Primus" }, { vendor = "Mortis Elfsen", zone = "Seat of the Primus" } } },
    [184248] = { name = "Blightforged Twinblade", vendors = { { vendor = "Mellisa Fate", zone = "Seat of the Primus" }, { vendor = "Taiya Tacere", zone = "Seat of the Primus" }, { vendor = "Odious Gwor", zone = "Seat of the Primus" }, { vendor = "Mortis Elfsen", zone = "Seat of the Primus" } } },
    [184249] = { name = "Staff of the Lichsworn Lieutenant", vendors = { { vendor = "Mellisa Fate", zone = "Seat of the Primus" }, { vendor = "Taiya Tacere", zone = "Seat of the Primus" }, { vendor = "Odious Gwor", zone = "Seat of the Primus" }, { vendor = "Mortis Elfsen", zone = "Seat of the Primus" } } },
    [184250] = { name = "Deadeye Blunderbuss", vendors = { { vendor = "Mellisa Fate", zone = "Seat of the Primus" }, { vendor = "Taiya Tacere", zone = "Seat of the Primus" }, { vendor = "Odious Gwor", zone = "Seat of the Primus" }, { vendor = "Mortis Elfsen", zone = "Seat of the Primus" } } },
    [184251] = { name = "Ossified Broadaxe", vendors = { { vendor = "Mellisa Fate", zone = "Seat of the Primus" }, { vendor = "Taiya Tacere", zone = "Seat of the Primus" }, { vendor = "Odious Gwor", zone = "Seat of the Primus" }, { vendor = "Mortis Elfsen", zone = "Seat of the Primus" } } },
    [184252] = { name = "Aranakk Torture Device", vendors = { { vendor = "Mellisa Fate", zone = "Seat of the Primus" }, { vendor = "Taiya Tacere", zone = "Seat of the Primus" }, { vendor = "Odious Gwor", zone = "Seat of the Primus" }, { vendor = "Mortis Elfsen", zone = "Seat of the Primus" } } },
    [184253] = { name = "Abdomen Chopper", vendors = { { vendor = "Mellisa Fate", zone = "Seat of the Primus" }, { vendor = "Taiya Tacere", zone = "Seat of the Primus" }, { vendor = "Odious Gwor", zone = "Seat of the Primus" }, { vendor = "Mortis Elfsen", zone = "Seat of the Primus" } } },
    [184254] = { name = "Plaguespine Sickle", vendors = { { vendor = "Mellisa Fate", zone = "Seat of the Primus" }, { vendor = "Taiya Tacere", zone = "Seat of the Primus" }, { vendor = "Odious Gwor", zone = "Seat of the Primus" }, { vendor = "Mortis Elfsen", zone = "Seat of the Primus" } } },
    [184255] = { name = "Gristlegore Hacker", vendors = { { vendor = "Mellisa Fate", zone = "Seat of the Primus" }, { vendor = "Taiya Tacere", zone = "Seat of the Primus" }, { vendor = "Odious Gwor", zone = "Seat of the Primus" }, { vendor = "Mortis Elfsen", zone = "Seat of the Primus" } } },
    [184256] = { name = "Vicious Goreripper Shank", vendors = { { vendor = "Mellisa Fate", zone = "Seat of the Primus" }, { vendor = "Taiya Tacere", zone = "Seat of the Primus" }, { vendor = "Odious Gwor", zone = "Seat of the Primus" }, { vendor = "Mortis Elfsen", zone = "Seat of the Primus" } } },
    [184259] = { name = "Grasp from the Grave", vendors = { { vendor = "Mellisa Fate", zone = "Seat of the Primus" }, { vendor = "Taiya Tacere", zone = "Seat of the Primus" }, { vendor = "Odious Gwor", zone = "Seat of the Primus" }, { vendor = "Mortis Elfsen", zone = "Seat of the Primus" } } },
    [184260] = { name = "Warglaive of the Hidden Fiend", vendors = { { vendor = "Mellisa Fate", zone = "Seat of the Primus" }, { vendor = "Taiya Tacere", zone = "Seat of the Primus" }, { vendor = "Odious Gwor", zone = "Seat of the Primus" }, { vendor = "Mortis Elfsen", zone = "Seat of the Primus" } } },
    [184261] = { name = "Greatstaff of the Lichsworn General", vendors = { { vendor = "Mellisa Fate", zone = "Seat of the Primus" }, { vendor = "Taiya Tacere", zone = "Seat of the Primus" }, { vendor = "Odious Gwor", zone = "Seat of the Primus" }, { vendor = "Mortis Elfsen", zone = "Seat of the Primus" } } },
    [184262] = { name = "Deadeye Cannon", vendors = { { vendor = "Mellisa Fate", zone = "Seat of the Primus" }, { vendor = "Taiya Tacere", zone = "Seat of the Primus" }, { vendor = "Odious Gwor", zone = "Seat of the Primus" }, { vendor = "Mortis Elfsen", zone = "Seat of the Primus" } } },
    [184263] = { name = "Ossified Greataxe", vendors = { { vendor = "Mellisa Fate", zone = "Seat of the Primus" }, { vendor = "Taiya Tacere", zone = "Seat of the Primus" }, { vendor = "Odious Gwor", zone = "Seat of the Primus" }, { vendor = "Mortis Elfsen", zone = "Seat of the Primus" } } },
    [184264] = { name = "Krexus's Bloodletting Polearm", vendors = { { vendor = "Mellisa Fate", zone = "Seat of the Primus" }, { vendor = "Taiya Tacere", zone = "Seat of the Primus" }, { vendor = "Odious Gwor", zone = "Seat of the Primus" }, { vendor = "Mortis Elfsen", zone = "Seat of the Primus" } } },
    [184265] = { name = "Abdomen Splitter", vendors = { { vendor = "Mellisa Fate", zone = "Seat of the Primus" }, { vendor = "Taiya Tacere", zone = "Seat of the Primus" }, { vendor = "Odious Gwor", zone = "Seat of the Primus" }, { vendor = "Mortis Elfsen", zone = "Seat of the Primus" } } },
    [184266] = { name = "Fleshscourge Sickle", vendors = { { vendor = "Mellisa Fate", zone = "Seat of the Primus" }, { vendor = "Taiya Tacere", zone = "Seat of the Primus" }, { vendor = "Odious Gwor", zone = "Seat of the Primus" }, { vendor = "Mortis Elfsen", zone = "Seat of the Primus" } } },
    [184267] = { name = "Skullcleaver of the Merciless One", vendors = { { vendor = "Mellisa Fate", zone = "Seat of the Primus" }, { vendor = "Taiya Tacere", zone = "Seat of the Primus" }, { vendor = "Odious Gwor", zone = "Seat of the Primus" }, { vendor = "Mortis Elfsen", zone = "Seat of the Primus" } } },
    [184270] = { name = "Disciple's Peacebound Poniard", vendors = { { vendor = "Alisius", zone = "Elysian Hold" }, { vendor = "Kelli Hoo", zone = "Elysian Hold" }, { vendor = "Provisioner Prothos", zone = "Elysian Hold" }, { vendor = "Battlemaster Endios", zone = "Elysian Hold" } } },
    [184271] = { name = "Xandria's Kopis of Courage", vendors = { { vendor = "Alisius", zone = "Elysian Hold" }, { vendor = "Kelli Hoo", zone = "Elysian Hold" }, { vendor = "Provisioner Prothos", zone = "Elysian Hold" }, { vendor = "Battlemaster Endios", zone = "Elysian Hold" } } },
    [184272] = { name = "Ascended Gladius of Glory", vendors = { { vendor = "Alisius", zone = "Elysian Hold" }, { vendor = "Kelli Hoo", zone = "Elysian Hold" }, { vendor = "Provisioner Prothos", zone = "Elysian Hold" }, { vendor = "Battlemaster Endios", zone = "Elysian Hold" } } },
    [184273] = { name = "Puremind Piercer", vendors = { { vendor = "Alisius", zone = "Elysian Hold" }, { vendor = "Kelli Hoo", zone = "Elysian Hold" }, { vendor = "Provisioner Prothos", zone = "Elysian Hold" }, { vendor = "Battlemaster Endios", zone = "Elysian Hold" } } },
    [184274] = { name = "Reaver of Renewed Resolve", vendors = { { vendor = "Alisius", zone = "Elysian Hold" }, { vendor = "Kelli Hoo", zone = "Elysian Hold" }, { vendor = "Provisioner Prothos", zone = "Elysian Hold" }, { vendor = "Battlemaster Endios", zone = "Elysian Hold" } } },
    [184275] = { name = "Sacred Sparrer's Edge", vendors = { { vendor = "Alisius", zone = "Elysian Hold" }, { vendor = "Kelli Hoo", zone = "Elysian Hold" }, { vendor = "Provisioner Prothos", zone = "Elysian Hold" }, { vendor = "Battlemaster Endios", zone = "Elysian Hold" } } },
    [184535] = { name = "Selfless Forgelite's Hatchet", vendors = { { vendor = "Forgelite Neptira", zone = "Elysian Hold" } } },
    [184536] = { name = "Selfless Watcher's Edge", vendors = { { vendor = "Forgelite Neptira", zone = "Elysian Hold" } } },
    [184537] = { name = "Selfless Forgelite's Falchion", vendors = { { vendor = "Forgelite Neptira", zone = "Elysian Hold" } } },
    [184538] = { name = "Doubt Tinged Cleaver", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [184539] = { name = "Doubt Tinged Mindpiercer", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [184540] = { name = "Doubt Tinged Longsword", vendors = { { vendor = "Phixin", zone = "Elysian Hold" } } },
    [184541] = { name = "Harmonious Collector's Battleaxe", vendors = { { vendor = "Adjutant Galos", zone = "Elysian Hold" } } },
    [184542] = { name = "Harmonious Forgelite's Blade", vendors = { { vendor = "Adjutant Galos", zone = "Elysian Hold" } } },
    [184543] = { name = "Harmonious Watcher's Barb", vendors = { { vendor = "Adjutant Galos", zone = "Elysian Hold" } } },
    [184545] = { name = "Harmonious Bearer's Halberd", vendors = { { vendor = "Adjutant Galos", zone = "Elysian Hold" } } },
    [185284] = { name = "Unchained Aspirant's Battleaxe", vendors = { { vendor = "Purveyor Zo'kuul", zone = "Oribos" } } },
    [185288] = { name = "Unchained Aspirant's Staff", vendors = { { vendor = "Purveyor Zo'kuul", zone = "Oribos" } } },
    [185289] = { name = "Unchained Aspirant's Sword", vendors = { { vendor = "Purveyor Zo'kuul", zone = "Oribos" } } },
    [185291] = { name = "Unchained Aspirant's Greatsword", vendors = { { vendor = "Purveyor Zo'kuul", zone = "Oribos" } } },
    [185293] = { name = "Unchained Aspirant's Warglaive", vendors = { { vendor = "Purveyor Zo'kuul", zone = "Oribos" } } },
    [185297] = { name = "Unchained Aspirant's Recurve", vendors = { { vendor = "Purveyor Zo'kuul", zone = "Oribos" } } },
    [185299] = { name = "Unchained Aspirant's Blade", vendors = { { vendor = "Purveyor Zo'kuul", zone = "Oribos" } } },
    [185308] = { name = "Unchained Aspirant's Crescent", vendors = { { vendor = "Purveyor Zo'kuul", zone = "Oribos" } } },
    [185314] = { name = "Unchained Gladiator's Hacker", vendors = { { vendor = "Zo'sorg", zone = "Oribos" } } },
    [186411] = { name = "Soulrent Outrider's Recurve", vendors = { { vendor = "Ta'choso", zone = "Oribos" } } },
    [186413] = { name = "Directional Meltdown Projector", vendors = { { vendor = "Ta'choso", zone = "Oribos" } } },
    [186854] = { name = "Cosmic Gladiator's Splitter", vendors = { { vendor = "Zo'sorg", zone = "Oribos" } } },
    [186855] = { name = "Cosmic Gladiator's Hacker", vendors = { { vendor = "Zo'sorg", zone = "Oribos" } } },
    [186948] = { name = "Cosmic Aspirant's Battleaxe", vendors = { { vendor = "Purveyor Zo'kuul", zone = "Oribos" } } },
    [186949] = { name = "Cosmic Aspirant's Dagger", vendors = { { vendor = "Purveyor Zo'kuul", zone = "Oribos" } } },
    [186951] = { name = "Cosmic Aspirant's Polearm", vendors = { { vendor = "Purveyor Zo'kuul", zone = "Oribos" } } },
    [186958] = { name = "Cosmic Aspirant's Gavel", vendors = { { vendor = "Purveyor Zo'kuul", zone = "Oribos" } } },
    [186960] = { name = "Cosmic Aspirant's Hatchet", vendors = { { vendor = "Purveyor Zo'kuul", zone = "Oribos" } } },
    [186961] = { name = "Cosmic Aspirant's Recurve", vendors = { { vendor = "Purveyor Zo'kuul", zone = "Oribos" } } },
    [186962] = { name = "Cosmic Aspirant's Longspear", vendors = { { vendor = "Purveyor Zo'kuul", zone = "Oribos" } } },
    [187056] = { name = "The Devouring Cold", vendors = { { vendor = "Ta'choso", zone = "Oribos" } } },
    [187565] = { name = "Argussian Reach Longbow", vendors = { { vendor = "Aridormi", zone = "Dalaran" } } },
    [187566] = { name = "Arcsmasher", vendors = { { vendor = "Aridormi", zone = "Dalaran" } } },
    [187567] = { name = "Nightborne Arcsaber", vendors = { { vendor = "Aridormi", zone = "Dalaran" } } },
    [187578] = { name = "Warpcaster's Staff", vendors = { { vendor = "Aridormi", zone = "Dalaran" } } },
    [188737] = { name = "Ebon Mawsworn Crossbow", vendors = { { vendor = "Broker Ve'ken", zone = "The Fracture Chambers" }, { vendor = "Broker Ve'nott", zone = "Skoldus Hall" } } },
    [188743] = { name = "Ashen Mawsworn Crossbow", vendors = { { vendor = "Broker Ve'ken", zone = "The Fracture Chambers" }, { vendor = "Broker Ve'nott", zone = "Skoldus Hall" } } },
    [188744] = { name = "Ebon Mawsworn Maul", vendors = { { vendor = "Broker Ve'ken", zone = "The Fracture Chambers" }, { vendor = "Broker Ve'nott", zone = "Skoldus Hall" } } },
    [188745] = { name = "Ashen Mawsworn Maul", vendors = { { vendor = "Broker Ve'ken", zone = "The Fracture Chambers" }, { vendor = "Broker Ve'nott", zone = "Skoldus Hall" } } },
    [188746] = { name = "Ebon Mawsworn Halberd", vendors = { { vendor = "Broker Ve'ken", zone = "The Fracture Chambers" }, { vendor = "Broker Ve'nott", zone = "Skoldus Hall" } } },
    [188747] = { name = "Ashen Mawsworn Halberd", vendors = { { vendor = "Broker Ve'ken", zone = "The Fracture Chambers" }, { vendor = "Broker Ve'nott", zone = "Skoldus Hall" } } },
    [188748] = { name = "Ebon Mawsworn Staff", vendors = { { vendor = "Broker Ve'ken", zone = "The Fracture Chambers" }, { vendor = "Broker Ve'nott", zone = "Skoldus Hall" } } },
    [188749] = { name = "Ashen Mawsworn Staff", vendors = { { vendor = "Broker Ve'ken", zone = "The Fracture Chambers" }, { vendor = "Broker Ve'nott", zone = "Skoldus Hall" } } },
    [188750] = { name = "Burnished Mawsworn Greatsword", vendors = { { vendor = "Broker Ve'ken", zone = "The Fracture Chambers" }, { vendor = "Broker Ve'nott", zone = "Skoldus Hall" } } },
    [188752] = { name = "Argent Mawsworn Greatsword", vendors = { { vendor = "Broker Ve'ken", zone = "The Fracture Chambers" }, { vendor = "Broker Ve'nott", zone = "Skoldus Hall" } } },
    [188753] = { name = "Gilded Mawsworn Greatsword", vendors = { { vendor = "Broker Ve'ken", zone = "The Fracture Chambers" }, { vendor = "Broker Ve'nott", zone = "Skoldus Hall" } } },
    [189563] = { name = "Cosmic Gladiator's Rifle", vendors = { { vendor = "Zo'sorg", zone = "Oribos" } } },
    [192284] = { name = "Eternal Gladiator's Hacker", vendors = { { vendor = "Zo'sorg", zone = "Oribos" } } },
    [192288] = { name = "Eternal Gladiator's Ceremonial Sword", vendors = { { vendor = "Zo'sorg", zone = "Oribos" } } },
    [192289] = { name = "Eternal Gladiator's Xiphos", vendors = { { vendor = "Zo'sorg", zone = "Oribos" } } },
    [192291] = { name = "Eternal Gladiator's Pulverizer", vendors = { { vendor = "Zo'sorg", zone = "Oribos" } } },
    [192293] = { name = "Eternal Gladiator's Scythe", vendors = { { vendor = "Zo'sorg", zone = "Oribos" } } },
    [192308] = { name = "Eternal Gladiator's Greatsword", vendors = { { vendor = "Zo'sorg", zone = "Oribos" } } },
    [192312] = { name = "Eternal Gladiator's Ripper", vendors = { { vendor = "Zo'sorg", zone = "Oribos" } } },
    [192395] = { name = "Eternal Aspirant's Dagger", vendors = { { vendor = "Purveyor Zo'kuul", zone = "Oribos" } } },
    [192398] = { name = "Eternal Aspirant's Staff", vendors = { { vendor = "Purveyor Zo'kuul", zone = "Oribos" } } },
    [192399] = { name = "Eternal Aspirant's Sword", vendors = { { vendor = "Purveyor Zo'kuul", zone = "Oribos" } } },
    [192409] = { name = "Eternal Aspirant's Blade", vendors = { { vendor = "Purveyor Zo'kuul", zone = "Oribos" } } },
}
