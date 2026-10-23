-- ProfessionSources.lua
-- Xal's Warchest - which profession/recipe crafts which weapon appearance.
--
-- C_TransmogCollection.GetSourceInfo hands back an itemID and sourceType = 6
-- ("profession") but records nothing about WHICH profession or recipe. This
-- table is the missing half, for WEAPONS specifically, across every
-- expansion in the game's history.
--
-- Merged from the per-expansion research files in
-- D:\WoW_Addons\Dev\warchest_research\ - see those files for the full ID
-- policy. Legion carries zero entries - real finding, not a gap: the
-- Artifact system replaced weapon crafting that entire expansion, same
-- reason InstanceSources.lua has no Legion weapon drops either.
--
-- ARCHAEOLOGY (skill id 794): a genuine profession source in Cataclysm/
-- MoP/WoD (Archaeology-assembled artifacts like Zin'rokh) - not in the
-- original 7-profession list, confirmed directly via its own Wowhead skill
-- page and folded in here rather than treated as an error.
--
-- recipeSource (where you learn the recipe) is NOT included anywhere -
-- Wowhead's rate limiting blocked the per-spell-page fetches needed for
-- most expansions, and Midnight spell pages carry no trainer data
-- pre-release. TBC and Wrath additionally rest on sourcemore verification
-- only (t=6 + skill id + name match) - their bulk-recipe cross-check got
-- rate-limited before finishing, documented as a real gap, not hidden.
--
-- BfA: most entries have a recipe spellID whose bulk listing `creates`
-- field points at a DIFFERENT itemID than the entry - that's BfA's
-- item-level crafting-rank system (one recipe, several ilvl outputs). Every
-- entry was still name-matched before inclusion.

local addonName, addonTable = ...
addonTable.ProfessionSources = {

    ------------------------------------------------------------
    -- CLASSIC
    ------------------------------------------------------------
    ------------------------------------------------------------------
    -- BLACKSMITHING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=2737   ("Copper Mace")
    [2844] = {
        name = "Copper Mace",
        profession = "Blacksmithing",
        recipe = "Copper Mace",
    },
    -- source: https://www.wowhead.com/spell=2738   ("Copper Axe")
    [2845] = {
        name = "Copper Axe",
        profession = "Blacksmithing",
        recipe = "Copper Axe",
    },
    -- source: https://www.wowhead.com/spell=2739   ("Copper Shortsword")
    [2847] = {
        name = "Copper Shortsword",
        profession = "Blacksmithing",
        recipe = "Copper Shortsword",
    },
    -- source: https://www.wowhead.com/spell=2740   ("Bronze Mace")
    [2848] = {
        name = "Bronze Mace",
        profession = "Blacksmithing",
        recipe = "Bronze Mace",
    },
    -- source: https://www.wowhead.com/spell=2741   ("Bronze Axe")
    [2849] = {
        name = "Bronze Axe",
        profession = "Blacksmithing",
        recipe = "Bronze Axe",
    },
    -- source: https://www.wowhead.com/spell=2742   ("Bronze Shortsword")
    [2850] = {
        name = "Bronze Shortsword",
        profession = "Blacksmithing",
        recipe = "Bronze Shortsword",
    },
    -- source: https://www.wowhead.com/spell=3292   ("Heavy Copper Broadsword")
    [3487] = {
        name = "Heavy Copper Broadsword",
        profession = "Blacksmithing",
        recipe = "Heavy Copper Broadsword",
    },
    -- source: https://www.wowhead.com/spell=3293   ("Copper Battle Axe")
    [3488] = {
        name = "Copper Battle Axe",
        profession = "Blacksmithing",
        recipe = "Copper Battle Axe",
    },
    -- source: https://www.wowhead.com/spell=3294   ("Thick War Axe")
    [3489] = {
        name = "Thick War Axe",
        profession = "Blacksmithing",
        recipe = "Thick War Axe",
    },
    -- source: https://www.wowhead.com/spell=3295   ("Deadly Bronze Poniard")
    [3490] = {
        name = "Deadly Bronze Poniard",
        profession = "Blacksmithing",
        recipe = "Deadly Bronze Poniard",
    },
    -- source: https://www.wowhead.com/spell=3296   ("Heavy Bronze Mace")
    [3491] = {
        name = "Heavy Bronze Mace",
        profession = "Blacksmithing",
        recipe = "Heavy Bronze Mace",
    },
    -- source: https://www.wowhead.com/spell=3297   ("Mighty Iron Hammer")
    [3492] = {
        name = "Mighty Iron Hammer",
        profession = "Blacksmithing",
        recipe = "Mighty Iron Hammer",
    },
    -- source: https://www.wowhead.com/spell=3491   ("Big Bronze Knife")
    [3848] = {
        name = "Big Bronze Knife",
        profession = "Blacksmithing",
        recipe = "Big Bronze Knife",
    },
    -- source: https://www.wowhead.com/spell=3492   ("Hardened Iron Shortsword")
    [3849] = {
        name = "Hardened Iron Shortsword",
        profession = "Blacksmithing",
        recipe = "Hardened Iron Shortsword",
    },
    -- source: https://www.wowhead.com/spell=3493   ("Jade Serpentblade")
    [3850] = {
        name = "Jade Serpentblade",
        profession = "Blacksmithing",
        recipe = "Jade Serpentblade",
    },
    -- source: https://www.wowhead.com/spell=3494   ("Solid Iron Maul")
    [3851] = {
        name = "Solid Iron Maul",
        profession = "Blacksmithing",
        recipe = "Solid Iron Maul",
    },
    -- source: https://www.wowhead.com/spell=3495   ("Golden Iron Destroyer")
    [3852] = {
        name = "Golden Iron Destroyer",
        profession = "Blacksmithing",
        recipe = "Golden Iron Destroyer",
    },
    -- source: https://www.wowhead.com/spell=3496   ("Moonsteel Broadsword")
    [3853] = {
        name = "Moonsteel Broadsword",
        profession = "Blacksmithing",
        recipe = "Moonsteel Broadsword",
    },
    -- source: https://www.wowhead.com/spell=3497   ("Frost Tiger Blade")
    [3854] = {
        name = "Frost Tiger Blade",
        profession = "Blacksmithing",
        recipe = "Frost Tiger Blade",
    },
    -- source: https://www.wowhead.com/spell=3498   ("Massive Iron Axe")
    [3855] = {
        name = "Massive Iron Axe",
        profession = "Blacksmithing",
        recipe = "Massive Iron Axe",
    },
    -- source: https://www.wowhead.com/spell=3500   ("Shadow Crescent Axe")
    [3856] = {
        name = "Shadow Crescent Axe",
        profession = "Blacksmithing",
        recipe = "Shadow Crescent Axe",
    },
    -- source: https://www.wowhead.com/spell=6517   ("Pearl-handled Dagger")
    [5540] = {
        name = "Pearl-Handled Dagger",
        profession = "Blacksmithing",
        recipe = "Pearl-handled Dagger",
    },
    -- source: https://www.wowhead.com/spell=6518   ("Iridescent Hammer")
    [5541] = {
        name = "Iridescent Hammer",
        profession = "Blacksmithing",
        recipe = "Iridescent Hammer",
    },
    -- source: https://www.wowhead.com/spell=7408   ("Heavy Copper Maul")
    [6214] = {
        name = "Heavy Copper Maul",
        profession = "Blacksmithing",
        recipe = "Heavy Copper Maul",
    },
    -- source: https://www.wowhead.com/spell=8880   ("Copper Dagger")
    [7166] = {
        name = "Copper Dagger",
        profession = "Blacksmithing",
        recipe = "Copper Dagger",
    },
    -- source: https://www.wowhead.com/spell=9993   ("Heavy Mithril Axe")
    [7941] = {
        name = "Heavy Mithril Axe",
        profession = "Blacksmithing",
        recipe = "Heavy Mithril Axe",
    },
    -- source: https://www.wowhead.com/spell=9995   ("Blue Glittering Axe")
    [7942] = {
        name = "Blue Glittering Axe",
        profession = "Blacksmithing",
        recipe = "Blue Glittering Axe",
    },
    -- source: https://www.wowhead.com/spell=9997   ("Wicked Mithril Blade")
    [7943] = {
        name = "Wicked Mithril Blade",
        profession = "Blacksmithing",
        recipe = "Wicked Mithril Blade",
    },
    -- source: https://www.wowhead.com/spell=10005   ("Dazzling Mithril Rapier")
    [7944] = {
        name = "Dazzling Mithril Rapier",
        profession = "Blacksmithing",
        recipe = "Dazzling Mithril Rapier",
    },
    -- source: https://www.wowhead.com/spell=10001   ("Big Black Mace")
    [7945] = {
        name = "Big Black Mace",
        profession = "Blacksmithing",
        recipe = "Big Black Mace",
    },
    -- source: https://www.wowhead.com/spell=10009   ("Runed Mithril Hammer")
    [7946] = {
        name = "Runed Mithril Hammer",
        profession = "Blacksmithing",
        recipe = "Runed Mithril Hammer",
    },
    -- source: https://www.wowhead.com/spell=10013   ("Ebon Shiv")
    [7947] = {
        name = "Ebon Shiv",
        profession = "Blacksmithing",
        recipe = "Ebon Shiv",
    },
    -- source: https://www.wowhead.com/spell=10003   ("The Shatterer")
    [7954] = {
        name = "The Shatterer",
        profession = "Blacksmithing",
        recipe = "The Shatterer",
    },
    -- source: https://www.wowhead.com/spell=9983   ("Copper Claymore")
    [7955] = {
        name = "Copper Claymore",
        profession = "Blacksmithing",
        recipe = "Copper Claymore",
    },
    -- source: https://www.wowhead.com/spell=9985   ("Bronze Warhammer")
    [7956] = {
        name = "Bronze Warhammer",
        profession = "Blacksmithing",
        recipe = "Bronze Warhammer",
    },
    -- source: https://www.wowhead.com/spell=9986   ("Bronze Greatsword")
    [7957] = {
        name = "Bronze Greatsword",
        profession = "Blacksmithing",
        recipe = "Bronze Greatsword",
    },
    -- source: https://www.wowhead.com/spell=9987   ("Bronze Battle Axe")
    [7958] = {
        name = "Bronze Battle Axe",
        profession = "Blacksmithing",
        recipe = "Bronze Battle Axe",
    },
    -- source: https://www.wowhead.com/spell=10011   ("Blight")
    [7959] = {
        name = "Blight",
        profession = "Blacksmithing",
        recipe = "Blight",
    },
    -- source: https://www.wowhead.com/spell=10015   ("Truesilver Champion")
    [7960] = {
        name = "Truesilver Champion",
        profession = "Blacksmithing",
        recipe = "Truesilver Champion",
    },
    -- source: https://www.wowhead.com/spell=10007   ("Phantom Blade")
    [7961] = {
        name = "Phantom Blade",
        profession = "Blacksmithing",
        recipe = "Phantom Blade",
    },
    -- source: https://www.wowhead.com/spell=15294   ("Dark Iron Sunderer")
    [11607] = {
        name = "Dark Iron Sunderer",
        profession = "Blacksmithing",
        recipe = "Dark Iron Sunderer",
    },
    -- source: https://www.wowhead.com/spell=15292   ("Dark Iron Pulverizer")
    [11608] = {
        name = "Dark Iron Pulverizer",
        profession = "Blacksmithing",
        recipe = "Dark Iron Pulverizer",
    },
    -- source: https://www.wowhead.com/spell=15972   ("Glinting Steel Dagger")
    [12259] = {
        name = "Glinting Steel Dagger",
        profession = "Blacksmithing",
        recipe = "Glinting Steel Dagger",
    },
    -- source: https://www.wowhead.com/spell=15973   ("Searing Golden Blade")
    [12260] = {
        name = "Searing Golden Blade",
        profession = "Blacksmithing",
        recipe = "Searing Golden Blade",
    },
    -- source: https://www.wowhead.com/spell=16969   ("Ornate Thorium Handaxe")
    [12773] = {
        name = "Ornate Thorium Handaxe",
        profession = "Blacksmithing",
        recipe = "Ornate Thorium Handaxe",
    },
    -- source: https://www.wowhead.com/spell=16970   ("Dawn's Edge")
    [12774] = {
        name = "Dawn's Edge",
        profession = "Blacksmithing",
        recipe = "Dawn's Edge",
    },
    -- source: https://www.wowhead.com/spell=16971   ("Huge Thorium Battleaxe")
    [12775] = {
        name = "Huge Thorium Battleaxe",
        profession = "Blacksmithing",
        recipe = "Huge Thorium Battleaxe",
    },
    -- source: https://www.wowhead.com/spell=16973   ("Enchanted Battlehammer")
    [12776] = {
        name = "Enchanted Battlehammer",
        profession = "Blacksmithing",
        recipe = "Enchanted Battlehammer",
    },
    -- source: https://www.wowhead.com/spell=16978   ("Blazing Rapier")
    [12777] = {
        name = "Blazing Rapier",
        profession = "Blacksmithing",
        recipe = "Blazing Rapier",
    },
    -- source: https://www.wowhead.com/spell=16983   ("Serenity")
    [12781] = {
        name = "Serenity",
        profession = "Blacksmithing",
        recipe = "Serenity",
    },
    -- source: https://www.wowhead.com/spell=16985   ("Corruption")
    [12782] = {
        name = "Corruption",
        profession = "Blacksmithing",
        recipe = "Corruption",
    },
    -- source: https://www.wowhead.com/spell=16995   ("Heartseeker")
    [12783] = {
        name = "Heartseeker",
        profession = "Blacksmithing",
        recipe = "Heartseeker",
    },
    -- source: https://www.wowhead.com/spell=16994   ("Arcanite Reaper")
    [12784] = {
        name = "Arcanite Reaper",
        profession = "Blacksmithing",
        recipe = "Arcanite Reaper",
    },
    -- source: https://www.wowhead.com/spell=16990   ("Arcanite Champion")
    [12790] = {
        name = "Arcanite Champion",
        profession = "Blacksmithing",
        recipe = "Arcanite Champion",
    },
    -- source: https://www.wowhead.com/spell=16984   ("Volcanic Hammer")
    [12792] = {
        name = "Volcanic Hammer",
        profession = "Blacksmithing",
        recipe = "Volcanic Hammer",
    },
    -- source: https://www.wowhead.com/spell=16993   ("Masterwork Stormhammer")
    [12794] = {
        name = "Masterwork Stormhammer",
        profession = "Blacksmithing",
        recipe = "Masterwork Stormhammer",
    },
    -- source: https://www.wowhead.com/spell=16988   ("Hammer of the Titans")
    [12796] = {
        name = "Hammer of the Titans",
        profession = "Blacksmithing",
        recipe = "Hammer of the Titans",
    },
    -- source: https://www.wowhead.com/spell=16992   ("Frostguard")
    [12797] = {
        name = "Frostguard",
        profession = "Blacksmithing",
        recipe = "Frostguard",
    },
    -- source: https://www.wowhead.com/spell=16991   ("Annihilator")
    [12798] = {
        name = "Annihilator",
        profession = "Blacksmithing",
        recipe = "Annihilator",
    },
    -- source: https://www.wowhead.com/spell=20890   ("Dark Iron Reaver")
    [17015] = {
        name = "Dark Iron Reaver",
        profession = "Blacksmithing",
        recipe = "Dark Iron Reaver",
    },
    -- source: https://www.wowhead.com/spell=20897   ("Dark Iron Destroyer")
    [17016] = {
        name = "Dark Iron Destroyer",
        profession = "Blacksmithing",
        recipe = "Dark Iron Destroyer",
    },
    -- source: https://www.wowhead.com/spell=21161   ("Sulfuron Hammer")
    [17193] = {
        name = "Sulfuron Hammer",
        profession = "Blacksmithing",
        recipe = "Sulfuron Hammer",
    },
    -- source: https://www.wowhead.com/spell=21913   ("Edge of Winter")
    [17704] = {
        name = "Edge of Winter",
        profession = "Blacksmithing",
        recipe = "Edge of Winter",
    },
    -- source: https://www.wowhead.com/spell=23638   ("Black Amnesty")
    [19166] = {
        name = "Black Amnesty",
        profession = "Blacksmithing",
        recipe = "Black Amnesty",
    },
    -- source: https://www.wowhead.com/spell=23639   ("Blackfury")
    [19167] = {
        name = "Blackfury",
        profession = "Blacksmithing",
        recipe = "Blackfury",
    },
    -- source: https://www.wowhead.com/spell=23652   ("Blackguard")
    [19168] = {
        name = "Blackguard",
        profession = "Blacksmithing",
        recipe = "Blackguard",
    },
    -- source: https://www.wowhead.com/spell=23653   ("Nightfall")
    [19169] = {
        name = "Nightfall",
        profession = "Blacksmithing",
        recipe = "Nightfall",
    },
    -- source: https://www.wowhead.com/spell=23650   ("Ebon Hand")
    [19170] = {
        name = "Ebon Hand",
        profession = "Blacksmithing",
        recipe = "Ebon Hand",
    },
    -- source: https://www.wowhead.com/spell=27832   ("Sageblade")
    [22383] = {
        name = "Sageblade",
        profession = "Blacksmithing",
        recipe = "Sageblade",
    },
    -- source: https://www.wowhead.com/spell=27830   ("Persuader")
    [22384] = {
        name = "Persuader",
        profession = "Blacksmithing",
        recipe = "Persuader",
    },

    ------------------------------------------------------------------
    -- ENCHANTING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=14293   ("Lesser Magic Wand")
    [11287] = {
        name = "Lesser Magic Wand",
        profession = "Enchanting",
        recipe = "Lesser Magic Wand",
    },
    -- source: https://www.wowhead.com/spell=14807   ("Greater Magic Wand")
    [11288] = {
        name = "Greater Magic Wand",
        profession = "Enchanting",
        recipe = "Greater Magic Wand",
    },
    -- source: https://www.wowhead.com/spell=14809   ("Lesser Mystic Wand")
    [11289] = {
        name = "Lesser Mystic Wand",
        profession = "Enchanting",
        recipe = "Lesser Mystic Wand",
    },
    -- source: https://www.wowhead.com/spell=14810   ("Greater Mystic Wand")
    [11290] = {
        name = "Greater Mystic Wand",
        profession = "Enchanting",
        recipe = "Greater Mystic Wand",
    },

    ------------------------------------------------------------------
    -- ENGINEERING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=3925   ("Rough Boomstick")
    [4362] = {
        name = "Rough Boomstick",
        profession = "Engineering",
        recipe = "Rough Boomstick",
    },
    -- source: https://www.wowhead.com/spell=3936   ("Deadly Blunderbuss")
    [4369] = {
        name = "Deadly Blunderbuss",
        profession = "Engineering",
        recipe = "Deadly Blunderbuss",
    },
    -- source: https://www.wowhead.com/spell=3939   ("Lovingly Crafted Boomstick")
    [4372] = {
        name = "Lovingly Crafted Boomstick",
        profession = "Engineering",
        recipe = "Lovingly Crafted Boomstick",
    },
    -- source: https://www.wowhead.com/spell=3949   ("Silver-plated Shotgun")
    [4379] = {
        name = "Silver-Plated Shotgun",
        profession = "Engineering",
        recipe = "Silver-plated Shotgun",
    },
    -- source: https://www.wowhead.com/spell=3954   ("Moonsight Rifle")
    [4383] = {
        name = "Moonsight Rifle",
        profession = "Engineering",
        recipe = "Moonsight Rifle",
    },
    -- source: https://www.wowhead.com/spell=12595   ("Mithril Blunderbuss")
    [10508] = {
        name = "Mithril Blunderbuss",
        profession = "Engineering",
        recipe = "Mithril Blunderbuss",
    },
    -- source: https://www.wowhead.com/spell=12614   ("Mithril Heavy-bore Rifle")
    [10510] = {
        name = "Mithril Heavy-Bore Rifle",
        profession = "Engineering",
        recipe = "Mithril Heavy-bore Rifle",
    },
    -- source: https://www.wowhead.com/spell=19792   ("Thorium Rifle")
    [15995] = {
        name = "Thorium Rifle",
        profession = "Engineering",
        recipe = "Thorium Rifle",
    },
    -- source: https://www.wowhead.com/spell=19796   ("Dark Iron Rifle")
    [16004] = {
        name = "Dark Iron Rifle",
        profession = "Engineering",
        recipe = "Dark Iron Rifle",
    },
    -- source: https://www.wowhead.com/spell=19833   ("Flawless Arcanite Rifle")
    [16007] = {
        name = "Flawless Arcanite Rifle",
        profession = "Engineering",
        recipe = "Flawless Arcanite Rifle",
    },
    -- source: https://www.wowhead.com/spell=22795   ("Core Marksman Rifle")
    [18282] = {
        name = "Core Marksman Rifle",
        profession = "Engineering",
        recipe = "Core Marksman Rifle",
    },

    ------------------------------------------------------------
    -- THE BURNING CRUSADE
    ------------------------------------------------------------
    ------------------------------------------------------------------
    -- BLACKSMITHING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=29557   ("Fel Iron Hatchet")
    [23497] = {
        name = "Fel Iron Hatchet",
        profession = "Blacksmithing",
        recipe = "Fel Iron Hatchet",
    },
    -- source: https://www.wowhead.com/spell=29558   ("Fel Iron Hammer")
    [23498] = {
        name = "Fel Iron Hammer",
        profession = "Blacksmithing",
        recipe = "Fel Iron Hammer",
    },
    -- source: https://www.wowhead.com/spell=29565   ("Fel Iron Greatsword")
    [23499] = {
        name = "Fel Iron Greatsword",
        profession = "Blacksmithing",
        recipe = "Fel Iron Greatsword",
    },
    -- source: https://www.wowhead.com/spell=29566   ("Adamantite Maul")
    [23502] = {
        name = "Adamantite Maul",
        profession = "Blacksmithing",
        recipe = "Adamantite Maul",
    },
    -- source: https://www.wowhead.com/spell=29568   ("Adamantite Cleaver")
    [23503] = {
        name = "Adamantite Cleaver",
        profession = "Blacksmithing",
        recipe = "Adamantite Cleaver",
    },
    -- source: https://www.wowhead.com/spell=29569   ("Adamantite Dagger")
    [23504] = {
        name = "Adamantite Dagger",
        profession = "Blacksmithing",
        recipe = "Adamantite Dagger",
    },
    -- source: https://www.wowhead.com/spell=29571   ("Adamantite Rapier")
    [23505] = {
        name = "Adamantite Rapier",
        profession = "Blacksmithing",
        recipe = "Adamantite Rapier",
    },
    -- source: https://www.wowhead.com/spell=29692   ("Felsteel Longblade")
    [23540] = {
        name = "Felsteel Longblade",
        profession = "Blacksmithing",
        recipe = "Felsteel Longblade",
    },
    -- source: https://www.wowhead.com/spell=29693   ("Khorium Champion")
    [23541] = {
        name = "Khorium Champion",
        profession = "Blacksmithing",
        recipe = "Khorium Champion",
    },
    -- source: https://www.wowhead.com/spell=29694   ("Fel Edged Battleaxe")
    [23542] = {
        name = "Fel Edged Battleaxe",
        profession = "Blacksmithing",
        recipe = "Fel Edged Battleaxe",
    },
    -- source: https://www.wowhead.com/spell=29695   ("Felsteel Reaper")
    [23543] = {
        name = "Felsteel Reaper",
        profession = "Blacksmithing",
        recipe = "Felsteel Reaper",
    },
    -- source: https://www.wowhead.com/spell=29696   ("Runic Hammer")
    [23544] = {
        name = "Runic Hammer",
        profession = "Blacksmithing",
        recipe = "Runic Hammer",
    },
    -- source: https://www.wowhead.com/spell=29697   ("Fel Hardened Maul")
    [23546] = {
        name = "Fel Hardened Maul",
        profession = "Blacksmithing",
        recipe = "Fel Hardened Maul",
    },
    -- source: https://www.wowhead.com/spell=29698   ("Eternium Runed Blade")
    [23554] = {
        name = "Eternium Runed Blade",
        profession = "Blacksmithing",
        recipe = "Eternium Runed Blade",
    },
    -- source: https://www.wowhead.com/spell=29699   ("Dirge")
    [23555] = {
        name = "Dirge",
        profession = "Blacksmithing",
        recipe = "Dirge",
    },
    -- source: https://www.wowhead.com/spell=29700   ("Hand of Eternity")
    [23556] = {
        name = "Hand of Eternity",
        profession = "Blacksmithing",
        recipe = "Hand of Eternity",
    },
    -- source: https://www.wowhead.com/spell=34535   ("Fireguard")
    [28425] = {
        name = "Fireguard",
        profession = "Blacksmithing",
        recipe = "Fireguard",
    },
    -- source: https://www.wowhead.com/spell=34537   ("Blazeguard")
    [28426] = {
        name = "Blazeguard",
        profession = "Blacksmithing",
        recipe = "Blazeguard",
    },
    -- source: https://www.wowhead.com/spell=36258   ("Blazefury")
    [28427] = {
        name = "Blazefury",
        profession = "Blacksmithing",
        recipe = "Blazefury",
    },
    -- source: https://www.wowhead.com/spell=34538   ("Lionheart Blade")
    [28428] = {
        name = "Lionheart Blade",
        profession = "Blacksmithing",
        recipe = "Lionheart Blade",
    },
    -- source: https://www.wowhead.com/spell=34540   ("Lionheart Champion")
    [28429] = {
        name = "Lionheart Champion",
        profession = "Blacksmithing",
        recipe = "Lionheart Champion",
    },
    -- source: https://www.wowhead.com/spell=36259   ("Lionheart Executioner")
    [28430] = {
        name = "Lionheart Executioner",
        profession = "Blacksmithing",
        recipe = "Lionheart Executioner",
    },
    -- source: https://www.wowhead.com/spell=34541   ("The Planar Edge")
    [28431] = {
        name = "The Planar Edge",
        profession = "Blacksmithing",
        recipe = "The Planar Edge",
    },
    -- source: https://www.wowhead.com/spell=34542   ("Black Planar Edge")
    [28432] = {
        name = "Black Planar Edge",
        profession = "Blacksmithing",
        recipe = "Black Planar Edge",
    },
    -- source: https://www.wowhead.com/spell=36260   ("Wicked Edge of the Planes")
    [28433] = {
        name = "Wicked Edge of the Planes",
        profession = "Blacksmithing",
        recipe = "Wicked Edge of the Planes",
    },
    -- source: https://www.wowhead.com/spell=34543   ("Lunar Crescent")
    [28434] = {
        name = "Lunar Crescent",
        profession = "Blacksmithing",
        recipe = "Lunar Crescent",
    },
    -- source: https://www.wowhead.com/spell=34544   ("Mooncleaver")
    [28435] = {
        name = "Mooncleaver",
        profession = "Blacksmithing",
        recipe = "Mooncleaver",
    },
    -- source: https://www.wowhead.com/spell=36261   ("Bloodmoon")
    [28436] = {
        name = "Bloodmoon",
        profession = "Blacksmithing",
        recipe = "Bloodmoon",
    },
    -- source: https://www.wowhead.com/spell=34545   ("Drakefist Hammer")
    [28437] = {
        name = "Drakefist Hammer",
        profession = "Blacksmithing",
        recipe = "Drakefist Hammer",
    },
    -- source: https://www.wowhead.com/spell=34546   ("Dragonmaw")
    [28438] = {
        name = "Dragonmaw",
        profession = "Blacksmithing",
        recipe = "Dragonmaw",
    },
    -- source: https://www.wowhead.com/spell=36262   ("Dragonstrike")
    [28439] = {
        name = "Dragonstrike",
        profession = "Blacksmithing",
        recipe = "Dragonstrike",
    },
    -- source: https://www.wowhead.com/spell=34547   ("Thunder")
    [28440] = {
        name = "Thunder",
        profession = "Blacksmithing",
        recipe = "Thunder",
    },
    -- source: https://www.wowhead.com/spell=34548   ("Deep Thunder")
    [28441] = {
        name = "Deep Thunder",
        profession = "Blacksmithing",
        recipe = "Deep Thunder",
    },
    -- source: https://www.wowhead.com/spell=36263   ("Stormherald")
    [28442] = {
        name = "Stormherald",
        profession = "Blacksmithing",
        recipe = "Stormherald",
    },
    -- source: https://www.wowhead.com/spell=36125   ("Light Earthforged Blade")
    [30071] = {
        name = "Light Earthforged Blade",
        profession = "Blacksmithing",
        recipe = "Light Earthforged Blade",
    },
    -- source: https://www.wowhead.com/spell=36126   ("Light Skyforged Axe")
    [30072] = {
        name = "Light Skyforged Axe",
        profession = "Blacksmithing",
        recipe = "Light Skyforged Axe",
    },
    -- source: https://www.wowhead.com/spell=36128   ("Light Emberforged Hammer")
    [30073] = {
        name = "Light Emberforged Hammer",
        profession = "Blacksmithing",
        recipe = "Light Emberforged Hammer",
    },
    -- source: https://www.wowhead.com/spell=36131   ("Windforged Rapier")
    [30077] = {
        name = "Windforged Rapier",
        profession = "Blacksmithing",
        recipe = "Windforged Rapier",
    },
    -- source: https://www.wowhead.com/spell=36133   ("Stoneforged Claymore")
    [30086] = {
        name = "Stoneforged Claymore",
        profession = "Blacksmithing",
        recipe = "Stoneforged Claymore",
    },
    -- source: https://www.wowhead.com/spell=36134   ("Stormforged Axe")
    [30087] = {
        name = "Stormforged Axe",
        profession = "Blacksmithing",
        recipe = "Stormforged Axe",
    },
    -- source: https://www.wowhead.com/spell=36135   ("Skyforged Great Axe")
    [30088] = {
        name = "Skyforged Great Axe",
        profession = "Blacksmithing",
        recipe = "Skyforged Great Axe",
    },
    -- source: https://www.wowhead.com/spell=36136   ("Lavaforged Warhammer")
    [30089] = {
        name = "Lavaforged Warhammer",
        profession = "Blacksmithing",
        recipe = "Lavaforged Warhammer",
    },
    -- source: https://www.wowhead.com/spell=36137   ("Great Earthforged Hammer")
    [30093] = {
        name = "Great Earthforged Hammer",
        profession = "Blacksmithing",
        recipe = "Great Earthforged Hammer",
    },
    -- source: https://www.wowhead.com/spell=43846   ("Hammer of Righteous Might")
    [32854] = {
        name = "Hammer of Righteous Might",
        profession = "Blacksmithing",
        recipe = "Hammer of Righteous Might",
    },
    -- source: https://www.wowhead.com/spell=43549   ("Heavy Copper Longsword")
    [33791] = {
        name = "Heavy Copper Longsword",
        profession = "Blacksmithing",
        recipe = "Heavy Copper Longsword",
    },

    ------------------------------------------------------------------
    -- ENGINEERING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=30312   ("Fel Iron Musket")
    [23742] = {
        name = "Fel Iron Musket",
        profession = "Engineering",
        recipe = "Fel Iron Musket",
    },
    -- source: https://www.wowhead.com/spell=30313   ("Adamantite Rifle")
    [23746] = {
        name = "Adamantite Rifle",
        profession = "Engineering",
        recipe = "Adamantite Rifle",
    },
    -- source: https://www.wowhead.com/spell=30314   ("Felsteel Boomstick")
    [23747] = {
        name = "Felsteel Boomstick",
        profession = "Engineering",
        recipe = "Felsteel Boomstick",
    },
    -- source: https://www.wowhead.com/spell=30315   ("Ornate Khorium Rifle")
    [23748] = {
        name = "Ornate Khorium Rifle",
        profession = "Engineering",
        recipe = "Ornate Khorium Rifle",
    },
    -- source: https://www.wowhead.com/spell=41307   ("Gyro-balanced Khorium Destroyer")
    [32756] = {
        name = "Gyro-Balanced Khorium Destroyer",
        profession = "Engineering",
        recipe = "Gyro-balanced Khorium Destroyer",
    },

    ------------------------------------------------------------------
    -- JEWELCRAFTING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=25612   ("Heavy Iron Knuckles")
    [20954] = {
        name = "Heavy Iron Knuckles",
        profession = "Jewelcrafting",
        recipe = "Heavy Iron Knuckles",
    },

    ------------------------------------------------------------
    -- WRATH OF THE LICH KING
    ------------------------------------------------------------
    ------------------------------------------------------------------
    -- BLACKSMITHING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=55174   ("Honed Cobalt Cleaver")
    [41181] = {
        name = "Honed Cobalt Cleaver",
        profession = "Blacksmithing",
        recipe = "Honed Cobalt Cleaver",
    },
    -- source: https://www.wowhead.com/spell=55177   ("Savage Cobalt Slicer")
    [41182] = {
        name = "Savage Cobalt Slicer",
        profession = "Blacksmithing",
        recipe = "Savage Cobalt Slicer",
    },
    -- source: https://www.wowhead.com/spell=55179   ("Saronite Ambusher")
    [41183] = {
        name = "Saronite Ambusher",
        profession = "Blacksmithing",
        recipe = "Saronite Ambusher",
    },
    -- source: https://www.wowhead.com/spell=55181   ("Saronite Shiv")
    [41184] = {
        name = "Saronite Shiv",
        profession = "Blacksmithing",
        recipe = "Saronite Shiv",
    },
    -- source: https://www.wowhead.com/spell=55182   ("Furious Saronite Beatstick")
    [41185] = {
        name = "Furious Saronite Beatstick",
        profession = "Blacksmithing",
        recipe = "Furious Saronite Beatstick",
    },
    -- source: https://www.wowhead.com/spell=55183   ("Corroded Saronite Edge")
    [41186] = {
        name = "Corroded Saronite Edge",
        profession = "Blacksmithing",
        recipe = "Corroded Saronite Edge",
    },
    -- source: https://www.wowhead.com/spell=55184   ("Corroded Saronite Woundbringer")
    [41187] = {
        name = "Corroded Saronite Woundbringer",
        profession = "Blacksmithing",
        recipe = "Corroded Saronite Woundbringer",
    },
    -- source: https://www.wowhead.com/spell=55185   ("Saronite Mindcrusher")
    [41188] = {
        name = "Saronite Mindcrusher",
        profession = "Blacksmithing",
        recipe = "Saronite Mindcrusher",
    },
    -- source: https://www.wowhead.com/spell=55200   ("Sturdy Cobalt Quickblade")
    [41239] = {
        name = "Sturdy Cobalt Quickblade",
        profession = "Blacksmithing",
        recipe = "Sturdy Cobalt Quickblade",
    },
    -- source: https://www.wowhead.com/spell=55201   ("Cobalt Tenderizer")
    [41240] = {
        name = "Cobalt Tenderizer",
        profession = "Blacksmithing",
        recipe = "Cobalt Tenderizer",
    },
    -- source: https://www.wowhead.com/spell=55203   ("Forged Cobalt Claymore")
    [41242] = {
        name = "Forged Cobalt Claymore",
        profession = "Blacksmithing",
        recipe = "Forged Cobalt Claymore",
    },
    -- source: https://www.wowhead.com/spell=55204   ("Notched Cobalt War Axe")
    [41243] = {
        name = "Notched Cobalt War Axe",
        profession = "Blacksmithing",
        recipe = "Notched Cobalt War Axe",
    },
    -- source: https://www.wowhead.com/spell=55206   ("Deadly Saronite Dirk")
    [41245] = {
        name = "Deadly Saronite Dirk",
        profession = "Blacksmithing",
        recipe = "Deadly Saronite Dirk",
    },
    -- source: https://www.wowhead.com/spell=55369   ("Titansteel Destroyer")
    [41257] = {
        name = "Titansteel Destroyer",
        profession = "Blacksmithing",
        recipe = "Titansteel Destroyer",
    },
    -- source: https://www.wowhead.com/spell=55370   ("Titansteel Bonecrusher")
    [41383] = {
        name = "Titansteel Bonecrusher",
        profession = "Blacksmithing",
        recipe = "Titansteel Bonecrusher",
    },
    -- source: https://www.wowhead.com/spell=55371   ("Titansteel Guardian")
    [41384] = {
        name = "Titansteel Guardian",
        profession = "Blacksmithing",
        recipe = "Titansteel Guardian",
    },
    -- source: https://www.wowhead.com/spell=56234   ("Titansteel Shanker")
    [42435] = {
        name = "Titansteel Shanker",
        profession = "Blacksmithing",
        recipe = "Titansteel Shanker",
    },
    -- source: https://www.wowhead.com/spell=56280   ("Cudgel of Saronite Justice")
    [42443] = {
        name = "Cudgel of Saronite Justice",
        profession = "Blacksmithing",
        recipe = "Cudgel of Saronite Justice",
    },
    -- source: https://www.wowhead.com/spell=59442   ("Saronite Spellblade")
    [43871] = {
        name = "Saronite Spellblade",
        profession = "Blacksmithing",
        recipe = "Saronite Spellblade",
    },
    -- source: https://www.wowhead.com/spell=63182   ("Titansteel Spellblade")
    [45085] = {
        name = "Titansteel Spellblade",
        profession = "Blacksmithing",
        recipe = "Titansteel Spellblade",
    },

    ------------------------------------------------------------------
    -- ENGINEERING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=54353   ("Mark "S" Boomstick")
    [39688] = {
        name = "Mark \"S\" Boomstick",
        profession = "Engineering",
        recipe = "Mark \"S\" Boomstick",
    },
    -- source: https://www.wowhead.com/spell=56479   ("Armor Plated Combat Shotgun")
    [41168] = {
        name = "Armor Plated Combat Shotgun",
        profession = "Engineering",
        recipe = "Armor Plated Combat Shotgun",
    },
    -- source: https://www.wowhead.com/spell=60874   ("Nesingwary 4000")
    [44504] = {
        name = "Nesingwary 4000",
        profession = "Engineering",
        recipe = "Nesingwary 4000",
    },

    ------------------------------------------------------------
    -- CATACLYSM
    ------------------------------------------------------------
    ------------------------------------------------------------------
    -- ARCHAEOLOGY
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=90608   ("Zin'rokh, Destroyer of Worlds")
    [64377] = {
        name = "Zin'rokh, Destroyer of Worlds",
        profession = "Archaeology",
        recipe = "Zin'rokh, Destroyer of Worlds",
    },
    -- source: https://www.wowhead.com/spell=90997   ("Nifflevar Bearded Axe")
    [64460] = {
        name = "Nifflevar Bearded Axe",
        profession = "Archaeology",
        recipe = "Nifflevar Bearded Axe",
    },
    -- source: https://www.wowhead.com/spell=91227   ("Staff of Sorcerer-Thane Thaurissan")
    [64489] = {
        name = "Staff of Sorcerer-Thane Thaurissan",
        profession = "Archaeology",
        recipe = "Staff of Sorcerer-Thane Thaurissan",
    },
    -- source: https://www.wowhead.com/spell=92139   ("Staff of Ammunae")
    [64880] = {
        name = "Staff of Ammunae",
        profession = "Archaeology",
        recipe = "Staff of Ammunae",
    },
    -- source: https://www.wowhead.com/spell=92163   ("Scimitar of the Sirocco")
    [64885] = {
        name = "Scimitar of the Sirocco",
        profession = "Archaeology",
        recipe = "Scimitar of the Sirocco",
    },

    ------------------------------------------------------------------
    -- BLACKSMITHING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=76433   ("Decapitator's Razor")
    [55043] = {
        name = "Decapitator's Razor",
        profession = "Blacksmithing",
        recipe = "Decapitator's Razor",
    },
    -- source: https://www.wowhead.com/spell=76434   ("Cold-Forged Shank")
    [55044] = {
        name = "Cold-Forged Shank",
        profession = "Blacksmithing",
        recipe = "Cold-Forged Shank",
    },
    -- source: https://www.wowhead.com/spell=76435   ("Fire-Etched Dagger")
    [55045] = {
        name = "Fire-Etched Dagger",
        profession = "Blacksmithing",
        recipe = "Fire-Etched Dagger",
    },
    -- source: https://www.wowhead.com/spell=76436   ("Lifeforce Hammer")
    [55046] = {
        name = "Lifeforce Hammer",
        profession = "Blacksmithing",
        recipe = "Lifeforce Hammer",
    },
    -- source: https://www.wowhead.com/spell=76437   ("Obsidium Executioner")
    [55052] = {
        name = "Obsidium Executioner",
        profession = "Blacksmithing",
        recipe = "Obsidium Executioner",
    },
    -- source: https://www.wowhead.com/spell=76449   ("Elementium Spellblade")
    [55064] = {
        name = "Elementium Spellblade",
        profession = "Blacksmithing",
        recipe = "Elementium Spellblade",
    },
    -- source: https://www.wowhead.com/spell=76450   ("Elementium Hammer")
    [55065] = {
        name = "Elementium Hammer",
        profession = "Blacksmithing",
        recipe = "Elementium Hammer",
    },
    -- source: https://www.wowhead.com/spell=76451   ("Elementium Poleaxe")
    [55066] = {
        name = "Elementium Poleaxe",
        profession = "Blacksmithing",
        recipe = "Elementium Poleaxe",
    },
    -- source: https://www.wowhead.com/spell=76452   ("Elementium Bonesplitter")
    [55067] = {
        name = "Elementium Bonesplitter",
        profession = "Blacksmithing",
        recipe = "Elementium Bonesplitter",
    },
    -- source: https://www.wowhead.com/spell=76453   ("Elementium Shank")
    [55068] = {
        name = "Elementium Shank",
        profession = "Blacksmithing",
        recipe = "Elementium Shank",
    },
    -- source: https://www.wowhead.com/spell=76474   ("Obsidium Bladespear")
    [55246] = {
        name = "Obsidium Bladespear",
        profession = "Blacksmithing",
        recipe = "Obsidium Bladespear",
    },
    -- source: https://www.wowhead.com/spell=94718   ("Elementium Gutslicer")
    [67602] = {
        name = "Elementium Gutslicer",
        profession = "Blacksmithing",
        recipe = "Elementium Gutslicer",
    },
    -- source: https://www.wowhead.com/spell=94732   ("Forged Elementium Mindcrusher")
    [67605] = {
        name = "Forged Elementium Mindcrusher",
        profession = "Blacksmithing",
        recipe = "Forged Elementium Mindcrusher",
    },
    -- source: https://www.wowhead.com/spell=99652   ("Brainsplinter")
    [70155] = {
        name = "Brainsplinter",
        profession = "Blacksmithing",
        recipe = "Brainsplinter",
    },
    -- source: https://www.wowhead.com/spell=99653   ("Masterwork Elementium Spellblade")
    [70156] = {
        name = "Masterwork Elementium Spellblade",
        profession = "Blacksmithing",
        recipe = "Masterwork Elementium Spellblade",
    },
    -- source: https://www.wowhead.com/spell=99654   ("Lightforged Elementium Hammer")
    [70157] = {
        name = "Lightforged Elementium Hammer",
        profession = "Blacksmithing",
        recipe = "Lightforged Elementium Hammer",
    },
    -- source: https://www.wowhead.com/spell=99655   ("Elementium-Edged Scalper")
    [70158] = {
        name = "Elementium-Edged Scalper",
        profession = "Blacksmithing",
        recipe = "Elementium-Edged Scalper",
    },
    -- source: https://www.wowhead.com/spell=99656   ("Pyrium Spellward")
    [70162] = {
        name = "Pyrium Spellward",
        profession = "Blacksmithing",
        recipe = "Pyrium Spellward",
    },
    -- source: https://www.wowhead.com/spell=99657   ("Unbreakable Guardian")
    [70163] = {
        name = "Unbreakable Guardian",
        profession = "Blacksmithing",
        recipe = "Unbreakable Guardian",
    },
    -- source: https://www.wowhead.com/spell=99658   ("Masterwork Elementium Deathblade")
    [70164] = {
        name = "Masterwork Elementium Deathblade",
        profession = "Blacksmithing",
        recipe = "Masterwork Elementium Deathblade",
    },
    -- source: https://www.wowhead.com/spell=99660   ("Witch-Hunter's Harvester")
    [70165] = {
        name = "Witch-Hunter's Harvester",
        profession = "Blacksmithing",
        recipe = "Witch-Hunter's Harvester",
    },

    ------------------------------------------------------------------
    -- ENGINEERING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=84431   ("Overpowered Chicken Splitter")
    [59364] = {
        name = "Overpowered Chicken Splitter",
        profession = "Engineering",
        recipe = "Overpowered Chicken Splitter",
    },
    -- source: https://www.wowhead.com/spell=84432   ("Kickback 5000")
    [59367] = {
        name = "Kickback 5000",
        profession = "Engineering",
        recipe = "Kickback 5000",
    },
    -- source: https://www.wowhead.com/spell=84420   ("Finely-Tuned Throat Needler")
    [59598] = {
        name = "Finely-Tuned Throat Needler",
        profession = "Engineering",
        recipe = "Finely-Tuned Throat Needler",
    },
    -- source: https://www.wowhead.com/spell=84417   ("Volatile Thunderstick")
    [59599] = {
        name = "Volatile Thunderstick",
        profession = "Engineering",
        recipe = "Volatile Thunderstick",
    },
    -- source: https://www.wowhead.com/spell=100687   ("Extreme-Impact Hole Puncher")
    [71077] = {
        name = "Extreme-Impact Hole Puncher",
        profession = "Engineering",
        recipe = "Extreme-Impact Hole Puncher",
    },

    ------------------------------------------------------------------
    -- JEWELCRAFTING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=73620   ("Carnelian Spikes")
    [52492] = {
        name = "Carnelian Spikes",
        profession = "Jewelcrafting",
        recipe = "Carnelian Spikes",
    },
    -- source: https://www.wowhead.com/spell=73621   ("The Perforator")
    [52493] = {
        name = "The Perforator",
        profession = "Jewelcrafting",
        recipe = "The Perforator",
    },

    ------------------------------------------------------------
    -- MISTS OF PANDARIA
    ------------------------------------------------------------
    ------------------------------------------------------------------
    -- ARCHAEOLOGY
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=113981   ("Spear of Xuen")
    [89685] = {
        name = "Spear of Xuen",
        profession = "Archaeology",
        recipe = "Spear of Xuen",
    },
    -- source: https://www.wowhead.com/spell=139786   ("Mantid Sky Reaver")
    [95391] = {
        name = "Mantid Sky Reaver",
        profession = "Archaeology",
        recipe = "Mantid Sky Reaver",
    },
    -- source: https://www.wowhead.com/spell=139787   ("Sonic Pulse Generator")
    [95392] = {
        name = "Sonic Pulse Generator",
        profession = "Archaeology",
        recipe = "Sonic Pulse Generator",
    },

    ------------------------------------------------------------------
    -- BLACKSMITHING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=122637   ("Forgewire Axe")
    [82963] = {
        name = "Forgewire Axe",
        profession = "Blacksmithing",
        recipe = "Forgewire Axe",
    },
    -- source: https://www.wowhead.com/spell=122638   ("Ghost-Forged Blade")
    [82964] = {
        name = "Ghost-Forged Blade",
        profession = "Blacksmithing",
        recipe = "Ghost-Forged Blade",
    },
    -- source: https://www.wowhead.com/spell=122639   ("Phantasmal Hammer")
    [82965] = {
        name = "Phantasmal Hammer",
        profession = "Blacksmithing",
        recipe = "Phantasmal Hammer",
    },
    -- source: https://www.wowhead.com/spell=122640   ("Spiritblade Decimator")
    [82966] = {
        name = "Spiritblade Decimator",
        profession = "Blacksmithing",
        recipe = "Spiritblade Decimator",
    },
    -- source: https://www.wowhead.com/spell=122641   ("Ghost Shard")
    [82967] = {
        name = "Ghost Shard",
        profession = "Blacksmithing",
        recipe = "Ghost Shard",
    },
    -- source: https://www.wowhead.com/spell=122644   ("Masterwork Forgewire Axe")
    [82970] = {
        name = "Masterwork Forgewire Axe",
        profession = "Blacksmithing",
        recipe = "Masterwork Forgewire Axe",
    },
    -- source: https://www.wowhead.com/spell=122645   ("Masterwork Ghost-Forged Blade")
    [82971] = {
        name = "Masterwork Ghost-Forged Blade",
        profession = "Blacksmithing",
        recipe = "Masterwork Ghost-Forged Blade",
    },
    -- source: https://www.wowhead.com/spell=122646   ("Masterwork Phantasmal Hammer")
    [82972] = {
        name = "Masterwork Phantasmal Hammer",
        profession = "Blacksmithing",
        recipe = "Masterwork Phantasmal Hammer",
    },
    -- source: https://www.wowhead.com/spell=122647   ("Masterwork Spiritblade Decimator")
    [82973] = {
        name = "Masterwork Spiritblade Decimator",
        profession = "Blacksmithing",
        recipe = "Masterwork Spiritblade Decimator",
    },
    -- source: https://www.wowhead.com/spell=122648   ("Masterwork Ghost Shard")
    [82974] = {
        name = "Masterwork Ghost Shard",
        profession = "Blacksmithing",
        recipe = "Masterwork Ghost Shard",
    },
    -- source: https://www.wowhead.com/spell=138876   ("The Planar Edge, Reborn")
    [94575] = {
        name = "The Planar Edge, Reborn",
        profession = "Blacksmithing",
        recipe = "The Planar Edge, Reborn",
    },
    -- source: https://www.wowhead.com/spell=138877   ("Lunar Crescent, Reborn")
    [94576] = {
        name = "Lunar Crescent, Reborn",
        profession = "Blacksmithing",
        recipe = "Lunar Crescent, Reborn",
    },
    -- source: https://www.wowhead.com/spell=138878   ("Black Planar Edge, Reborn")
    [94577] = {
        name = "Black Planar Edge, Reborn",
        profession = "Blacksmithing",
        recipe = "Black Planar Edge, Reborn",
    },
    -- source: https://www.wowhead.com/spell=138879   ("Mooncleaver, Reborn")
    [94578] = {
        name = "Mooncleaver, Reborn",
        profession = "Blacksmithing",
        recipe = "Mooncleaver, Reborn",
    },
    -- source: https://www.wowhead.com/spell=138880   ("Wicked Edge of the Planes, Reborn")
    [94579] = {
        name = "Wicked Edge of the Planes, Reborn",
        profession = "Blacksmithing",
        recipe = "Wicked Edge of the Planes, Reborn",
    },
    -- source: https://www.wowhead.com/spell=138881   ("Bloodmoon, Reborn")
    [94580] = {
        name = "Bloodmoon, Reborn",
        profession = "Blacksmithing",
        recipe = "Bloodmoon, Reborn",
    },
    -- source: https://www.wowhead.com/spell=138882   ("Drakefist Hammer, Reborn")
    [94581] = {
        name = "Drakefist Hammer, Reborn",
        profession = "Blacksmithing",
        recipe = "Drakefist Hammer, Reborn",
    },
    -- source: https://www.wowhead.com/spell=138883   ("Thunder, Reborn")
    [94582] = {
        name = "Thunder, Reborn",
        profession = "Blacksmithing",
        recipe = "Thunder, Reborn",
    },
    -- source: https://www.wowhead.com/spell=138884   ("Deep Thunder, Reborn")
    [94583] = {
        name = "Deep Thunder, Reborn",
        profession = "Blacksmithing",
        recipe = "Deep Thunder, Reborn",
    },
    -- source: https://www.wowhead.com/spell=138885   ("Dragonmaw, Reborn")
    [94584] = {
        name = "Dragonmaw, Reborn",
        profession = "Blacksmithing",
        recipe = "Dragonmaw, Reborn",
    },
    -- source: https://www.wowhead.com/spell=138886   ("Dragonstrike, Reborn")
    [94585] = {
        name = "Dragonstrike, Reborn",
        profession = "Blacksmithing",
        recipe = "Dragonstrike, Reborn",
    },
    -- source: https://www.wowhead.com/spell=138887   ("Stormherald, Reborn")
    [94586] = {
        name = "Stormherald, Reborn",
        profession = "Blacksmithing",
        recipe = "Stormherald, Reborn",
    },
    -- source: https://www.wowhead.com/spell=138888   ("Fireguard, Reborn")
    [94587] = {
        name = "Fireguard, Reborn",
        profession = "Blacksmithing",
        recipe = "Fireguard, Reborn",
    },
    -- source: https://www.wowhead.com/spell=138889   ("Lionheart Blade, Reborn")
    [94588] = {
        name = "Lionheart Blade, Reborn",
        profession = "Blacksmithing",
        recipe = "Lionheart Blade, Reborn",
    },
    -- source: https://www.wowhead.com/spell=138890   ("Blazeguard, Reborn")
    [94589] = {
        name = "Blazeguard, Reborn",
        profession = "Blacksmithing",
        recipe = "Blazeguard, Reborn",
    },
    -- source: https://www.wowhead.com/spell=138891   ("Lionheart Champion, Reborn")
    [94590] = {
        name = "Lionheart Champion, Reborn",
        profession = "Blacksmithing",
        recipe = "Lionheart Champion, Reborn",
    },
    -- source: https://www.wowhead.com/spell=138892   ("Blazefury, Reborn")
    [94591] = {
        name = "Blazefury, Reborn",
        profession = "Blacksmithing",
        recipe = "Blazefury, Reborn",
    },
    -- source: https://www.wowhead.com/spell=138893   ("Lionheart Executioner, Reborn")
    [94592] = {
        name = "Lionheart Executioner, Reborn",
        profession = "Blacksmithing",
        recipe = "Lionheart Executioner, Reborn",
    },

    ------------------------------------------------------------------
    -- ENGINEERING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=127136   ("Big Game Hunter")
    [77527] = {
        name = "Big Game Hunter",
        profession = "Engineering",
        recipe = "Big Game Hunter",
    },
    -- source: https://www.wowhead.com/spell=127137   ("Long-Range Trillium Sniper")
    [77528] = {
        name = "Long-Range Trillium Sniper",
        profession = "Engineering",
        recipe = "Long-Range Trillium Sniper",
    },

    ------------------------------------------------------------------
    -- INSCRIPTION
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=111917   ("Rain Poppy Staff")
    [79339] = {
        name = "Rain Poppy Staff",
        profession = "Inscription",
        recipe = "Rain Poppy Staff",
    },
    -- source: https://www.wowhead.com/spell=111918   ("Inscribed Crane Staff")
    [79340] = {
        name = "Inscribed Crane Staff",
        profession = "Inscription",
        recipe = "Inscribed Crane Staff",
    },
    -- source: https://www.wowhead.com/spell=111919   ("Inscribed Serpent Staff")
    [79341] = {
        name = "Inscribed Serpent Staff",
        profession = "Inscription",
        recipe = "Inscribed Serpent Staff",
    },
    -- source: https://www.wowhead.com/spell=111920   ("Ghost Iron Staff")
    [79342] = {
        name = "Ghost Iron Staff",
        profession = "Inscription",
        recipe = "Ghost Iron Staff",
    },
    -- source: https://www.wowhead.com/spell=111921   ("Inscribed Tiger Staff")
    [79343] = {
        name = "Inscribed Tiger Staff",
        profession = "Inscription",
        recipe = "Inscribed Tiger Staff",
    },

    ------------------------------------------------------------
    -- WARLORDS OF DRAENOR
    ------------------------------------------------------------
    ------------------------------------------------------------------
    -- ARCHAEOLOGY
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=168331   ("Beakbreaker of Terokk")
    [117382] = {
        name = "Beakbreaker of Terokk",
        profession = "Archaeology",
        recipe = "Beakbreaker of Terokk",
    },
    -- source: https://www.wowhead.com/spell=168320   ("Warmaul of the Warmaul Chieftain")
    [117384] = {
        name = "Warmaul of the Warmaul Chieftain",
        profession = "Archaeology",
        recipe = "Warmaul of the Warmaul Chieftain",
    },

    ------------------------------------------------------------------
    -- BLACKSMITHING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=171694   ("Steelforged Greataxe")
    [116453] = {
        name = "Steelforged Greataxe",
        profession = "Blacksmithing",
        recipe = "Steelforged Greataxe",
    },
    -- source: https://www.wowhead.com/spell=171695   ("Steelforged Saber")
    [116454] = {
        name = "Steelforged Saber",
        profession = "Blacksmithing",
        recipe = "Steelforged Saber",
    },
    -- source: https://www.wowhead.com/spell=171696   ("Steelforged Dagger")
    [116644] = {
        name = "Steelforged Dagger",
        profession = "Blacksmithing",
        recipe = "Steelforged Dagger",
    },
    -- source: https://www.wowhead.com/spell=171697   ("Steelforged Hammer")
    [116646] = {
        name = "Steelforged Hammer",
        profession = "Blacksmithing",
        recipe = "Steelforged Hammer",
    },
    -- source: https://www.wowhead.com/spell=178243   ("Steelforged Axe")
    [120259] = {
        name = "Steelforged Axe",
        profession = "Blacksmithing",
        recipe = "Steelforged Axe",
    },

    ------------------------------------------------------------------
    -- ENGINEERING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=162199   ("Shrediron's Shredder")
    [109168] = {
        name = "Shrediron's Shredder",
        profession = "Engineering",
        recipe = "Shrediron's Shredder",
    },

    ------------------------------------------------------------------
    -- INSCRIPTION
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=166359   ("Etched-Blade Warstaff")
    [111526] = {
        name = "Etched-Blade Warstaff",
        profession = "Inscription",
        recipe = "Etched-Blade Warstaff",
    },
    -- source: https://www.wowhead.com/spell=165804   ("Warmaster's Firestick")
    [113131] = {
        name = "Warmaster's Firestick",
        profession = "Inscription",
        recipe = "Warmaster's Firestick",
    },
    -- source: https://www.wowhead.com/spell=166356   ("Crystalfire Spellstaff")
    [113134] = {
        name = "Crystalfire Spellstaff",
        profession = "Inscription",
        recipe = "Crystalfire Spellstaff",
    },

    ------------------------------------------------------------
    -- BATTLE FOR AZEROTH
    ------------------------------------------------------------
    ------------------------------------------------------------------
    -- BLACKSMITHING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=253125   ("Monel-Hardened Cutlass")
    [152827] = {
        name = "Monel-Hardened Cutlass",
        profession = "Blacksmithing",
        recipe = "Monel-Hardened Cutlass",
    },
    -- source: https://www.wowhead.com/spell=253135   ("Monel-Hardened Claymore")
    [152828] = {
        name = "Monel-Hardened Claymore",
        profession = "Blacksmithing",
        recipe = "Monel-Hardened Claymore",
    },
    -- source: https://www.wowhead.com/spell=253132   ("Monel-Hardened Deckpounder")
    [152831] = {
        name = "Monel-Hardened Deckpounder",
        profession = "Blacksmithing",
        recipe = "Monel-Hardened Deckpounder",
    },
    -- source: https://www.wowhead.com/spell=253138   ("Monel-Hardened Shanker")
    [152832] = {
        name = "Monel-Hardened Shanker",
        profession = "Blacksmithing",
        recipe = "Monel-Hardened Shanker",
    },
    -- source: https://www.wowhead.com/spell=253141   ("Monel-Hardened Polearm")
    [152833] = {
        name = "Monel-Hardened Polearm",
        profession = "Blacksmithing",
        recipe = "Monel-Hardened Polearm",
    },
    -- source: https://www.wowhead.com/spell=253125   ("Monel-Hardened Cutlass")
    [161913] = {
        name = "Monel-Hardened Cutlass",
        profession = "Blacksmithing",
        recipe = "Monel-Hardened Cutlass",
    },
    -- source: https://www.wowhead.com/spell=253135   ("Monel-Hardened Claymore")
    [161914] = {
        name = "Monel-Hardened Claymore",
        profession = "Blacksmithing",
        recipe = "Monel-Hardened Claymore",
    },
    -- source: https://www.wowhead.com/spell=253132   ("Monel-Hardened Deckpounder")
    [161915] = {
        name = "Monel-Hardened Deckpounder",
        profession = "Blacksmithing",
        recipe = "Monel-Hardened Deckpounder",
    },
    -- source: https://www.wowhead.com/spell=253138   ("Monel-Hardened Shanker")
    [161916] = {
        name = "Monel-Hardened Shanker",
        profession = "Blacksmithing",
        recipe = "Monel-Hardened Shanker",
    },
    -- source: https://www.wowhead.com/spell=253141   ("Monel-Hardened Polearm")
    [161917] = {
        name = "Monel-Hardened Polearm",
        profession = "Blacksmithing",
        recipe = "Monel-Hardened Polearm",
    },
    -- source: https://www.wowhead.com/spell=253159   ("Stormsteel Spear")
    [161918] = {
        name = "Stormsteel Spear",
        profession = "Blacksmithing",
        recipe = "Stormsteel Spear",
    },
    -- source: https://www.wowhead.com/spell=253156   ("Stormsteel Dagger")
    [161919] = {
        name = "Stormsteel Dagger",
        profession = "Blacksmithing",
        recipe = "Stormsteel Dagger",
    },
    -- source: https://www.wowhead.com/spell=269464   ("Honorable Combatant's Cutlass")
    [161920] = {
        name = "Honorable Combatant's Cutlass",
        profession = "Blacksmithing",
        recipe = "Honorable Combatant's Cutlass",
    },
    -- source: https://www.wowhead.com/spell=269470   ("Honorable Combatant's Deckpounder")
    [161921] = {
        name = "Honorable Combatant's Deckpounder",
        profession = "Blacksmithing",
        recipe = "Honorable Combatant's Deckpounder",
    },
    -- source: https://www.wowhead.com/spell=269476   ("Honorable Combatant's Shanker")
    [161922] = {
        name = "Honorable Combatant's Shanker",
        profession = "Blacksmithing",
        recipe = "Honorable Combatant's Shanker",
    },
    -- source: https://www.wowhead.com/spell=269479   ("Honorable Combatant's Polearm")
    [161923] = {
        name = "Honorable Combatant's Polearm",
        profession = "Blacksmithing",
        recipe = "Honorable Combatant's Polearm",
    },
    -- source: https://www.wowhead.com/spell=253144   ("Honorable Combatant's Spellblade")
    [162653] = {
        name = "Honorable Combatant's Spellblade",
        profession = "Blacksmithing",
        recipe = "Honorable Combatant's Spellblade",
    },
    -- source: https://www.wowhead.com/spell=278131   ("Stormsteel Saber")
    [162665] = {
        name = "Stormsteel Saber",
        profession = "Blacksmithing",
        recipe = "Stormsteel Saber",
    },
    -- source: https://www.wowhead.com/spell=282871   ("Sinister Combatant's Cutlass")
    [164690] = {
        name = "Sinister Combatant's Cutlass",
        profession = "Blacksmithing",
        recipe = "Sinister Combatant's Cutlass",
    },
    -- source: https://www.wowhead.com/spell=282868   ("Sinister Combatant's Deckpounder")
    [164691] = {
        name = "Sinister Combatant's Deckpounder",
        profession = "Blacksmithing",
        recipe = "Sinister Combatant's Deckpounder",
    },
    -- source: https://www.wowhead.com/spell=282862   ("Sinister Combatant's Shanker")
    [164692] = {
        name = "Sinister Combatant's Shanker",
        profession = "Blacksmithing",
        recipe = "Sinister Combatant's Shanker",
    },
    -- source: https://www.wowhead.com/spell=282859   ("Sinister Combatant's Polearm")
    [164693] = {
        name = "Sinister Combatant's Polearm",
        profession = "Blacksmithing",
        recipe = "Sinister Combatant's Polearm",
    },
    -- source: https://www.wowhead.com/spell=282865   ("Sinister Combatant's Spellblade")
    [164718] = {
        name = "Sinister Combatant's Spellblade",
        profession = "Blacksmithing",
        recipe = "Sinister Combatant's Spellblade",
    },
    -- source: https://www.wowhead.com/spell=294766   ("Notorious Combatant's Cutlass")
    [167936] = {
        name = "Notorious Combatant's Cutlass",
        profession = "Blacksmithing",
        recipe = "Notorious Combatant's Cutlass",
    },
    -- source: https://www.wowhead.com/spell=294769   ("Notorious Combatant's Deckpounder")
    [167938] = {
        name = "Notorious Combatant's Deckpounder",
        profession = "Blacksmithing",
        recipe = "Notorious Combatant's Deckpounder",
    },
    -- source: https://www.wowhead.com/spell=294778   ("Notorious Combatant's Polearm")
    [167974] = {
        name = "Notorious Combatant's Polearm",
        profession = "Blacksmithing",
        recipe = "Notorious Combatant's Polearm",
    },
    -- source: https://www.wowhead.com/spell=294775   ("Notorious Combatant's Shanker")
    [167988] = {
        name = "Notorious Combatant's Shanker",
        profession = "Blacksmithing",
        recipe = "Notorious Combatant's Shanker",
    },
    -- source: https://www.wowhead.com/spell=294772   ("Notorious Combatant's Spellblade")
    [167994] = {
        name = "Notorious Combatant's Spellblade",
        profession = "Blacksmithing",
        recipe = "Notorious Combatant's Spellblade",
    },
    -- source: https://www.wowhead.com/spell=304318   ("Uncanny Combatant's Cutlass")
    [170302] = {
        name = "Uncanny Combatant's Cutlass",
        profession = "Blacksmithing",
        recipe = "Uncanny Combatant's Cutlass",
    },
    -- source: https://www.wowhead.com/spell=304322   ("Uncanny Combatant's Spellblade")
    [170309] = {
        name = "Uncanny Combatant's Spellblade",
        profession = "Blacksmithing",
        recipe = "Uncanny Combatant's Spellblade",
    },
    -- source: https://www.wowhead.com/spell=304323   ("Uncanny Combatant's Shanker")
    [170310] = {
        name = "Uncanny Combatant's Shanker",
        profession = "Blacksmithing",
        recipe = "Uncanny Combatant's Shanker",
    },
    -- source: https://www.wowhead.com/spell=304324   ("Uncanny Combatant's Polearm")
    [170311] = {
        name = "Uncanny Combatant's Polearm",
        profession = "Blacksmithing",
        recipe = "Uncanny Combatant's Polearm",
    },
    -- source: https://www.wowhead.com/spell=304320   ("Uncanny Combatant's Deckpounder")
    [170366] = {
        name = "Uncanny Combatant's Deckpounder",
        profession = "Blacksmithing",
        recipe = "Uncanny Combatant's Deckpounder",
    },

    ------------------------------------------------------------------
    -- ENCHANTING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=265106   ("Enchanter's Umbral Wand")
    [152872] = {
        name = "Enchanter's Umbral Wand",
        profession = "Enchanting",
        recipe = "Enchanter's Umbral Wand",
    },
    -- source: https://www.wowhead.com/spell=265106   ("Enchanter's Umbral Wand")
    [161925] = {
        name = "Enchanter's Umbral Wand",
        profession = "Enchanting",
        recipe = "Enchanter's Umbral Wand",
    },
    -- source: https://www.wowhead.com/spell=265110   ("Enchanter's Sorcerous Scepter")
    [161927] = {
        name = "Enchanter's Sorcerous Scepter",
        profession = "Enchanting",
        recipe = "Enchanter's Sorcerous Scepter",
    },
    -- source: https://www.wowhead.com/spell=269715   ("Honorable Combatant's Sorcerous Scepter")
    [161928] = {
        name = "Honorable Combatant's Sorcerous Scepter",
        profession = "Enchanting",
        recipe = "Honorable Combatant's Sorcerous Scepter",
    },
    -- source: https://www.wowhead.com/spell=282851   ("Sinister Combatant's Sorcerous Scepter")
    [164694] = {
        name = "Sinister Combatant's Sorcerous Scepter",
        profession = "Enchanting",
        recipe = "Sinister Combatant's Sorcerous Scepter",
    },
    -- source: https://www.wowhead.com/spell=294781   ("Notorious Combatant's Sorcerous Scepter")
    [167992] = {
        name = "Notorious Combatant's Sorcerous Scepter",
        profession = "Enchanting",
        recipe = "Notorious Combatant's Sorcerous Scepter",
    },
    -- source: https://www.wowhead.com/spell=305936   ("Uncanny Combatant's Sorcerous Scepter")
    [170307] = {
        name = "Uncanny Combatant's Sorcerous Scepter",
        profession = "Enchanting",
        recipe = "Uncanny Combatant's Sorcerous Scepter",
    },

    ------------------------------------------------------------------
    -- ENGINEERING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=253122   ("Magnetic Discombobulator")
    [152830] = {
        name = "Magnetic Discombobulator",
        profession = "Engineering",
        recipe = "Magnetic Discombobulator",
    },
    -- source: https://www.wowhead.com/spell=255457   ("Finely-Tuned Stormsteel Destroyer")
    [161930] = {
        name = "Finely-Tuned Stormsteel Destroyer",
        profession = "Engineering",
        recipe = "Finely-Tuned Stormsteel Destroyer",
    },
    -- source: https://www.wowhead.com/spell=269727   ("Honorable Combatant's Stormsteel Destroyer")
    [161931] = {
        name = "Honorable Combatant's Stormsteel Destroyer",
        profession = "Engineering",
        recipe = "Honorable Combatant's Stormsteel Destroyer",
    },
    -- source: https://www.wowhead.com/spell=282809   ("Sinister Combatant's Stormsteel Destroyer")
    [164696] = {
        name = "Sinister Combatant's Stormsteel Destroyer",
        profession = "Engineering",
        recipe = "Sinister Combatant's Stormsteel Destroyer",
    },
    -- source: https://www.wowhead.com/spell=294787   ("Notorious Combatant's Stormsteel Destroyer")
    [167996] = {
        name = "Notorious Combatant's Stormsteel Destroyer",
        profession = "Engineering",
        recipe = "Notorious Combatant's Stormsteel Destroyer",
    },
    -- source: https://www.wowhead.com/spell=305858   ("Uncanny Combatant's Stormsteel Destroyer")
    [170315] = {
        name = "Uncanny Combatant's Stormsteel Destroyer",
        profession = "Engineering",
        recipe = "Uncanny Combatant's Stormsteel Destroyer",
    },

    ------------------------------------------------------------------
    -- JEWELCRAFTING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=256254   ("Rubellite Staff of Intuition")
    [153637] = {
        name = "Rubellite Staff of Intuition",
        profession = "Jewelcrafting",
        recipe = "Rubellite Staff of Intuition",
    },
    -- source: https://www.wowhead.com/spell=256253   ("Viridium Staff of Alacrity")
    [153638] = {
        name = "Viridium Staff of Alacrity",
        profession = "Jewelcrafting",
        recipe = "Viridium Staff of Alacrity",
    },

    ------------------------------------------------------------------
    -- LEATHERWORKING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=256777   ("Shimmerscale Striker")
    [154160] = {
        name = "Shimmerscale Striker",
        profession = "Leatherworking",
        recipe = "Shimmerscale Striker",
    },
    -- source: https://www.wowhead.com/spell=256778   ("Coarse Leather Cestus")
    [154161] = {
        name = "Coarse Leather Cestus",
        profession = "Leatherworking",
        recipe = "Coarse Leather Cestus",
    },
    -- source: https://www.wowhead.com/spell=256787   ("Recurve Bow of the Strands")
    [161968] = {
        name = "Recurve Bow of the Strands",
        profession = "Leatherworking",
        recipe = "Recurve Bow of the Strands",
    },
    -- source: https://www.wowhead.com/spell=256777   ("Shimmerscale Striker")
    [161969] = {
        name = "Shimmerscale Striker",
        profession = "Leatherworking",
        recipe = "Shimmerscale Striker",
    },
    -- source: https://www.wowhead.com/spell=256778   ("Coarse Leather Cestus")
    [161970] = {
        name = "Coarse Leather Cestus",
        profession = "Leatherworking",
        recipe = "Coarse Leather Cestus",
    },
    -- source: https://www.wowhead.com/spell=256779   ("Mistscale Knuckles")
    [161971] = {
        name = "Mistscale Knuckles",
        profession = "Leatherworking",
        recipe = "Mistscale Knuckles",
    },
    -- source: https://www.wowhead.com/spell=256782   ("Hardened Tempest Knuckles")
    [161972] = {
        name = "Hardened Tempest Knuckles",
        profession = "Leatherworking",
        recipe = "Hardened Tempest Knuckles",
    },
    -- source: https://www.wowhead.com/spell=269552   ("Honorable Combatant's Bow")
    [161975] = {
        name = "Honorable Combatant's Bow",
        profession = "Leatherworking",
        recipe = "Honorable Combatant's Bow",
    },
    -- source: https://www.wowhead.com/spell=282277   ("Sinister Combatant's Bow")
    [164711] = {
        name = "Sinister Combatant's Bow",
        profession = "Leatherworking",
        recipe = "Sinister Combatant's Bow",
    },
    -- source: https://www.wowhead.com/spell=294826   ("Notorious Combatant's Bow")
    [167934] = {
        name = "Notorious Combatant's Bow",
        profession = "Leatherworking",
        recipe = "Notorious Combatant's Bow",
    },
    -- source: https://www.wowhead.com/spell=304442   ("Uncanny Combatant's Bow")
    [170363] = {
        name = "Uncanny Combatant's Bow",
        profession = "Leatherworking",
        recipe = "Uncanny Combatant's Bow",
    },

    ------------------------------------------------------------
    -- SHADOWLANDS
    ------------------------------------------------------------
    ------------------------------------------------------------------
    -- BLACKSMITHING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=307675   ("Ceremonious Rapier")
    [171382] = {
        name = "Ceremonious Rapier",
        profession = "Blacksmithing",
        recipe = "Ceremonious Rapier",
    },
    -- source: https://www.wowhead.com/spell=307678   ("Ceremonious Claymore")
    [171383] = {
        name = "Ceremonious Claymore",
        profession = "Blacksmithing",
        recipe = "Ceremonious Claymore",
    },
    -- source: https://www.wowhead.com/spell=307677   ("Ceremonious Smasher")
    [171384] = {
        name = "Ceremonious Smasher",
        profession = "Blacksmithing",
        recipe = "Ceremonious Smasher",
    },
    -- source: https://www.wowhead.com/spell=307680   ("Ceremonious Shanker")
    [171385] = {
        name = "Ceremonious Shanker",
        profession = "Blacksmithing",
        recipe = "Ceremonious Shanker",
    },
    -- source: https://www.wowhead.com/spell=307681   ("Ceremonious Spear")
    [171386] = {
        name = "Ceremonious Spear",
        profession = "Blacksmithing",
        recipe = "Ceremonious Spear",
    },
    -- source: https://www.wowhead.com/spell=307674   ("Ceremonious Mace")
    [171387] = {
        name = "Ceremonious Mace",
        profession = "Blacksmithing",
        recipe = "Ceremonious Mace",
    },
    -- source: https://www.wowhead.com/spell=307672   ("Ceremonious Axe")
    [171388] = {
        name = "Ceremonious Axe",
        profession = "Blacksmithing",
        recipe = "Ceremonious Axe",
    },
    -- source: https://www.wowhead.com/spell=307676   ("Ceremonious Reaper")
    [171389] = {
        name = "Ceremonious Reaper",
        profession = "Blacksmithing",
        recipe = "Ceremonious Reaper",
    },
    -- source: https://www.wowhead.com/spell=307679   ("Ceremonious Blade")
    [171390] = {
        name = "Ceremonious Blade",
        profession = "Blacksmithing",
        recipe = "Ceremonious Blade",
    },
    -- source: https://www.wowhead.com/spell=307682   ("Ceremonious Warglaive")
    [171392] = {
        name = "Ceremonious Warglaive",
        profession = "Blacksmithing",
        recipe = "Ceremonious Warglaive",
    },

    ------------------------------------------------------------------
    -- ENCHANTING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=265105   ("Enchanted Twilight Wand")
    [172462] = {
        name = "Enchanted Twilight Wand",
        profession = "Enchanting",
        recipe = "Enchanted Twilight Wand",
    },

    ------------------------------------------------------------------
    -- ENGINEERING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=310536   ("Precision Lifeforce Inverter")
    [172923] = {
        name = "Precision Lifeforce Inverter",
        profession = "Engineering",
        recipe = "Precision Lifeforce Inverter",
    },

    ------------------------------------------------------------------
    -- INSCRIPTION
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=311689   ("Soul Keeper's Spire")
    [173054] = {
        name = "Soul Keeper's Spire",
        profession = "Inscription",
        recipe = "Soul Keeper's Spire",
    },
    -- source: https://www.wowhead.com/spell=311688   ("Soul Keeper's Column")
    [173428] = {
        name = "Soul Keeper's Column",
        profession = "Inscription",
        recipe = "Soul Keeper's Column",
    },

    ------------------------------------------------------------------
    -- LEATHERWORKING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=309191   ("Desolate Leather Cestus")
    [172348] = {
        name = "Desolate Leather Cestus",
        profession = "Leatherworking",
        recipe = "Desolate Leather Cestus",
    },
    -- source: https://www.wowhead.com/spell=309190   ("Bone Bound Knuckles")
    [172349] = {
        name = "Bone Bound Knuckles",
        profession = "Leatherworking",
        recipe = "Bone Bound Knuckles",
    },
    -- source: https://www.wowhead.com/spell=309192   ("Composite Bow")
    [172350] = {
        name = "Composite Bow",
        profession = "Leatherworking",
        recipe = "Composite Bow",
    },
    -- source: https://www.wowhead.com/spell=309193   ("Composite Crossbow")
    [172351] = {
        name = "Composite Crossbow",
        profession = "Leatherworking",
        recipe = "Composite Crossbow",
    },

    ------------------------------------------------------------
    -- DRAGONFLIGHT
    ------------------------------------------------------------
    ------------------------------------------------------------------
    -- BLACKSMITHING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=367597   ("Draconium Stiletto")
    [190482] = {
        name = "Draconium Stiletto",
        profession = "Blacksmithing",
        recipe = "Draconium Stiletto",
    },
    -- source: https://www.wowhead.com/spell=367596   ("Draconium Dirk")
    [190483] = {
        name = "Draconium Dirk",
        profession = "Blacksmithing",
        recipe = "Draconium Dirk",
    },
    -- source: https://www.wowhead.com/spell=367599   ("Draconium Sword")
    [190484] = {
        name = "Draconium Sword",
        profession = "Blacksmithing",
        recipe = "Draconium Sword",
    },
    -- source: https://www.wowhead.com/spell=367595   ("Draconium Knuckles")
    [190485] = {
        name = "Draconium Knuckles",
        profession = "Blacksmithing",
        recipe = "Draconium Knuckles",
    },
    -- source: https://www.wowhead.com/spell=367598   ("Draconium Great Mace")
    [190486] = {
        name = "Draconium Great Mace",
        profession = "Blacksmithing",
        recipe = "Draconium Great Mace",
    },
    -- source: https://www.wowhead.com/spell=367600   ("Draconium Axe")
    [190487] = {
        name = "Draconium Axe",
        profession = "Blacksmithing",
        recipe = "Draconium Axe",
    },
    -- source: https://www.wowhead.com/spell=365730   ("Primal Molten Shortblade")
    [190505] = {
        name = "Primal Molten Shortblade",
        profession = "Blacksmithing",
        recipe = "Primal Molten Shortblade",
    },
    -- source: https://www.wowhead.com/spell=365731   ("Primal Molten Spellblade")
    [190506] = {
        name = "Primal Molten Spellblade",
        profession = "Blacksmithing",
        recipe = "Primal Molten Spellblade",
    },
    -- source: https://www.wowhead.com/spell=367585   ("Primal Molten Longsword")
    [190507] = {
        name = "Primal Molten Longsword",
        profession = "Blacksmithing",
        recipe = "Primal Molten Longsword",
    },
    -- source: https://www.wowhead.com/spell=365729   ("Primal Molten Warglaive")
    [190508] = {
        name = "Primal Molten Warglaive",
        profession = "Blacksmithing",
        recipe = "Primal Molten Warglaive",
    },
    -- source: https://www.wowhead.com/spell=367586   ("Primal Molten Mace")
    [190509] = {
        name = "Primal Molten Mace",
        profession = "Blacksmithing",
        recipe = "Primal Molten Mace",
    },
    -- source: https://www.wowhead.com/spell=365734   ("Primal Molten Greataxe")
    [190510] = {
        name = "Primal Molten Greataxe",
        profession = "Blacksmithing",
        recipe = "Primal Molten Greataxe",
    },
    -- source: https://www.wowhead.com/spell=367587   ("Obsidian Seared Hexsword")
    [190511] = {
        name = "Obsidian Seared Hexsword",
        profession = "Blacksmithing",
        recipe = "Obsidian Seared Hexsword",
    },
    -- source: https://www.wowhead.com/spell=367594   ("Obsidian Seared Runeaxe")
    [190512] = {
        name = "Obsidian Seared Runeaxe",
        profession = "Blacksmithing",
        recipe = "Obsidian Seared Runeaxe",
    },
    -- source: https://www.wowhead.com/spell=367589   ("Obsidian Seared Facesmasher")
    [190513] = {
        name = "Obsidian Seared Facesmasher",
        profession = "Blacksmithing",
        recipe = "Obsidian Seared Facesmasher",
    },
    -- source: https://www.wowhead.com/spell=367590   ("Obsidian Seared Claymore")
    [190514] = {
        name = "Obsidian Seared Claymore",
        profession = "Blacksmithing",
        recipe = "Obsidian Seared Claymore",
    },
    -- source: https://www.wowhead.com/spell=367588   ("Obsidian Seared Halberd")
    [190515] = {
        name = "Obsidian Seared Halberd",
        profession = "Blacksmithing",
        recipe = "Obsidian Seared Halberd",
    },
    -- source: https://www.wowhead.com/spell=367591   ("Obsidian Seared Crusher")
    [190516] = {
        name = "Obsidian Seared Crusher",
        profession = "Blacksmithing",
        recipe = "Obsidian Seared Crusher",
    },
    -- source: https://www.wowhead.com/spell=367592   ("Obsidian Seared Invoker")
    [190517] = {
        name = "Obsidian Seared Invoker",
        profession = "Blacksmithing",
        recipe = "Obsidian Seared Invoker",
    },
    -- source: https://www.wowhead.com/spell=367593   ("Obsidian Seared Slicer")
    [190518] = {
        name = "Obsidian Seared Slicer",
        profession = "Blacksmithing",
        recipe = "Obsidian Seared Slicer",
    },
    -- source: https://www.wowhead.com/spell=393416   ("Draconium Great Axe")
    [201324] = {
        name = "Draconium Great Axe",
        profession = "Blacksmithing",
        recipe = "Draconium Great Axe",
    },
    -- source: https://www.wowhead.com/spell=402134   ("Bloodherald")
    [203790] = {
        name = "Bloodherald",
        profession = "Blacksmithing",
        recipe = "Bloodherald",
    },
    -- source: https://www.wowhead.com/spell=402135   ("Bloodlord's Reaver")
    [203793] = {
        name = "Bloodlord's Reaver",
        profession = "Blacksmithing",
        recipe = "Bloodlord's Reaver",
    },
    -- source: https://www.wowhead.com/spell=402128   ("Gurubashi Hexxer")
    [203797] = {
        name = "Gurubashi Hexxer",
        profession = "Blacksmithing",
        recipe = "Gurubashi Hexxer",
    },
    -- source: https://www.wowhead.com/spell=402138   ("Gurubashi Slicer")
    [203801] = {
        name = "Gurubashi Slicer",
        profession = "Blacksmithing",
        recipe = "Gurubashi Slicer",
    },
    -- source: https://www.wowhead.com/spell=402124   ("Venomfang")
    [203802] = {
        name = "Venomfang",
        profession = "Blacksmithing",
        recipe = "Venomfang",
    },
    -- source: https://www.wowhead.com/spell=402129   ("Sceptre of Hexing")
    [203804] = {
        name = "Sceptre of Hexing",
        profession = "Blacksmithing",
        recipe = "Sceptre of Hexing",
    },
    -- source: https://www.wowhead.com/spell=402130   ("Gurubashi Crusher")
    [203806] = {
        name = "Gurubashi Crusher",
        profession = "Blacksmithing",
        recipe = "Gurubashi Crusher",
    },
    -- source: https://www.wowhead.com/spell=402126   ("Gurubashi Grinder")
    [203809] = {
        name = "Gurubashi Grinder",
        profession = "Blacksmithing",
        recipe = "Gurubashi Grinder",
    },
    -- source: https://www.wowhead.com/spell=402123   ("Gurubashi Carver")
    [203810] = {
        name = "Gurubashi Carver",
        profession = "Blacksmithing",
        recipe = "Gurubashi Carver",
    },
    -- source: https://www.wowhead.com/spell=402131   ("Pitchfork of Mojo Madness")
    [203811] = {
        name = "Pitchfork of Mojo Madness",
        profession = "Blacksmithing",
        recipe = "Pitchfork of Mojo Madness",
    },
    -- source: https://www.wowhead.com/spell=402125   ("Gurubashi Poker")
    [203812] = {
        name = "Gurubashi Poker",
        profession = "Blacksmithing",
        recipe = "Gurubashi Poker",
    },
    -- source: https://www.wowhead.com/spell=402136   ("Fiery Vengeance")
    [203813] = {
        name = "Fiery Vengeance",
        profession = "Blacksmithing",
        recipe = "Fiery Vengeance",
    },
    -- source: https://www.wowhead.com/spell=402133   ("Venomreaver")
    [203860] = {
        name = "Venomreaver",
        profession = "Blacksmithing",
        recipe = "Venomreaver",
    },
    -- source: https://www.wowhead.com/spell=408283   ("Shadowed Razing Annihilator")
    [205046] = {
        name = "Shadowed Razing Annihilator",
        profession = "Blacksmithing",
        recipe = "Shadowed Razing Annihilator",
    },
    -- source: https://www.wowhead.com/spell=413511   ("Warsword of Caer Darrow")
    [206477] = {
        name = "Warsword of Caer Darrow",
        profession = "Blacksmithing",
        recipe = "Warsword of Caer Darrow",
    },
    -- source: https://www.wowhead.com/spell=413512   ("Darrowdirk")
    [206478] = {
        name = "Darrowdirk",
        profession = "Blacksmithing",
        recipe = "Darrowdirk",
    },
    -- source: https://www.wowhead.com/spell=413514   ("Mirah's Lullaby")
    [206480] = {
        name = "Mirah's Lullaby",
        profession = "Blacksmithing",
        recipe = "Mirah's Lullaby",
    },
    -- source: https://www.wowhead.com/spell=413518   ("Strength of Menethil")
    [206484] = {
        name = "Strength of Menethil",
        profession = "Blacksmithing",
        recipe = "Strength of Menethil",
    },
    -- source: https://www.wowhead.com/spell=413520   ("Midnight's Graze")
    [206486] = {
        name = "Midnight's Graze",
        profession = "Blacksmithing",
        recipe = "Midnight's Graze",
    },
    -- source: https://www.wowhead.com/spell=413521   ("Weaver's Fang")
    [206487] = {
        name = "Weaver's Fang",
        profession = "Blacksmithing",
        recipe = "Weaver's Fang",
    },
    -- source: https://www.wowhead.com/spell=413522   ("Widow's Weep")
    [206488] = {
        name = "Widow's Weep",
        profession = "Blacksmithing",
        recipe = "Widow's Weep",
    },
    -- source: https://www.wowhead.com/spell=413523   ("Shade's Blade")
    [206489] = {
        name = "Shade's Blade",
        profession = "Blacksmithing",
        recipe = "Shade's Blade",
    },
    -- source: https://www.wowhead.com/spell=413524   ("Edict of the Redeemed Crusader")
    [206490] = {
        name = "Edict of the Redeemed Crusader",
        profession = "Blacksmithing",
        recipe = "Edict of the Redeemed Crusader",
    },
    -- source: https://www.wowhead.com/spell=413739   ("Blade of Unholy Might")
    [206492] = {
        name = "Blade of Unholy Might",
        profession = "Blacksmithing",
        recipe = "Blade of Unholy Might",
    },
    -- source: https://www.wowhead.com/spell=413740   ("Axe of Sundered Bone")
    [206493] = {
        name = "Axe of Sundered Bone",
        profession = "Blacksmithing",
        recipe = "Axe of Sundered Bone",
    },
    -- source: https://www.wowhead.com/spell=413744   ("The Final Dream")
    [206497] = {
        name = "The Final Dream",
        profession = "Blacksmithing",
        recipe = "The Final Dream",
    },
    -- source: https://www.wowhead.com/spell=413746   ("Blade of the Fallen Seraph")
    [206499] = {
        name = "Blade of the Fallen Seraph",
        profession = "Blacksmithing",
        recipe = "Blade of the Fallen Seraph",
    },
    -- source: https://www.wowhead.com/spell=413750   ("Harbinger of Death")
    [206503] = {
        name = "Harbinger of Death",
        profession = "Blacksmithing",
        recipe = "Harbinger of Death",
    },
    -- source: https://www.wowhead.com/spell=413753   ("Dawn of Demise")
    [206506] = {
        name = "Dawn of Demise",
        profession = "Blacksmithing",
        recipe = "Dawn of Demise",
    },
    -- source: https://www.wowhead.com/spell=416682   ("Intrepid Shortblade")
    [207555] = {
        name = "Intrepid Shortblade",
        profession = "Blacksmithing",
        recipe = "Intrepid Shortblade",
    },
    -- source: https://www.wowhead.com/spell=416683   ("Valiant Shortblade")
    [207556] = {
        name = "Valiant Shortblade",
        profession = "Blacksmithing",
        recipe = "Valiant Shortblade",
    },
    -- source: https://www.wowhead.com/spell=416688   ("Ichor Slicer")
    [207561] = {
        name = "Ichor Slicer",
        profession = "Blacksmithing",
        recipe = "Ichor Slicer",
    },

    ------------------------------------------------------------------
    -- ENCHANTING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=391196   ("Scepter of Spectacle: Fire")
    [200472] = {
        name = "Scepter of Spectacle: Fire",
        profession = "Enchanting",
        recipe = "Scepter of Spectacle: Fire",
    },
    -- source: https://www.wowhead.com/spell=391197   ("Scepter of Spectacle: Frost")
    [200535] = {
        name = "Scepter of Spectacle: Frost",
        profession = "Enchanting",
        recipe = "Scepter of Spectacle: Frost",
    },
    -- source: https://www.wowhead.com/spell=391176   ("Enchanted Writhebark Wand")
    [200641] = {
        name = "Enchanted Writhebark Wand",
        profession = "Enchanting",
        recipe = "Enchanted Writhebark Wand",
    },
    -- source: https://www.wowhead.com/spell=391179   ("Torch of Primal Awakening")
    [200642] = {
        name = "Torch of Primal Awakening",
        profession = "Enchanting",
        recipe = "Torch of Primal Awakening",
    },
    -- source: https://www.wowhead.com/spell=391808   ("Scepter of Spectacle: Order")
    [201158] = {
        name = "Scepter of Spectacle: Order",
        profession = "Enchanting",
        recipe = "Scepter of Spectacle: Order",
    },
    -- source: https://www.wowhead.com/spell=391807   ("Scepter of Spectacle: Earth")
    [201160] = {
        name = "Scepter of Spectacle: Earth",
        profession = "Enchanting",
        recipe = "Scepter of Spectacle: Earth",
    },
    -- source: https://www.wowhead.com/spell=391806   ("Scepter of Spectacle: Air")
    [201161] = {
        name = "Scepter of Spectacle: Air",
        profession = "Enchanting",
        recipe = "Scepter of Spectacle: Air",
    },
    -- source: https://www.wowhead.com/spell=402139   ("Mindslave's Reach")
    [203808] = {
        name = "Mindslave's Reach",
        profession = "Enchanting",
        recipe = "Mindslave's Reach",
    },
    -- source: https://www.wowhead.com/spell=405803   ("Spore Keeper's Baton")
    [204401] = {
        name = "Spore Keeper's Baton",
        profession = "Enchanting",
        recipe = "Spore Keeper's Baton",
    },
    -- source: https://www.wowhead.com/spell=416685   ("Smoked Fireshooter")
    [207558] = {
        name = "Smoked Fireshooter",
        profession = "Enchanting",
        recipe = "Smoked Fireshooter",
    },
    -- source: https://www.wowhead.com/spell=416686   ("Stormwatcher")
    [207559] = {
        name = "Stormwatcher",
        profession = "Enchanting",
        recipe = "Stormwatcher",
    },

    ------------------------------------------------------------------
    -- ENGINEERING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=382387   ("P.E.W. x2")
    [198334] = {
        name = "P.E.W. x2",
        profession = "Engineering",
        recipe = "P.E.W. x2",
    },
    -- source: https://www.wowhead.com/spell=382321   ("Ol' Smoky")
    [198335] = {
        name = "Ol' Smoky",
        profession = "Engineering",
        recipe = "Ol' Smoky",
    },
    -- source: https://www.wowhead.com/spell=413759   ("Replaced Servo Arm")
    [206512] = {
        name = "Replaced Servo Arm",
        profession = "Engineering",
        recipe = "Replaced Servo Arm",
    },
    -- source: https://www.wowhead.com/spell=416689   ("Skullstone Bludgeon")
    [207562] = {
        name = "Skullstone Bludgeon",
        profession = "Engineering",
        recipe = "Skullstone Bludgeon",
    },
    -- source: https://www.wowhead.com/spell=416691   ("Refurbished Purifier")
    [207564] = {
        name = "Refurbished Purifier",
        profession = "Engineering",
        recipe = "Refurbished Purifier",
    },

    ------------------------------------------------------------------
    -- INSCRIPTION
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=383544   ("Pioneer's Writhebark Stave")
    [194892] = {
        name = "Pioneer's Writhebark Stave",
        profession = "Inscription",
        recipe = "Pioneer's Writhebark Stave",
    },
    -- source: https://www.wowhead.com/spell=383543   ("Overseer's Writhebark Stave")
    [194893] = {
        name = "Overseer's Writhebark Stave",
        profession = "Inscription",
        recipe = "Overseer's Writhebark Stave",
    },
    -- source: https://www.wowhead.com/spell=383545   ("Weathered Explorer's Stave")
    [194894] = {
        name = "Weathered Explorer's Stave",
        profession = "Inscription",
        recipe = "Weathered Explorer's Stave",
    },
    -- source: https://www.wowhead.com/spell=383542   ("Kinetic Pillar of the Isles")
    [194897] = {
        name = "Kinetic Pillar of the Isles",
        profession = "Inscription",
        recipe = "Kinetic Pillar of the Isles",
    },
    -- source: https://www.wowhead.com/spell=383541   ("Illuminating Pillar of the Isles")
    [194898] = {
        name = "Illuminating Pillar of the Isles",
        profession = "Inscription",
        recipe = "Illuminating Pillar of the Isles",
    },
    -- source: https://www.wowhead.com/spell=402141   ("Judgment of the Gurubashi")
    [203795] = {
        name = "Judgment of the Gurubashi",
        profession = "Inscription",
        recipe = "Judgment of the Gurubashi",
    },
    -- source: https://www.wowhead.com/spell=402142   ("Gurubashi Ceremonial Staff")
    [203815] = {
        name = "Gurubashi Ceremonial Staff",
        profession = "Inscription",
        recipe = "Gurubashi Ceremonial Staff",
    },
    -- source: https://www.wowhead.com/spell=413515   ("Shifting Sliver")
    [206481] = {
        name = "Shifting Sliver",
        profession = "Inscription",
        recipe = "Shifting Sliver",
    },
    -- source: https://www.wowhead.com/spell=413519   ("Soulscryer")
    [206485] = {
        name = "Soulscryer",
        profession = "Inscription",
        recipe = "Soulscryer",
    },
    -- source: https://www.wowhead.com/spell=416690   ("Wanderer's Guide")
    [207563] = {
        name = "Wanderer's Guide",
        profession = "Inscription",
        recipe = "Wanderer's Guide",
    },

    ------------------------------------------------------------------
    -- LEATHERWORKING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=375102   ("Bonewrought Crossbow")
    [193383] = {
        name = "Bonewrought Crossbow",
        profession = "Leatherworking",
        recipe = "Bonewrought Crossbow",
    },
    -- source: https://www.wowhead.com/spell=375125   ("Bow of the Dragon Hunters")
    [193449] = {
        name = "Bow of the Dragon Hunters",
        profession = "Leatherworking",
        recipe = "Bow of the Dragon Hunters",
    },
    -- source: https://www.wowhead.com/spell=402150   ("Gurubashi's Grasp")
    [203805] = {
        name = "Gurubashi's Grasp",
        profession = "Leatherworking",
        recipe = "Gurubashi's Grasp",
    },
    -- source: https://www.wowhead.com/spell=413738   ("Nerubian Persuader")
    [206491] = {
        name = "Nerubian Persuader",
        profession = "Leatherworking",
        recipe = "Nerubian Persuader",
    },

    ------------------------------------------------------------
    -- THE WAR WITHIN
    ------------------------------------------------------------
    ------------------------------------------------------------------
    -- BLACKSMITHING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=450229   ("Everforged Stabber")
    [222438] = {
        name = "Everforged Stabber",
        profession = "Blacksmithing",
        recipe = "Everforged Stabber",
    },
    -- source: https://www.wowhead.com/spell=450230   ("Everforged Dagger")
    [222439] = {
        name = "Everforged Dagger",
        profession = "Blacksmithing",
        recipe = "Everforged Dagger",
    },
    -- source: https://www.wowhead.com/spell=450231   ("Everforged Longsword")
    [222440] = {
        name = "Everforged Longsword",
        profession = "Blacksmithing",
        recipe = "Everforged Longsword",
    },
    -- source: https://www.wowhead.com/spell=450232   ("Everforged Warglaive")
    [222441] = {
        name = "Everforged Warglaive",
        profession = "Blacksmithing",
        recipe = "Everforged Warglaive",
    },
    -- source: https://www.wowhead.com/spell=450233   ("Everforged Mace")
    [222442] = {
        name = "Everforged Mace",
        profession = "Blacksmithing",
        recipe = "Everforged Mace",
    },
    -- source: https://www.wowhead.com/spell=450234   ("Everforged Greataxe")
    [222443] = {
        name = "Everforged Greataxe",
        profession = "Blacksmithing",
        recipe = "Everforged Greataxe",
    },
    -- source: https://www.wowhead.com/spell=450235   ("Charged Hexsword")
    [222444] = {
        name = "Charged Hexsword",
        profession = "Blacksmithing",
        recipe = "Charged Hexsword",
    },
    -- source: https://www.wowhead.com/spell=450236   ("Charged Runeaxe")
    [222445] = {
        name = "Charged Runeaxe",
        profession = "Blacksmithing",
        recipe = "Charged Runeaxe",
    },
    -- source: https://www.wowhead.com/spell=450237   ("Charged Facesmasher")
    [222446] = {
        name = "Charged Facesmasher",
        profession = "Blacksmithing",
        recipe = "Charged Facesmasher",
    },
    -- source: https://www.wowhead.com/spell=450238   ("Charged Claymore")
    [222447] = {
        name = "Charged Claymore",
        profession = "Blacksmithing",
        recipe = "Charged Claymore",
    },
    -- source: https://www.wowhead.com/spell=450239   ("Charged Halberd")
    [222448] = {
        name = "Charged Halberd",
        profession = "Blacksmithing",
        recipe = "Charged Halberd",
    },
    -- source: https://www.wowhead.com/spell=450240   ("Charged Crusher")
    [222449] = {
        name = "Charged Crusher",
        profession = "Blacksmithing",
        recipe = "Charged Crusher",
    },
    -- source: https://www.wowhead.com/spell=450241   ("Charged Invoker")
    [222450] = {
        name = "Charged Invoker",
        profession = "Blacksmithing",
        recipe = "Charged Invoker",
    },
    -- source: https://www.wowhead.com/spell=450242   ("Charged Slicer")
    [222451] = {
        name = "Charged Slicer",
        profession = "Blacksmithing",
        recipe = "Charged Slicer",
    },
    -- source: https://www.wowhead.com/spell=450250   ("Siphoning Stiletto")
    [222463] = {
        name = "Siphoning Stiletto",
        profession = "Blacksmithing",
        recipe = "Siphoning Stiletto",
    },
    -- source: https://www.wowhead.com/spell=450251   ("Ironclaw Stiletto")
    [222464] = {
        name = "Ironclaw Stiletto",
        profession = "Blacksmithing",
        recipe = "Ironclaw Stiletto",
    },
    -- source: https://www.wowhead.com/spell=450252   ("Ironclaw Dirk")
    [222465] = {
        name = "Ironclaw Dirk",
        profession = "Blacksmithing",
        recipe = "Ironclaw Dirk",
    },
    -- source: https://www.wowhead.com/spell=450253   ("Ironclaw Sword")
    [222466] = {
        name = "Ironclaw Sword",
        profession = "Blacksmithing",
        recipe = "Ironclaw Sword",
    },
    -- source: https://www.wowhead.com/spell=450254   ("Ironclaw Knuckles")
    [222467] = {
        name = "Ironclaw Knuckles",
        profession = "Blacksmithing",
        recipe = "Ironclaw Knuckles",
    },
    -- source: https://www.wowhead.com/spell=450255   ("Ironclaw Great Mace")
    [222468] = {
        name = "Ironclaw Great Mace",
        profession = "Blacksmithing",
        recipe = "Ironclaw Great Mace",
    },
    -- source: https://www.wowhead.com/spell=450256   ("Ironclaw Axe")
    [222469] = {
        name = "Ironclaw Axe",
        profession = "Blacksmithing",
        recipe = "Ironclaw Axe",
    },
    -- source: https://www.wowhead.com/spell=450257   ("Ironclaw Great Axe")
    [222470] = {
        name = "Ironclaw Great Axe",
        profession = "Blacksmithing",
        recipe = "Ironclaw Great Axe",
    },
    -- source: https://www.wowhead.com/spell=454997   ("Algari Competitor's Pickaxe")
    [225366] = {
        name = "Algari Competitor's Pickaxe",
        profession = "Blacksmithing",
        recipe = "Algari Competitor's Pickaxe",
    },
    -- source: https://www.wowhead.com/spell=454998   ("Algari Competitor's Dagger")
    [225367] = {
        name = "Algari Competitor's Dagger",
        profession = "Blacksmithing",
        recipe = "Algari Competitor's Dagger",
    },
    -- source: https://www.wowhead.com/spell=454999   ("Algari Competitor's Scepter")
    [225371] = {
        name = "Algari Competitor's Scepter",
        profession = "Blacksmithing",
        recipe = "Algari Competitor's Scepter",
    },
    -- source: https://www.wowhead.com/spell=455001   ("Algari Competitor's Axe")
    [225374] = {
        name = "Algari Competitor's Axe",
        profession = "Blacksmithing",
        recipe = "Algari Competitor's Axe",
    },
    -- source: https://www.wowhead.com/spell=455002   ("Algari Competitor's Skewer")
    [225375] = {
        name = "Algari Competitor's Skewer",
        profession = "Blacksmithing",
        recipe = "Algari Competitor's Skewer",
    },
    -- source: https://www.wowhead.com/spell=455003   ("Algari Competitor's Greatsword")
    [225376] = {
        name = "Algari Competitor's Greatsword",
        profession = "Blacksmithing",
        recipe = "Algari Competitor's Greatsword",
    },
    -- source: https://www.wowhead.com/spell=455004   ("Algari Competitor's Sword")
    [225377] = {
        name = "Algari Competitor's Sword",
        profession = "Blacksmithing",
        recipe = "Algari Competitor's Sword",
    },

    ------------------------------------------------------------------
    -- ENCHANTING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=445324   ("Enchanted Spearwood Wand")
    [224404] = {
        name = "Enchanted Spearwood Wand",
        profession = "Enchanting",
        recipe = "Enchanted Spearwood Wand",
    },
    -- source: https://www.wowhead.com/spell=445355   ("Scepter of Radiant Magics")
    [224405] = {
        name = "Scepter of Radiant Magics",
        profession = "Enchanting",
        recipe = "Scepter of Radiant Magics",
    },

    ------------------------------------------------------------------
    -- ENGINEERING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=447352   ("P.0.W. x2")
    [221969] = {
        name = "P.0.W. x2",
        profession = "Engineering",
        recipe = "P.0.W. x2",
    },
    -- source: https://www.wowhead.com/spell=455005   ("Algari Competitor's Rifle")
    [225370] = {
        name = "Algari Competitor's Rifle",
        profession = "Engineering",
        recipe = "Algari Competitor's Rifle",
    },
    -- source: https://www.wowhead.com/spell=447379   ("4UT0-41M3R")
    [225646] = {
        name = "4UT0-41M3R",
        profession = "Engineering",
        recipe = "4UT0-41M3R",
    },

    ------------------------------------------------------------------
    -- INSCRIPTION
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=444198   ("Vagabond's Careful Crutch")
    [222567] = {
        name = "Vagabond's Careful Crutch",
        profession = "Inscription",
        recipe = "Vagabond's Careful Crutch",
    },
    -- source: https://www.wowhead.com/spell=444199   ("Vagabond's Bounding Baton")
    [222568] = {
        name = "Vagabond's Bounding Baton",
        profession = "Inscription",
        recipe = "Vagabond's Bounding Baton",
    },
    -- source: https://www.wowhead.com/spell=444200   ("Inquisitor's Crutch")
    [222569] = {
        name = "Inquisitor's Crutch",
        profession = "Inscription",
        recipe = "Inquisitor's Crutch",
    },
    -- source: https://www.wowhead.com/spell=444201   ("Inquisitor's Baton")
    [222570] = {
        name = "Inquisitor's Baton",
        profession = "Inscription",
        recipe = "Inquisitor's Baton",
    },
    -- source: https://www.wowhead.com/spell=455007   ("Algari Competitor's Pillar")
    [225368] = {
        name = "Algari Competitor's Pillar",
        profession = "Inscription",
        recipe = "Algari Competitor's Pillar",
    },
    -- source: https://www.wowhead.com/spell=455008   ("Algari Competitor's Staff")
    [225369] = {
        name = "Algari Competitor's Staff",
        profession = "Inscription",
        recipe = "Algari Competitor's Staff",
    },

    ------------------------------------------------------------
    -- MIDNIGHT
    ------------------------------------------------------------
    ------------------------------------------------------------------
    -- BLACKSMITHING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=1229659   ("Farstrider's Mercy")
    [237837] = {
        name = "Farstrider's Mercy",
        profession = "Blacksmithing",
        recipe = "Farstrider's Mercy",
    },
    -- source: https://www.wowhead.com/spell=1229650   ("Magister's Ritual Knife")
    [237838] = {
        name = "Magister's Ritual Knife",
        profession = "Blacksmithing",
        recipe = "Magister's Ritual Knife",
    },
    -- source: https://www.wowhead.com/spell=1229658   ("Spellbreaker's Blade")
    [237839] = {
        name = "Spellbreaker's Blade",
        profession = "Blacksmithing",
        recipe = "Spellbreaker's Blade",
    },
    -- source: https://www.wowhead.com/spell=1229657   ("Spellbreaker's Warglaive")
    [237840] = {
        name = "Spellbreaker's Warglaive",
        profession = "Blacksmithing",
        recipe = "Spellbreaker's Warglaive",
    },
    -- source: https://www.wowhead.com/spell=1229656   ("Spellbreaker's Ultimatum")
    [237841] = {
        name = "Spellbreaker's Ultimatum",
        profession = "Blacksmithing",
        recipe = "Spellbreaker's Ultimatum",
    },
    -- source: https://www.wowhead.com/spell=1229655   ("Bloomforged Greataxe")
    [237842] = {
        name = "Bloomforged Greataxe",
        profession = "Blacksmithing",
        recipe = "Bloomforged Greataxe",
    },
    -- source: https://www.wowhead.com/spell=1229651   ("Magister's Mana Sword")
    [237843] = {
        name = "Magister's Mana Sword",
        profession = "Blacksmithing",
        recipe = "Magister's Mana Sword",
    },
    -- source: https://www.wowhead.com/spell=1229654   ("Magister's Cleaver")
    [237844] = {
        name = "Magister's Cleaver",
        profession = "Blacksmithing",
        recipe = "Magister's Cleaver",
    },
    -- source: https://www.wowhead.com/spell=1229649   ("Bloomforged Claw")
    [237845] = {
        name = "Bloomforged Claw",
        profession = "Blacksmithing",
        recipe = "Bloomforged Claw",
    },
    -- source: https://www.wowhead.com/spell=1229648   ("Blood Knight's Warblade")
    [237846] = {
        name = "Blood Knight's Warblade",
        profession = "Blacksmithing",
        recipe = "Blood Knight's Warblade",
    },
    -- source: https://www.wowhead.com/spell=1229653   ("Blood Knight's Impetus")
    [237847] = {
        name = "Blood Knight's Impetus",
        profession = "Blacksmithing",
        recipe = "Blood Knight's Impetus",
    },
    -- source: https://www.wowhead.com/spell=1229652   ("Blood Knight's Mercy")
    [237848] = {
        name = "Blood Knight's Mercy",
        profession = "Blacksmithing",
        recipe = "Blood Knight's Mercy",
    },
    -- source: https://www.wowhead.com/spell=1229647   ("Magister's Valediction")
    [237849] = {
        name = "Magister's Valediction",
        profession = "Blacksmithing",
        recipe = "Magister's Valediction",
    },
    -- source: https://www.wowhead.com/spell=1229646   ("Farstrider's Chopper")
    [237850] = {
        name = "Farstrider's Chopper",
        profession = "Blacksmithing",
        recipe = "Farstrider's Chopper",
    },
    -- source: https://www.wowhead.com/spell=1229637   ("Thalassian Competitor's Pickaxe")
    [237909] = {
        name = "Thalassian Competitor's Pickaxe",
        profession = "Blacksmithing",
        recipe = "Thalassian Competitor's Pickaxe",
    },
    -- source: https://www.wowhead.com/spell=1229636   ("Thalassian Competitor's Knife")
    [237910] = {
        name = "Thalassian Competitor's Knife",
        profession = "Blacksmithing",
        recipe = "Thalassian Competitor's Knife",
    },
    -- source: https://www.wowhead.com/spell=1229635   ("Thalassian Competitor's Maxim")
    [237911] = {
        name = "Thalassian Competitor's Maxim",
        profession = "Blacksmithing",
        recipe = "Thalassian Competitor's Maxim",
    },
    -- source: https://www.wowhead.com/spell=1229633   ("Thalassian Competitor's Splitter")
    [237913] = {
        name = "Thalassian Competitor's Splitter",
        profession = "Blacksmithing",
        recipe = "Thalassian Competitor's Splitter",
    },
    -- source: https://www.wowhead.com/spell=1229632   ("Thalassian Competitor's Skewer")
    [237914] = {
        name = "Thalassian Competitor's Skewer",
        profession = "Blacksmithing",
        recipe = "Thalassian Competitor's Skewer",
    },
    -- source: https://www.wowhead.com/spell=1229631   ("Thalassian Competitor's Greatsword")
    [237915] = {
        name = "Thalassian Competitor's Greatsword",
        profession = "Blacksmithing",
        recipe = "Thalassian Competitor's Greatsword",
    },
    -- source: https://www.wowhead.com/spell=1229630   ("Thalassian Competitor's Sword")
    [237916] = {
        name = "Thalassian Competitor's Sword",
        profession = "Blacksmithing",
        recipe = "Thalassian Competitor's Sword",
    },
    -- source: https://www.wowhead.com/spell=1229620   ("Dawnforged Ritual Knife")
    [237926] = {
        name = "Dawnforged Ritual Knife",
        profession = "Blacksmithing",
        recipe = "Dawnforged Ritual Knife",
    },
    -- source: https://www.wowhead.com/spell=1229619   ("Dawnforged Edge")
    [237927] = {
        name = "Dawnforged Edge",
        profession = "Blacksmithing",
        recipe = "Dawnforged Edge",
    },
    -- source: https://www.wowhead.com/spell=1229618   ("Dawnforged Long Blade")
    [237928] = {
        name = "Dawnforged Long Blade",
        profession = "Blacksmithing",
        recipe = "Dawnforged Long Blade",
    },
    -- source: https://www.wowhead.com/spell=1229617   ("Primalforged Knuckles")
    [237929] = {
        name = "Primalforged Knuckles",
        profession = "Blacksmithing",
        recipe = "Primalforged Knuckles",
    },
    -- source: https://www.wowhead.com/spell=1229616   ("Dawnforged War Mace")
    [237930] = {
        name = "Dawnforged War Mace",
        profession = "Blacksmithing",
        recipe = "Dawnforged War Mace",
    },
    -- source: https://www.wowhead.com/spell=1229615   ("Dawnforged Splitter")
    [237931] = {
        name = "Dawnforged Splitter",
        profession = "Blacksmithing",
        recipe = "Dawnforged Splitter",
    },
    -- source: https://www.wowhead.com/spell=1229614   ("Primalforged Heavy Axe")
    [237932] = {
        name = "Primalforged Heavy Axe",
        profession = "Blacksmithing",
        recipe = "Primalforged Heavy Axe",
    },
    -- source: https://www.wowhead.com/spell=1230768   ("Murder Row Fishhook")
    [244679] = {
        name = "Murder Row Fishhook",
        profession = "Blacksmithing",
        recipe = "Murder Row Fishhook",
    },

    ------------------------------------------------------------------
    -- ENCHANTING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=1236489   ("Thalassian Spellweaver's Wand")
    [244178] = {
        name = "Thalassian Spellweaver's Wand",
        profession = "Enchanting",
        recipe = "Thalassian Spellweaver's Wand",
    },
    -- source: https://www.wowhead.com/spell=1236490   ("Magister's Grand Focus")
    [244179] = {
        name = "Magister's Grand Focus",
        profession = "Enchanting",
        recipe = "Magister's Grand Focus",
    },

    ------------------------------------------------------------------
    -- ENGINEERING
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=1282455   ("Evercore Dome Dinger")
    [268475] = {
        name = "Evercore Dome Dinger",
        profession = "Engineering",
        recipe = "Evercore Dome Dinger",
    },
    -- source: https://www.wowhead.com/spell=1282456   ("P.O.W. x3")
    [268477] = {
        name = "P.O.W. x3",
        profession = "Engineering",
        recipe = "P.O.W. x3",
    },
    -- source: https://www.wowhead.com/spell=1282457   ("Thalassian Competitor's Rifle")
    [268479] = {
        name = "Thalassian Competitor's Rifle",
        profession = "Engineering",
        recipe = "Thalassian Competitor's Rifle",
    },

    ------------------------------------------------------------------
    -- INSCRIPTION
    ------------------------------------------------------------------
    -- source: https://www.wowhead.com/spell=1230060   ("Aln'hara Cane")
    [245770] = {
        name = "Aln'hara Cane",
        profession = "Inscription",
        recipe = "Aln'hara Cane",
    },
    -- source: https://www.wowhead.com/spell=1230059   ("Aln'hara Pikestaff")
    [245771] = {
        name = "Aln'hara Pikestaff",
        profession = "Inscription",
        recipe = "Aln'hara Pikestaff",
    },
    -- source: https://www.wowhead.com/spell=1230056   ("Floratender's Crutch")
    [245772] = {
        name = "Floratender's Crutch",
        profession = "Inscription",
        recipe = "Floratender's Crutch",
    },
    -- source: https://www.wowhead.com/spell=1230055   ("Faunatender's Baton")
    [245773] = {
        name = "Faunatender's Baton",
        profession = "Inscription",
        recipe = "Faunatender's Baton",
    },
    -- source: https://www.wowhead.com/spell=1230066   ("Thalassian Competitor's Pillar")
    [245868] = {
        name = "Thalassian Competitor's Pillar",
        profession = "Inscription",
        recipe = "Thalassian Competitor's Pillar",
    },
    -- source: https://www.wowhead.com/spell=1260760   ("Thalassian Competitor's Bow")
    [245869] = {
        name = "Thalassian Competitor's Bow",
        profession = "Inscription",
        recipe = "Thalassian Competitor's Bow",
    },
    -- source: https://www.wowhead.com/spell=1230058   ("Faunatender's Trust")
    [265336] = {
        name = "Faunatender's Trust",
        profession = "Inscription",
        recipe = "Faunatender's Trust",
    },
    -- source: https://www.wowhead.com/spell=1230062   ("Aln'hara Sprigshot")
    [265337] = {
        name = "Aln'hara Sprigshot",
        profession = "Inscription",
        recipe = "Aln'hara Sprigshot",
    },
    -- source: https://www.wowhead.com/spell=1230065   ("Thalassian Competitor's Staff")
    [268365] = {
        name = "Thalassian Competitor's Staff",
        profession = "Inscription",
        recipe = "Thalassian Competitor's Staff",
    },

    ------------------------------------------------------------
    -- BATTLE FOR AZEROTH (gap2 pass)
    ------------------------------------------------------------
    [152834] = { name = "Stormsteel Spear", profession = "Kul Tiran Blacksmithing" },
    [152835] = { name = "Stormsteel Dagger", profession = "Kul Tiran Blacksmithing" },
    [152837] = { name = "Precision Attitude Adjuster", profession = "Kul Tiran Engineering" },
    [152874] = { name = "Enchanter's Sorcerous Scepter", profession = "Kul Tiran Enchanting" },
    [153506] = { name = "Finely-Tuned Stormsteel Destroyer", profession = "Kul Tiran Engineering" },
    [153639] = { name = "Laribole Staff of Alacrity", profession = "Kul Tiran Jewelcrafting" },
    [153640] = { name = "Scarlet Diamond Staff of Intuition", profession = "Kul Tiran Jewelcrafting" },
    [154159] = { name = "Recurve Bow of the Strands", profession = "Kul Tiran Leatherworking" },
    [154162] = { name = "Mistscale Knuckles", profession = "Kul Tiran Leatherworking" },
    [154163] = { name = "Hardened Tempest Knuckles", profession = "Kul Tiran Leatherworking" },
    [159853] = { name = "Honorable Combatant's Cutlass", profession = "Kul Tiran Blacksmithing" },
    [159855] = { name = "Honorable Combatant's Deckpounder", profession = "Kul Tiran Blacksmithing" },
    [159857] = { name = "Honorable Combatant's Shanker", profession = "Kul Tiran Blacksmithing" },
    [159858] = { name = "Honorable Combatant's Polearm", profession = "Kul Tiran Blacksmithing" },
    [159896] = { name = "Honorable Combatant's Bow", profession = "Kul Tiran Leatherworking" },
    [159922] = { name = "Honorable Combatant's Sorcerous Scepter", profession = "Kul Tiran Enchanting" },
    [159936] = { name = "Honorable Combatant's Stormsteel Destroyer", profession = "Kul Tiran Engineering" },
    [159937] = { name = "Honorable Combatant's Discombobulator", profession = "Kul Tiran Engineering" },
    [159939] = { name = "Honorable Combatant's Intuitive Staff", profession = "Kul Tiran Jewelcrafting" },
    [162652] = { name = "Honorable Combatant's Spellblade", profession = "Kul Tiran Blacksmithing" },
    [162655] = { name = "Stormsteel Saber", profession = "Kul Tiran Blacksmithing" },
    [164649] = { name = "Sinister Combatant's Cutlass", profession = "Kul Tiran Blacksmithing" },
    [164650] = { name = "Sinister Combatant's Deckpounder", profession = "Kul Tiran Blacksmithing" },
    [164651] = { name = "Sinister Combatant's Shanker", profession = "Kul Tiran Blacksmithing" },
    [164652] = { name = "Sinister Combatant's Polearm", profession = "Kul Tiran Blacksmithing" },
    [164670] = { name = "Sinister Combatant's Bow", profession = "Kul Tiran Leatherworking" },
    [164677] = { name = "Sinister Combatant's Sorcerous Scepter", profession = "Kul Tiran Enchanting" },
    [164679] = { name = "Sinister Combatant's Stormsteel Destroyer", profession = "Kul Tiran Engineering" },
    [164680] = { name = "Sinister Combatant's Discombobulator", profession = "Kul Tiran Engineering" },
    [164681] = { name = "Sinister Combatant's Intuitive Staff", profession = "Kul Tiran Jewelcrafting" },
    [164719] = { name = "Sinister Combatant's Spellblade", profession = "Kul Tiran Blacksmithing" },
    [167935] = { name = "Notorious Combatant's Bow", profession = "Kul Tiran Leatherworking" },
    [167937] = { name = "Notorious Combatant's Cutlass", profession = "Kul Tiran Blacksmithing" },
    [167939] = { name = "Notorious Combatant's Deckpounder", profession = "Kul Tiran Blacksmithing" },
    [167940] = { name = "Notorious Combatant's Discombobulator", profession = "Kul Tiran Engineering" },
    [167943] = { name = "Notorious Combatant's Intuitive Staff", profession = "Kul Tiran Jewelcrafting" },
    [167975] = { name = "Notorious Combatant's Polearm", profession = "Kul Tiran Blacksmithing" },
    [167989] = { name = "Notorious Combatant's Shanker", profession = "Kul Tiran Blacksmithing" },
    [167993] = { name = "Notorious Combatant's Sorcerous Scepter", profession = "Kul Tiran Enchanting" },
    [167995] = { name = "Notorious Combatant's Spellblade", profession = "Kul Tiran Blacksmithing" },
    [167997] = { name = "Notorious Combatant's Stormsteel Destroyer", profession = "Kul Tiran Engineering" },
    [170290] = { name = "Uncanny Combatant's Polearm", profession = "Kul Tiran Blacksmithing" },
    [170291] = { name = "Uncanny Combatant's Shanker", profession = "Kul Tiran Blacksmithing" },
    [170292] = { name = "Uncanny Combatant's Spellblade", profession = "Kul Tiran Blacksmithing" },
    [170293] = { name = "Uncanny Combatant's Deckpounder", profession = "Kul Tiran Blacksmithing" },
    [170294] = { name = "Uncanny Combatant's Cutlass", profession = "Kul Tiran Blacksmithing" },
    [170312] = { name = "Uncanny Combatant's Sorcerous Scepter", profession = "Kul Tiran Enchanting" },
    [170313] = { name = "Uncanny Combatant's Discombobulator", profession = "Kul Tiran Engineering" },
    [170314] = { name = "Uncanny Combatant's Stormsteel Destroyer", profession = "Kul Tiran Engineering" },
    [170318] = { name = "Uncanny Combatant's Intuitive Staff", profession = "Kul Tiran Jewelcrafting" },
    [170362] = { name = "Uncanny Combatant's Bow", profession = "Kul Tiran Leatherworking" },
}
