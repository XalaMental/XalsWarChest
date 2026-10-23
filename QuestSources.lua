-- QuestSources.lua
-- Xal's Warchest - which quest grants which weapon appearance.
--
-- C_TransmogCollection.GetSourceInfo hands back an itemID and sourceType = 2
-- ("quest") but records nothing about WHICH quest. This table is the missing
-- half, for WEAPONS specifically, across every expansion in the game's
-- history.
--
-- Merged from the per-expansion research files in
-- D:\WoW_Addons\Dev\warchest_research\ - see those files for the full ID
-- policy. Every entry rests on the item's own sourcemore data (t=5) plus
-- that quest's own Wowhead page confirming the title and start NPC.
--
-- ONE FLAGGED ODDITY: a handful of Legion entries point at old, low-numbered
-- questIDs unrelated to Legion content (e.g. item 133693 -> questID 835,
-- a Classic-era quest) - this is Wowhead's own sourcemore data for what
-- look like artifact-relic appearance items, and it passed the same
-- verification as everything else (quest page title + Start NPC matched).
-- Unusual but not invented - kept in, worth a skeptical glance before relying
-- on it in-game.
--
-- COVERAGE: every expansion is a genuinely complete scan now. Dragonflight
-- originally hit Wowhead's 1,000-item single-query display cap (missing
-- 1,348 of 2,348 real items) - fixed by splitting the query across each
-- weapon subtype's own URL slug (one-handed-swords, daggers, polearms,
-- etc.), each returning its own uncapped result; the union matched the
-- site's own reported item count exactly. That re-scan found one quest the
-- capped listing had never seen at all (Leader of the Shadepaw Pack,
-- questID 65873). The War Within's listing came in under the cap on its
-- own (519 of ~519 real items), so it was already complete.

local addonName, addonTable = ...
addonTable.QuestSources = {

    ------------------------------------------------------------
    -- CLASSIC
    ------------------------------------------------------------
    -- source: https://www.wowhead.com/quest=46   ("Bounty on Murlocs")
    [1158] = {
        name = "Solid Metal Club",
        questID = 46,
        quest = "Bounty on Murlocs",
        start = "Starts from Bounty Board",
    },
    -- source: https://www.wowhead.com/quest=208   ("Big Game Hunter")
    [17687] = {
        name = "Master Hunter's Rifle",
        questID = 208,
        quest = "Big Game Hunter",
        start = "Starts from Hemet Nesingwary Jr.",
    },
    -- source: https://www.wowhead.com/quest=835   ("Securing the Lines")
    [4931] = {
        name = "Hickory Shortbow",
        questID = 835,
        quest = "Securing the Lines",
        start = "Starts from Rezlak",
    },
    -- source: https://www.wowhead.com/quest=2561   ("Druid of the Claw")
    [18957] = {
        name = "Brushwood Blade",
        questID = 2561,
        quest = "Druid of the Claw",
        start = "Starts from Oben Rageclaw",
    },
    -- source: https://www.wowhead.com/quest=6544   ("Torek's Assault")
    [16889] = {
        name = "Polished Walking Staff",
        questID = 6544,
        quest = "Torek's Assault",
        start = "Starts from Torek",
    },
    -- source: https://www.wowhead.com/quest=8558   ("Sickle of Unyielding Strength")
    [21392] = {
        name = "Sickle of Unyielding Strength",
        questID = 8558,
        quest = "Sickle of Unyielding Strength",
        start = "Starts from Warden Haro",
    },
    -- source: https://www.wowhead.com/quest=8705   ("Gavel of Infinite Wisdom")
    [21410] = {
        name = "Gavel of Infinite Wisdom",
        questID = 8705,
        quest = "Gavel of Infinite Wisdom",
        start = "Starts from Warden Haro",
    },
    -- source: https://www.wowhead.com/quest=8706   ("Hammer of the Gathering Storm")
    [21398] = {
        name = "Hammer of the Gathering Storm",
        questID = 8706,
        quest = "Hammer of the Gathering Storm",
        start = "Starts from Warden Haro",
    },
    -- source: https://www.wowhead.com/quest=8707   ("Blade of Vaulted Secrets")
    [21413] = {
        name = "Blade of Vaulted Secrets",
        questID = 8707,
        quest = "Blade of Vaulted Secrets",
        start = "Starts from Warden Haro",
    },
    -- source: https://www.wowhead.com/quest=8708   ("Mace of Unending Life")
    [21407] = {
        name = "Mace of Unending Life",
        questID = 8708,
        quest = "Mace of Unending Life",
        start = "Starts from Warden Haro",
    },
    -- source: https://www.wowhead.com/quest=8709   ("Dagger of Veiled Shadows")
    [21404] = {
        name = "Dagger of Veiled Shadows",
        questID = 8709,
        quest = "Dagger of Veiled Shadows",
        start = "Starts from Warden Haro",
    },
    -- source: https://www.wowhead.com/quest=8711   ("Blade of Eternal Justice")
    [21395] = {
        name = "Blade of Eternal Justice",
        questID = 8711,
        quest = "Blade of Eternal Justice",
        start = "Starts from Warden Haro",
    },
    -- source: https://www.wowhead.com/quest=8712   ("Scythe of the Unseen Path")
    [21401] = {
        name = "Scythe of the Unseen Path",
        questID = 8712,
        quest = "Scythe of the Unseen Path",
        start = "Starts from Warden Haro",
    },
    -- source: https://www.wowhead.com/quest=8789   ("Imperial Qiraji Armaments")
    [21242] = {
        name = "Blessed Qiraji War Axe",
        questID = 8789,
        quest = "Imperial Qiraji Armaments",
        start = "Starts from Arygos",
    },
    [21244] = {
        name = "Blessed Qiraji Pugio",
        questID = 8789,
        quest = "Imperial Qiraji Armaments",
        start = "Starts from Arygos",
    },
    [21272] = {
        name = "Blessed Qiraji Musket",
        questID = 8789,
        quest = "Imperial Qiraji Armaments",
        start = "Starts from Arygos",
    },
    -- source: https://www.wowhead.com/quest=8790   ("Imperial Qiraji Regalia")
    [21268] = {
        name = "Blessed Qiraji War Hammer",
        questID = 8790,
        quest = "Imperial Qiraji Regalia",
        start = "Starts from Merithra of the Dream",
    },
    [21273] = {
        name = "Blessed Qiraji Acolyte Staff",
        questID = 8790,
        quest = "Imperial Qiraji Regalia",
        start = "Starts from Merithra of the Dream",
    },
    -- source: https://www.wowhead.com/quest=9257   ("Atiesh, Greatstaff of the Guardian")
    [22631] = {
        name = "Atiesh, Greatstaff of the Guardian",
        questID = 9257,
        quest = "Atiesh, Greatstaff of the Guardian",
        start = "Starts from Anachronos",
    },
    -- source: https://www.wowhead.com/quest=9269   ("Atiesh, Greatstaff of the Guardian")
    [22632] = {
        name = "Atiesh, Greatstaff of the Guardian",
        questID = 9269,
        quest = "Atiesh, Greatstaff of the Guardian",
        start = "Starts from Anachronos",
    },
    -- source: https://www.wowhead.com/quest=9270   ("Atiesh, Greatstaff of the Guardian")
    [22589] = {
        name = "Atiesh, Greatstaff of the Guardian",
        questID = 9270,
        quest = "Atiesh, Greatstaff of the Guardian",
        start = "Starts from Anachronos",
    },
    -- source: https://www.wowhead.com/quest=9271   ("Atiesh, Greatstaff of the Guardian")
    [22630] = {
        name = "Atiesh, Greatstaff of the Guardian",
        questID = 9271,
        quest = "Atiesh, Greatstaff of the Guardian",
        start = "Starts from Anachronos",
    },
    -- source: https://www.wowhead.com/quest=28726   ("Webwood Corruption")
    [5586] = {
        name = "Thistlewood Blade",
        questID = 28726,
        quest = "Webwood Corruption",
        start = "Starts from Tarindrella",
    },
    -- source: https://www.wowhead.com/quest=80018   ("Fashionable Flying")
    [2778] = {
        name = "Cheap Blunderbuss",
        questID = 80018,
        quest = "Fashionable Flying",
        start = "Starts from Lord Andestrasz",
    },

    ------------------------------------------------------------
    -- THE BURNING CRUSADE
    ------------------------------------------------------------
    -- source: https://www.wowhead.com/quest=8334   ("Aggression")
    [20836] = {
        name = "Sunstrider Dagger",
        questID = 8334,
        quest = "Aggression",
        start = "Starts from Lanthan Perilon",
    },
    [20837] = {
        name = "Sunstrider Axe",
        questID = 8334,
        quest = "Aggression",
        start = "Starts from Lanthan Perilon",
    },
    [20839] = {
        name = "Sunstrider Staff",
        questID = 8334,
        quest = "Aggression",
        start = "Starts from Lanthan Perilon",
    },
    [20840] = {
        name = "Sunstrider Mace",
        questID = 8334,
        quest = "Aggression",
        start = "Starts from Lanthan Perilon",
    },
    -- source: https://www.wowhead.com/quest=8335   ("Felendren the Banished")
    [20838] = {
        name = "Sunstrider Bow",
        questID = 8335,
        quest = "Felendren the Banished",
        start = "Starts from Lanthan Perilon",
    },
    -- source: https://www.wowhead.com/quest=8477   ("The Spearcrafter's Hammer")
    [22958] = {
        name = "Farstrider Sword",
        questID = 8477,
        quest = "The Spearcrafter's Hammer",
        start = "Starts from Arathel Sunforge",
    },
    [22959] = {
        name = "Smooth Metal Staff",
        questID = 8477,
        quest = "The Spearcrafter's Hammer",
        start = "Starts from Arathel Sunforge",
    },
    -- source: https://www.wowhead.com/quest=8479   ("Zul'Marosh")
    [22971] = {
        name = "Hoodoo Wand",
        questID = 8479,
        quest = "Zul'Marosh",
        start = "Starts from Ven'jashi",
    },
    -- source: https://www.wowhead.com/quest=8480   ("Lost Armaments")
    [22956] = {
        name = "Rusty Mace",
        questID = 8480,
        quest = "Lost Armaments",
        start = "Starts from Velendris Whitemorn",
    },
    [22957] = {
        name = "Rusty Sin'dorei Sword",
        questID = 8480,
        quest = "Lost Armaments",
        start = "Starts from Velendris Whitemorn",
    },
    -- source: https://www.wowhead.com/quest=8483   ("The Dwarven Spy")
    [23372] = {
        name = "Bloodhawk Claymore",
        questID = 8483,
        quest = "The Dwarven Spy",
        start = "Starts from Aeldon Sunbrand",
    },
    [23373] = {
        name = "Long Knife",
        questID = 8483,
        quest = "The Dwarven Spy",
        start = "Starts from Aeldon Sunbrand",
    },
    -- source: https://www.wowhead.com/quest=8486   ("Arcane Instability")
    [23370] = {
        name = "Ley-Keeper's Blade",
        questID = 8486,
        quest = "Arcane Instability",
        start = "Starts from Ley-Keeper Velania",
    },
    [23371] = {
        name = "Velania's Walking Stick",
        questID = 8486,
        quest = "Arcane Instability",
        start = "Starts from Ley-Keeper Velania",
    },
    -- source: https://www.wowhead.com/quest=8885   ("The Ring of Mmmrrrggglll")
    [23398] = {
        name = "Worn Ranger's Bow",
        questID = 8885,
        quest = "The Ring of Mmmrrrggglll",
        start = "Starts from Hathvelion Sungaze",
    },
    -- source: https://www.wowhead.com/quest=9139   ("Goldenmist Village")
    [28152] = {
        name = "Quel'Thalas Recurve",
        questID = 9139,
        quest = "Goldenmist Village",
        start = "Starts from Arcanist Vandril",
    },
    -- source: https://www.wowhead.com/quest=9140   ("Windrunner Village")
    [23402] = {
        name = "Arcanist's Dagger",
        questID = 9140,
        quest = "Windrunner Village",
        start = "Starts from Arcanist Vandril",
    },
    -- source: https://www.wowhead.com/quest=9159   ("Curbing the Plague")
    [23415] = {
        name = "Survival Knife",
        questID = 9159,
        quest = "Curbing the Plague",
        start = "Starts from Farstrider Sedina",
    },
    -- source: https://www.wowhead.com/quest=9167   ("The Traitor's Destruction")
    [22980] = {
        name = "Staff of the Sun",
        questID = 9167,
        quest = "The Traitor's Destruction",
        start = "Starts from Magister Kaendris",
    },
    [22982] = {
        name = "Farstrider's Longbow",
        questID = 9167,
        quest = "The Traitor's Destruction",
        start = "Starts from Magister Kaendris",
    },
    [22984] = {
        name = "Dawnblade",
        questID = 9167,
        quest = "The Traitor's Destruction",
        start = "Starts from Magister Kaendris",
    },
    [22995] = {
        name = "Sin'dorei Warblade",
        questID = 9167,
        quest = "The Traitor's Destruction",
        start = "Starts from Magister Kaendris",
    },
    -- source: https://www.wowhead.com/quest=9170   ("Dar'Khan's Lieutenants")
    [22997] = {
        name = "Ley-Keeper's Wand",
        questID = 9170,
        quest = "Dar'Khan's Lieutenants",
        start = "Starts from Magister Idonis",
    },
    -- source: https://www.wowhead.com/quest=9176   ("The Twin Ziggurats")
    [22783] = {
        name = "Sunwell Blade",
        questID = 9176,
        quest = "The Twin Ziggurats",
        start = "Starts from Magister Kaendris",
    },
    -- source: https://www.wowhead.com/quest=9215   ("Bring Me Kel'gash's Head!")
    [23409] = {
        name = "Well Crafted Long Bow",
        questID = 9215,
        quest = "Bring Me Kel'gash's Head!",
        start = "Starts from Wanted Poster: Kel'gash the Wicked",
    },
    [23410] = {
        name = "Well Crafted Sword",
        questID = 9215,
        quest = "Bring Me Kel'gash's Head!",
        start = "Starts from Wanted Poster: Kel'gash the Wicked",
    },
    [23411] = {
        name = "Well Crafted Staff",
        questID = 9215,
        quest = "Bring Me Kel'gash's Head!",
        start = "Starts from Wanted Poster: Kel'gash the Wicked",
    },
    -- source: https://www.wowhead.com/quest=9311   ("Blood Elf Spy")
    [23392] = {
        name = "Exodar Maul",
        questID = 9311,
        quest = "Blood Elf Spy",
        start = "Starts from Tolaan",
    },
    [23393] = {
        name = "Exodar Shortsword",
        questID = 9311,
        quest = "Blood Elf Spy",
        start = "Starts from Tolaan",
    },
    [24441] = {
        name = "Exodar Crossbow",
        questID = 9311,
        quest = "Blood Elf Spy",
        start = "Starts from Tolaan",
    },
    -- source: https://www.wowhead.com/quest=9315   ("Anok'suten")
    [24339] = {
        name = "Stung",
        questID = 9315,
        quest = "Anok'suten",
        start = "Starts from Dying Blood Elf",
    },
    -- source: https://www.wowhead.com/quest=9387   ("Source of the Corruption")
    [25915] = {
        name = "Fallen Vindicator's Blade",
        questID = 9387,
        quest = "Source of the Corruption",
        start = "Starts from Apothecary Azethen",
    },
    -- source: https://www.wowhead.com/quest=9424   ("Makuru's Vengeance")
    [25920] = {
        name = "Sedai's Blade",
        questID = 9424,
        quest = "Makuru's Vengeance",
        start = "Starts from Makuru",
    },
    -- source: https://www.wowhead.com/quest=9515   ("Warlord Sriss'tiz")
    [24448] = {
        name = "Battle Tested Blade",
        questID = 9515,
        quest = "Warlord Sriss'tiz",
        start = "Starts from Priestess Kyleen Il'dinare",
    },
    -- source: https://www.wowhead.com/quest=9537   ("Show Gnomercy")
    [24430] = {
        name = "Seafarer's Blade",
        questID = 9537,
        quest = "Show Gnomercy",
        start = "Starts from Admiral Odesyus",
    },
    [24433] = {
        name = "Crossbow of the Albatross",
        questID = 9537,
        quest = "Show Gnomercy",
        start = "Starts from Admiral Odesyus",
    },
    [24434] = {
        name = "The Discipline Stick",
        questID = 9537,
        quest = "Show Gnomercy",
        start = "Starts from Admiral Odesyus",
    },
    -- source: https://www.wowhead.com/quest=9544   ("The Prophecy of Akida")
    [27401] = {
        name = "Arugoo's Crossbow of Destruction",
        questID = 9544,
        quest = "The Prophecy of Akida",
        start = "Starts from Totem of Vark",
    },
    [27403] = {
        name = "Stillpine Stinger",
        questID = 9544,
        quest = "The Prophecy of Akida",
        start = "Starts from Totem of Vark",
    },
    -- source: https://www.wowhead.com/quest=9569   ("Containing the Threat")
    [27402] = {
        name = "Huntsman's Crossbow",
        questID = 9569,
        quest = "Containing the Threat",
        start = "Starts from Vindicator Aalesia",
    },
    [27404] = {
        name = "Lightspark",
        questID = 9569,
        quest = "Containing the Threat",
        start = "Starts from Vindicator Aalesia",
    },
    -- source: https://www.wowhead.com/quest=9634   ("Alien Predators")
    [26049] = {
        name = "Old Elekk Prod",
        questID = 9634,
        quest = "Alien Predators",
        start = "Starts from Vorkhan the Elekk Herder",
    },
    [26051] = {
        name = "2 Stone Sledgehammer",
        questID = 9634,
        quest = "Alien Predators",
        start = "Starts from Vorkhan the Elekk Herder",
    },
    [26053] = {
        name = "Elekk Handler's Blade",
        questID = 9634,
        quest = "Alien Predators",
        start = "Starts from Vorkhan the Elekk Herder",
    },
    [27389] = {
        name = "Surplus Bastard Sword",
        questID = 9634,
        quest = "Alien Predators",
        start = "Starts from Vorkhan the Elekk Herder",
    },
    -- source: https://www.wowhead.com/quest=9667   ("Saving Princess Stillpine")
    [24342] = {
        name = "Stillpine Shocker",
        questID = 9667,
        quest = "Saving Princess Stillpine",
        start = "Starts from Princess Stillpine",
    },
    [24343] = {
        name = "The Thumper",
        questID = 9667,
        quest = "Saving Princess Stillpine",
        start = "Starts from Princess Stillpine",
    },
    -- source: https://www.wowhead.com/quest=10198   ("Information Gathering")
    [30397] = {
        name = "Spymaster's Crossbow",
        questID = 10198,
        quest = "Information Gathering",
        start = "Starts from Caledis Brightdawn",
    },
    -- source: https://www.wowhead.com/quest=10235   ("Declawing Doomclaw")
    [30277] = {
        name = "Ripfang Paw",
        questID = 10235,
        quest = "Declawing Doomclaw",
        start = "Starts from Mama Wheeler",
    },
    [30278] = {
        name = "Pilfered Ethereal Blade",
        questID = 10235,
        quest = "Declawing Doomclaw",
        start = "Starts from Mama Wheeler",
    },
    [30279] = {
        name = "Mama's Insurance",
        questID = 10235,
        quest = "Declawing Doomclaw",
        start = "Starts from Mama Wheeler",
    },
    -- source: https://www.wowhead.com/quest=10255   ("Testing the Antidote")
    [25986] = {
        name = "Dreadtusk's Fury",
        questID = 10255,
        quest = "Testing the Antidote",
        start = "Starts from Thiah Redmane",
    },
    [25987] = {
        name = "Helboar Carving Blade",
        questID = 10255,
        quest = "Testing the Antidote",
        start = "Starts from Thiah Redmane",
    },
    -- source: https://www.wowhead.com/quest=10258   ("Honor the Fallen")
    [29108] = {
        name = "Blade of the Unyielding",
        questID = 10258,
        quest = "Honor the Fallen",
        start = "Starts from Althen the Historian",
    },
    -- source: https://www.wowhead.com/quest=10295   ("From the Abyss")
    [29399] = {
        name = "Rod of the Void Caller",
        questID = 10295,
        quest = "From the Abyss",
        start = "Starts from Ogath the Mad",
    },
    -- source: https://www.wowhead.com/quest=10313   ("Measuring Warp Energies")
    [30364] = {
        name = "Resonating Axe",
        questID = 10313,
        quest = "Measuring Warp Energies",
        start = "Starts from Exarch Orelis",
    },
    -- source: https://www.wowhead.com/quest=10332   ("Master Smith Rhonsus")
    [29787] = {
        name = "Master Smith's Hammer",
        questID = 10332,
        quest = "Master Smith Rhonsus",
        start = "Starts from Apprentice Andrethan",
    },
    -- source: https://www.wowhead.com/quest=10337   ("When the Cows Come Home")
    [30523] = {
        name = "Hotshot Cattle Prod",
        questID = 10337,
        quest = "When the Cows Come Home",
        start = "Starts from Bessy",
    },
    -- source: https://www.wowhead.com/quest=10341   ("Kick Them While They're Down")
    [30394] = {
        name = "Sunfury Blade",
        questID = 10341,
        quest = "Kick Them While They're Down",
        start = "Starts from Magistrix Larynna",
    },
    [30395] = {
        name = "Warp-Master's Maul",
        questID = 10341,
        quest = "Kick Them While They're Down",
        start = "Starts from Magistrix Larynna",
    },
    [30396] = {
        name = "Jeweled Halberd",
        questID = 10341,
        quest = "Kick Them While They're Down",
        start = "Starts from Magistrix Larynna",
    },
    [30522] = {
        name = "Conjurer's Staff",
        questID = 10341,
        quest = "Kick Them While They're Down",
        start = "Starts from Magistrix Larynna",
    },
    -- source: https://www.wowhead.com/quest=10350   ("Behomat")
    [23423] = {
        name = "Mercenary Greatsword",
        questID = 10350,
        quest = "Behomat",
        start = "Starts from Ruada",
    },
    [23429] = {
        name = "Mercenary Clout",
        questID = 10350,
        quest = "Behomat",
        start = "Starts from Ruada",
    },
    [23430] = {
        name = "Mercenary Sword",
        questID = 10350,
        quest = "Behomat",
        start = "Starts from Ruada",
    },
    -- source: https://www.wowhead.com/quest=10408   ("Nexus-King Salhadaar")
    [30009] = {
        name = "The Burning Crusader",
        questID = 10408,
        quest = "Nexus-King Salhadaar",
        start = "Starts from Image of Commander Ameer",
    },
    [30010] = {
        name = "Fleshling Simulation Staff",
        questID = 10408,
        quest = "Nexus-King Salhadaar",
        start = "Starts from Image of Commander Ameer",
    },
    [30011] = {
        name = "Ameer's Impulse Taser",
        questID = 10408,
        quest = "Nexus-King Salhadaar",
        start = "Starts from Image of Commander Ameer",
    },
    [30012] = {
        name = "Ameer's Judgment",
        questID = 10408,
        quest = "Nexus-King Salhadaar",
        start = "Starts from Image of Commander Ameer",
    },
    -- source: https://www.wowhead.com/quest=10507   ("Turning Point")
    [30859] = {
        name = "Wand of the Seer",
        questID = 10507,
        quest = "Turning Point",
        start = "Starts from Voren'thal the Seer",
    },
    -- source: https://www.wowhead.com/quest=10526   ("The Thunderspike")
    [31474] = {
        name = "Wand of the Ancestors",
        questID = 10526,
        quest = "The Thunderspike",
        start = "Starts from Rokgah Bloodgrip",
    },
    [31475] = {
        name = "Thunderlord Scalpel",
        questID = 10526,
        quest = "The Thunderspike",
        start = "Starts from Rokgah Bloodgrip",
    },
    [31476] = {
        name = "Slow Death Dirk",
        questID = 10526,
        quest = "The Thunderspike",
        start = "Starts from Rokgah Bloodgrip",
    },
    -- source: https://www.wowhead.com/quest=10588   ("The Cipher of Damnation")
    [31036] = {
        name = "Oronok's Ancient Scepter",
        questID = 10588,
        quest = "The Cipher of Damnation",
        start = "Starts from Oronok Torn-heart",
    },
    [31038] = {
        name = "Staff of the Redeemer",
        questID = 10588,
        quest = "The Cipher of Damnation",
        start = "Starts from Oronok Torn-heart",
    },
    [31062] = {
        name = "Torn-Heart Axe of Battle",
        questID = 10588,
        quest = "The Cipher of Damnation",
        start = "Starts from Oronok Torn-heart",
    },
    [31071] = {
        name = "Grom'tor's Charge",
        questID = 10588,
        quest = "The Cipher of Damnation",
        start = "Starts from Oronok Torn-heart",
    },
    [31072] = {
        name = "Lohn'goron, Bow of the Torn-Heart",
        questID = 10588,
        quest = "The Cipher of Damnation",
        start = "Starts from Oronok Torn-heart",
    },
    [31073] = {
        name = "Borak's Reminder",
        questID = 10588,
        quest = "The Cipher of Damnation",
        start = "Starts from Oronok Torn-heart",
    },
    -- source: https://www.wowhead.com/quest=10630   ("Beneath Thrallmar")
    [30855] = {
        name = "Shatterstone Pick",
        questID = 10630,
        quest = "Beneath Thrallmar",
        start = "Starts from Foreman Razelcraz",
    },
    -- source: https://www.wowhead.com/quest=10632   ("Cutting Your Teeth")
    [31446] = {
        name = "Vibro Shanker",
        questID = 10632,
        quest = "Cutting Your Teeth",
        start = "Starts from Razak Ironsides",
    },
    [31447] = {
        name = "Vibro Dagger",
        questID = 10632,
        quest = "Cutting Your Teeth",
        start = "Starts from Razak Ironsides",
    },
    [31448] = {
        name = "Vibro Sword",
        questID = 10632,
        quest = "Cutting Your Teeth",
        start = "Starts from Razak Ironsides",
    },
    -- source: https://www.wowhead.com/quest=10679   ("Quenching the Blade")
    [30787] = {
        name = "Illidari-Bane Mageblade",
        questID = 10679,
        quest = "Quenching the Blade",
        start = "Starts from David Wayne",
    },
    [30788] = {
        name = "Illidari-Bane Broadsword",
        questID = 10679,
        quest = "Quenching the Blade",
        start = "Starts from David Wayne",
    },
    [30789] = {
        name = "Illidari-Bane Claymore",
        questID = 10679,
        quest = "Quenching the Blade",
        start = "Starts from David Wayne",
    },
    [31745] = {
        name = "Illidari-Bane Dagger",
        questID = 10679,
        quest = "Quenching the Blade",
        start = "Starts from David Wayne",
    },
    -- source: https://www.wowhead.com/quest=10690   ("The Den Mother")
    [31423] = {
        name = "Wolf Hewer's Axe",
        questID = 10690,
        quest = "The Den Mother",
        start = "Starts from Wanted Poster",
    },
    [31424] = {
        name = "Arcane Wand of Sylvanaar",
        questID = 10690,
        quest = "The Den Mother",
        start = "Starts from Wanted Poster",
    },
    -- source: https://www.wowhead.com/quest=10771   ("From the Ashes")
    [31414] = {
        name = "Wild Wood Staff",
        questID = 10771,
        quest = "From the Ashes",
        start = "Starts from Mosswood the Ancient",
    },
    [31416] = {
        name = "Scorch Wood Bow",
        questID = 10771,
        quest = "From the Ashes",
        start = "Starts from Mosswood the Ancient",
    },
    -- source: https://www.wowhead.com/quest=10848   ("Veil Rhaze: Unliving Evil")
    [31761] = {
        name = "Talonbranch Wand",
        questID = 10848,
        quest = "Veil Rhaze: Unliving Evil",
        start = "Starts from Kirrik the Awakened",
    },
    -- source: https://www.wowhead.com/quest=10857   ("Teleport This!")
    [31700] = {
        name = "Runed Silver Staff",
        questID = 10857,
        quest = "Teleport This!",
        start = "Starts from Nether-Stalker Nauthis",
    },
    [31701] = {
        name = "Saboteur's Axe",
        questID = 10857,
        quest = "Teleport This!",
        start = "Starts from Nether-Stalker Nauthis",
    },
    [31703] = {
        name = "Nether-Stalker's Blade",
        questID = 10857,
        quest = "Teleport This!",
        start = "Starts from Nether-Stalker Nauthis",
    },
    -- source: https://www.wowhead.com/quest=10887   ("Escaping the Tomb")
    [31733] = {
        name = "Akuno's Blade",
        questID = 10887,
        quest = "Escaping the Tomb",
        start = "Starts from Akuno",
    },
    -- source: https://www.wowhead.com/quest=10921   ("Terokkarantula")
    [31821] = {
        name = "Blade of Retribution",
        questID = 10921,
        quest = "Terokkarantula",
        start = "Starts from Vindicator Haylen",
    },
    -- source: https://www.wowhead.com/quest=10923   ("Evil Draws Near")
    [31816] = {
        name = "Dragonbone Greatsword",
        questID = 10923,
        quest = "Evil Draws Near",
        start = "Starts from Oakun",
    },
    -- source: https://www.wowhead.com/quest=10930   ("The Big Bone Worm")
    [31756] = {
        name = "Dib'Muad's Crysknife",
        questID = 10930,
        quest = "The Big Bone Worm",
        start = "Starts from Dwarfowitz",
    },
    [31758] = {
        name = "Revered Mother's Crysknife",
        questID = 10930,
        quest = "The Big Bone Worm",
        start = "Starts from Dwarfowitz",
    },
    [31759] = {
        name = "Shani's Crysknife",
        questID = 10930,
        quest = "The Big Bone Worm",
        start = "Starts from Dwarfowitz",
    },
    -- source: https://www.wowhead.com/quest=11073   ("Terokk's Downfall")
    [32829] = {
        name = "Windcharger's Lance",
        questID = 11073,
        quest = "Terokk's Downfall",
        start = "Starts from Sky Commander Adaris",
    },
    [32830] = {
        name = "Severin's Cane",
        questID = 11073,
        quest = "Terokk's Downfall",
        start = "Starts from Sky Commander Adaris",
    },
    [32831] = {
        name = "Jeweled Rod",
        questID = 11073,
        quest = "Terokk's Downfall",
        start = "Starts from Sky Commander Adaris",
    },
    -- source: https://www.wowhead.com/quest=11090   ("Subdue the Subduer")
    [32872] = {
        name = "Illidari Rod of Discipline",
        questID = 11090,
        quest = "Subdue the Subduer",
        start = "Starts from Illidari Lord Balthas",
    },

    ------------------------------------------------------------
    -- WRATH OF THE LICH KING
    ------------------------------------------------------------
    -- source: https://www.wowhead.com/quest=11282   ("A Lesson in Fear")
    [35870] = {
        name = "Stoneground Cleaver",
        questID = 11282,
        quest = "A Lesson in Fear",
        start = "Starts from Sergeant Gorth",
    },
    -- source: https://www.wowhead.com/quest=11319   ("Seeds of the Blacksouled Keepers")
    [39073] = {
        name = "Root of the Everlasting",
        questID = 11319,
        quest = "Seeds of the Blacksouled Keepers",
        start = "Starts from Lurielle",
    },
    -- source: https://www.wowhead.com/quest=11602   ("Cutting Off the Source")
    [36882] = {
        name = "Warsong Longbow",
        questID = 11602,
        quest = "Cutting Off the Source",
        start = "Starts from Overlord Razgor",
    },
    -- source: https://www.wowhead.com/quest=11613   ("Karuk's Oath")
    [37026] = {
        name = "Spirit Channeller's Rod",
        questID = 11613,
        quest = "Karuk's Oath",
        start = "Starts from Karuk",
    },
    -- source: https://www.wowhead.com/quest=11797   ("The Siege")
    [38208] = {
        name = "Valiance Longbow",
        questID = 11797,
        quest = "The Siege",
        start = "Starts from Sergeant Hammerhill",
    },
    -- source: https://www.wowhead.com/quest=11872   ("The Nefarious Clam Master...")
    [37014] = {
        name = "Rod of Poacher Punishment",
        questID = 11872,
        quest = "The Nefarious Clam Master...",
        start = "Starts from Hierophant Liandra",
    },
    [37016] = {
        name = "Wand of the Keeper",
        questID = 11872,
        quest = "The Nefarious Clam Master...",
        start = "Starts from Hierophant Liandra",
    },
    [37017] = {
        name = "Nimble Blade",
        questID = 11872,
        quest = "The Nefarious Clam Master...",
        start = "Starts from Hierophant Liandra",
    },
    -- source: https://www.wowhead.com/quest=11909   ("Defeat the Gearmaster")
    [37122] = {
        name = "Taut Driftwood Bow",
        questID = 11909,
        quest = "Defeat the Gearmaster",
        start = "Starts from Greatmother Taiga",
    },
    [37537] = {
        name = "Stave of the Spiritcaller",
        questID = 11909,
        quest = "Defeat the Gearmaster",
        start = "Starts from Greatmother Taiga",
    },
    -- source: https://www.wowhead.com/quest=11968   ("The Tides Turn")
    [37031] = {
        name = "Zook's Walking Stick",
        questID = 11968,
        quest = "The Tides Turn",
        start = "Starts from Elder Muahit",
    },
    -- source: https://www.wowhead.com/quest=11969   ("Springing the Trap")
    [37076] = {
        name = "Fiery Prod",
        questID = 11969,
        quest = "Springing the Trap",
        start = "Starts from Raelorasz",
    },
    [37078] = {
        name = "Rod of the Crimson Keeper",
        questID = 11969,
        quest = "Springing the Trap",
        start = "Starts from Raelorasz",
    },
    -- source: https://www.wowhead.com/quest=11984   ("Filling the Cages")
    [39116] = {
        name = "Grinder of Reverse Emancipation",
        questID = 11984,
        quest = "Filling the Cages",
        start = "Starts from Samir",
    },
    [39128] = {
        name = "Yoke Slasher",
        questID = 11984,
        quest = "Filling the Cages",
        start = "Starts from Samir",
    },
    [39142] = {
        name = "Mace of Helotry",
        questID = 11984,
        quest = "Filling the Cages",
        start = "Starts from Samir",
    },
    -- source: https://www.wowhead.com/quest=12032   ("Conversing With the Depths")
    [38126] = {
        name = "Frostbite Warstaff",
        questID = 12032,
        quest = "Conversing With the Depths",
        start = "Starts from Elder Mana'loa",
    },
    [38127] = {
        name = "Carved Dragonbone Mace",
        questID = 12032,
        quest = "Conversing With the Depths",
        start = "Starts from Elder Mana'loa",
    },
    [38146] = {
        name = "Gleaming Iceblade",
        questID = 12032,
        quest = "Conversing With the Depths",
        start = "Starts from Elder Mana'loa",
    },
    [38148] = {
        name = "Chilled Headsmasher",
        questID = 12032,
        quest = "Conversing With the Depths",
        start = "Starts from Elder Mana'loa",
    },
    [38150] = {
        name = "Imported Ironshod Crossbow",
        questID = 12032,
        quest = "Conversing With the Depths",
        start = "Starts from Elder Mana'loa",
    },
    -- source: https://www.wowhead.com/quest=12050   ("Lumber Hack")
    [38141] = {
        name = "Coldwind Scratching Pole",
        questID = 12050,
        quest = "Lumber Hack",
        start = "Starts from Xink",
    },
    [38142] = {
        name = "Infused Dragonbone Splinter",
        questID = 12050,
        quest = "Lumber Hack",
        start = "Starts from Xink",
    },
    [38143] = {
        name = "Composite Harpyspine Staff",
        questID = 12050,
        quest = "Lumber Hack",
        start = "Starts from Xink",
    },
    [38187] = {
        name = "Reactive Waraxe",
        questID = 12050,
        quest = "Lumber Hack",
        start = "Starts from Xink",
    },
    [38191] = {
        name = "Compact Explosive Delivery Device",
        questID = 12050,
        quest = "Lumber Hack",
        start = "Starts from Xink",
    },
    -- source: https://www.wowhead.com/quest=12089   ("WANTED: Magister Keldonus")
    [38189] = {
        name = "Backtwister",
        questID = 12089,
        quest = "WANTED: Magister Keldonus",
        start = "Starts from Wanted!",
    },
    [38195] = {
        name = "Magister's Bane",
        questID = 12089,
        quest = "WANTED: Magister Keldonus",
        start = "Starts from Wanted!",
    },
    -- source: https://www.wowhead.com/quest=12099   ("Free at Last")
    [39120] = {
        name = "Spire of Soaring Rumination",
        questID = 12099,
        quest = "Free at Last",
        start = "Starts from Gavrock",
    },
    -- source: https://www.wowhead.com/quest=12134   ("Sasha's Hunt")
    [39110] = {
        name = "Staff of Righteous Vengeance",
        questID = 12134,
        quest = "Sasha's Hunt",
        start = "Starts from Sasha",
    },
    -- source: https://www.wowhead.com/quest=12151   ("Wanton Warlord")
    [38157] = {
        name = "Longbow of the Ruby Rider",
        questID = 12151,
        quest = "Wanton Warlord",
        start = "Starts from Aurastrasza",
    },
    -- source: https://www.wowhead.com/quest=12840   ("In Strict Confidence")
    [43919] = {
        name = "Curved Assassin's Dagger",
        questID = 12840,
        quest = "In Strict Confidence",
        start = "Starts from Lord-Commander Arete",
    },
    [43920] = {
        name = "Growler's Intimidation",
        questID = 12840,
        quest = "In Strict Confidence",
        start = "Starts from Lord-Commander Arete",
    },
    [43921] = {
        name = "Staff of Interrogation",
        questID = 12840,
        quest = "In Strict Confidence",
        start = "Starts from Lord-Commander Arete",
    },
    -- source: https://www.wowhead.com/quest=12857   ("WANTED: Ragemane's Flipper")
    [44734] = {
        name = "Hammer of Quiet Mourning",
        questID = 12857,
        quest = "WANTED: Ragemane's Flipper",
        start = "Starts from Wanted!",
    },
    [44735] = {
        name = "Crescent of Brooding Fury",
        questID = 12857,
        quest = "WANTED: Ragemane's Flipper",
        start = "Starts from Wanted!",
    },
    [44736] = {
        name = "Sword of Heartwrenching Slaughter",
        questID = 12857,
        quest = "WANTED: Ragemane's Flipper",
        start = "Starts from Wanted!",
    },
    -- source: https://www.wowhead.com/quest=12859   ("This Just In: Fire Still Hot!")
    [41755] = {
        name = "The Fire Extinguisher",
        questID = 12859,
        quest = "This Just In: Fire Still Hot!",
        start = "Starts from Elder Shaman Moky",
    },
    -- source: https://www.wowhead.com/quest=12948   ("The Champion of Anguish")
    [41815] = {
        name = "Icier Barbed Spear",
        questID = 12948,
        quest = "The Champion of Anguish",
        start = "Starts from Gurgthock",
    },
    [41816] = {
        name = "De-Raged Waraxe",
        questID = 12948,
        quest = "The Champion of Anguish",
        start = "Starts from Gurgthock",
    },
    [41821] = {
        name = "Chilly Slobberknocker",
        questID = 12948,
        quest = "The Champion of Anguish",
        start = "Starts from Gurgthock",
    },
    [41822] = {
        name = "Screw-Sprung Fixer-Upper",
        questID = 12948,
        quest = "The Champion of Anguish",
        start = "Starts from Gurgthock",
    },
    [41824] = {
        name = "Crimson Cranium Crusher",
        questID = 12948,
        quest = "The Champion of Anguish",
        start = "Starts from Gurgthock",
    },
    [41825] = {
        name = "Wodin's Second-Best Shanker",
        questID = 12948,
        quest = "The Champion of Anguish",
        start = "Starts from Gurgthock",
    },
    -- source: https://www.wowhead.com/quest=12992   ("Crush Dem Vrykuls!")
    [43928] = {
        name = "Bow of Bone and Sinew",
        questID = 12992,
        quest = "Crush Dem Vrykuls!",
        start = "Starts from Vile",
    },
    -- source: https://www.wowhead.com/quest=13051   ("Territorial Trespass")
    [42857] = {
        name = "Thorim's Riding Crop",
        questID = 13051,
        quest = "Territorial Trespass",
        start = "Starts from Thorim",
    },
    [42858] = {
        name = "Crossbow of the Storms",
        questID = 13051,
        quest = "Territorial Trespass",
        start = "Starts from Thorim",
    },
    [42859] = {
        name = "Thorim's Crusher",
        questID = 13051,
        quest = "Territorial Trespass",
        start = "Starts from Thorim",
    },
    -- source: https://www.wowhead.com/quest=13110   ("The Restless Dead")
    [43834] = {
        name = "Staff of Redeemed Souls",
        questID = 13110,
        quest = "The Restless Dead",
        start = "Starts from Father Gustav",
    },
    [43835] = {
        name = "Hand of Gustav",
        questID = 13110,
        quest = "The Restless Dead",
        start = "Starts from Father Gustav",
    },
    -- source: https://www.wowhead.com/quest=13142   ("Banshee's Revenge")
    [44028] = {
        name = "Vengance Shiv",
        questID = 13142,
        quest = "Banshee's Revenge",
        start = "Starts from The Bone Witch",
    },
    [44029] = {
        name = "Quickblade of Cold Return",
        questID = 13142,
        quest = "Banshee's Revenge",
        start = "Starts from The Bone Witch",
    },
    -- source: https://www.wowhead.com/quest=13162   ("The Rider of Frost")
    [43875] = {
        name = "Axe of the Cunning",
        questID = 13162,
        quest = "The Rider of Frost",
        start = "Starts from Vereth the Cunning",
    },
    [43897] = {
        name = "Frost Climber's Hatchet",
        questID = 13162,
        quest = "The Rider of Frost",
        start = "Starts from Vereth the Cunning",
    },
    [43898] = {
        name = "Icy Quick Edge",
        questID = 13162,
        quest = "The Rider of Frost",
        start = "Starts from Vereth the Cunning",
    },
    -- source: https://www.wowhead.com/quest=13172   ("Seeds of Chaos")
    [43923] = {
        name = "Bloodblade",
        questID = 13172,
        quest = "Seeds of Chaos",
        start = "Starts from Keritose Bloodblade",
    },
    -- source: https://www.wowhead.com/quest=13211   ("By Fire Be Purged")
    [43893] = {
        name = "Olakin's Enchanted Torch",
        questID = 13211,
        quest = "By Fire Be Purged",
        start = "Starts from Crusader Olakin Sainrith",
    },
    -- source: https://www.wowhead.com/quest=13629   ("Val'anyr, Hammer of Ancient Kings")
    [46017] = {
        name = "Val'anyr, Hammer of Ancient Kings",
        questID = 13629,
        quest = "Val'anyr, Hammer of Ancient Kings",
        start = "Starts from Archivum Console",
    },
    -- source: https://www.wowhead.com/quest=24549   ("Shadowmourne...")
    [49623] = {
        name = "Shadowmourne",
        questID = 24549,
        quest = "Shadowmourne...",
        start = "Starts from Highlord Darion Mograine",
    },
    -- source: https://www.wowhead.com/quest=24743   ("Shadow's Edge")
    [49888] = {
        name = "Shadow's Edge",
        questID = 24743,
        quest = "Shadow's Edge",
        start = "Starts from Highlord Darion Mograine",
    },
    -- source: https://www.wowhead.com/quest=24978   ("Reaping the Reapers")
    [57146] = {
        name = "Scythe Blade",
        questID = 24978,
        quest = "Reaping the Reapers",
        start = "Starts from Deathguard Simmer",
    },

    ------------------------------------------------------------
    -- CATACLYSM
    ------------------------------------------------------------
    -- source: https://www.wowhead.com/quest=46   ("Bounty on Murlocs")
    [57248] = {
        name = "Well-Used Greatsword",
        questID = 46,
        quest = "Bounty on Murlocs",
        start = "Starts from Bounty Board",
    },
    [57521] = {
        name = "Marshal's Light Crossbow",
        questID = 46,
        quest = "Bounty on Murlocs",
        start = "Starts from Bounty Board",
    },
    -- source: https://www.wowhead.com/quest=197   ("Raptor Mastery")
    [61110] = {
        name = "Tethis' Skull",
        questID = 197,
        quest = "Raptor Mastery",
        start = "Starts from Hemet Nesingwary Jr.",
    },
    -- source: https://www.wowhead.com/quest=865   ("It's Gotta be the Horn")
    [59580] = {
        name = "Sharp Poker",
        questID = 865,
        quest = "It's Gotta be the Horn",
        start = "Starts from Mebok Mizzyrix",
    },
    [59582] = {
        name = "Shrewd Crossbow",
        questID = 865,
        quest = "It's Gotta be the Horn",
        start = "Starts from Mebok Mizzyrix",
    },
    -- source: https://www.wowhead.com/quest=895   ("WANTED: Cap'n Garvey")
    [49560] = {
        name = "Proof of Death",
        questID = 895,
        quest = "WANTED: Cap'n Garvey",
        start = "Starts from WANTED",
    },
    -- source: https://www.wowhead.com/quest=899   ("Consumed by Hatred")
    [59541] = {
        name = "Mankrik's Boar Slicer",
        questID = 899,
        quest = "Consumed by Hatred",
        start = "Starts from Mankrik",
    },
    -- source: https://www.wowhead.com/quest=905   ("Into the Raptor's Den")
    [59550] = {
        name = "Darkthorn Piercer",
        questID = 905,
        quest = "Into the Raptor's Den",
        start = "Starts from Sergra Darkthorn",
    },
    -- source: https://www.wowhead.com/quest=1258   ("... and Bugs")
    [57844] = {
        name = "Crawling Wand",
        questID = 1258,
        quest = "... and Bugs",
        start = "Starts from Morgan Stern",
    },
    -- source: https://www.wowhead.com/quest=1456   ("The Karnitol Shipwreck")
    [55948] = {
        name = "Finder's Battleaxe",
        questID = 1456,
        quest = "The Karnitol Shipwreck",
        start = "Starts from Kreldig Ungor",
    },
    -- source: https://www.wowhead.com/quest=2280   ("The Platinum Discs")
    [65921] = {
        name = "Durdin's Hammer",
        questID = 2280,
        quest = "The Platinum Discs",
        start = "Starts from The Discs of Norgannon",
    },
    -- source: https://www.wowhead.com/quest=4021   ("Counterattack!")
    [59592] = {
        name = "Suppressor's Wand",
        questID = 4021,
        quest = "Counterattack!",
        start = "Starts from Regthar Deathgate",
    },
    -- source: https://www.wowhead.com/quest=5581   ("Portals of the Legion")
    [55939] = {
        name = "Binding Staff",
        questID = 5581,
        quest = "Portals of the Legion",
        start = "Starts from Felgur Twocuts",
    },
    -- source: https://www.wowhead.com/quest=13730   ("Playing With Felfire")
    [56649] = {
        name = "Folly's Edge",
        questID = 13730,
        quest = "Playing With Felfire",
        start = "Starts from Splintertree Demolisher",
    },
    -- source: https://www.wowhead.com/quest=13798   ("Rain of Destruction")
    [56713] = {
        name = "Durak's Wand",
        questID = 13798,
        quest = "Rain of Destruction",
        start = "Starts from Durak",
    },
    -- source: https://www.wowhead.com/quest=13805   ("Pierce Their Heart!")
    [56729] = {
        name = "Forest Heart Piercer",
        questID = 13805,
        quest = "Pierce Their Heart!",
        start = "Starts from Durak",
    },
    -- source: https://www.wowhead.com/quest=13871   ("Security!")
    [56720] = {
        name = "Security Crossbow",
        questID = 13871,
        quest = "Security!",
        start = "Starts from Overseer Gorthak",
    },
    -- source: https://www.wowhead.com/quest=13898   ("The Tides Turn Against Us")
    [52644] = {
        name = "Scaling Knife",
        questID = 13898,
        quest = "The Tides Turn Against Us",
        start = "Starts from Felros",
    },
    -- source: https://www.wowhead.com/quest=13947   ("Blastranaar!")
    [56661] = {
        name = "Preemptive Striker",
        questID = 13947,
        quest = "Blastranaar!",
        start = "Starts from Captain Goggath",
    },
    [56662] = {
        name = "Staff of Fiery Fate",
        questID = 13947,
        quest = "Blastranaar!",
        start = "Starts from Captain Goggath",
    },
    -- source: https://www.wowhead.com/quest=13968   ("The Tortusk Takedown")
    [59533] = {
        name = "Wand of Separation",
        questID = 13968,
        quest = "The Tortusk Takedown",
        start = "Starts from Togrik",
    },
    -- source: https://www.wowhead.com/quest=13971   ("The Kodo's Return")
    [59531] = {
        name = "Far Watch Musket",
        questID = 13971,
        quest = "The Kodo's Return",
        start = "Starts from Grol'dom Kodo",
    },
    -- source: https://www.wowhead.com/quest=13979   ("The Goblin Braintrust")
    [56705] = {
        name = "Skunkworks Sword",
        questID = 13979,
        quest = "The Goblin Braintrust",
        start = "Starts from Huntress Jalin",
    },
    -- source: https://www.wowhead.com/quest=14042   ("Ammo Kerblammo")
    [59558] = {
        name = "Gouging Staff",
        questID = 14042,
        quest = "Ammo Kerblammo",
        start = "Starts from Gazlowe",
    },
    -- source: https://www.wowhead.com/quest=14050   ("Gazlowe's Fortune")
    [59560] = {
        name = "Bling Cane",
        questID = 14050,
        quest = "Gazlowe's Fortune",
        start = "Starts from Gazlowe",
    },
    -- source: https://www.wowhead.com/quest=14067   ("The Stolen Silver")
    [59554] = {
        name = "Silver-Edged Blade",
        questID = 14067,
        quest = "The Stolen Silver",
        start = "Starts from Gazrog",
    },
    -- source: https://www.wowhead.com/quest=14068   ("Waptor Twapping")
    [59563] = {
        name = "Waptor Thwapper",
        questID = 14068,
        quest = "Waptor Twapping",
        start = "Starts from Kala'ma",
    },
    -- source: https://www.wowhead.com/quest=14071   ("Rolling with my Homies")
    [54298] = {
        name = "Skyrocket Gun",
        questID = 14071,
        quest = "Rolling with my Homies",
        start = "Starts from Megs Dreadshredder",
    },
    -- source: https://www.wowhead.com/quest=14155   ("Arborcide")
    [53407] = {
        name = "Chopped Off Ancient Limb",
        questID = 14155,
        quest = "Arborcide",
        start = "Starts from Labor Captain Grabbit",
    },
    -- source: https://www.wowhead.com/quest=14204   ("From the Shadows")
    [54985] = {
        name = "Alarmbringer's Mace",
        questID = 14204,
        quest = "From the Shadows",
        start = "Starts from Lorna Crowley",
    },
    [54986] = {
        name = "Houndmaster's Crossbow",
        questID = 14204,
        quest = "From the Shadows",
        start = "Starts from Lorna Crowley",
    },
    [58217] = {
        name = "Mastiff Trainer's Wand",
        questID = 14204,
        quest = "From the Shadows",
        start = "Starts from Lorna Crowley",
    },
    -- source: https://www.wowhead.com/quest=14238   ("Infrared = Infradead")
    [52930] = {
        name = "Spy Poker",
        questID = 14238,
        quest = "Infrared = Infradead",
        start = "Starts from Kilag Gorefang",
    },
    -- source: https://www.wowhead.com/quest=14243   ("Warchief's Revenge")
    [52901] = {
        name = "Whirling Axe",
        questID = 14243,
        quest = "Warchief's Revenge",
        start = "Starts from Thrall",
    },
    [52947] = {
        name = "Cyclone Staff",
        questID = 14243,
        quest = "Warchief's Revenge",
        start = "Starts from Thrall",
    },
    -- source: https://www.wowhead.com/quest=14249   ("Shear Will")
    [53439] = {
        name = "Scissor Blade",
        questID = 14249,
        quest = "Shear Will",
        start = "Starts from Will Robotronic",
    },
    -- source: https://www.wowhead.com/quest=14309   ("Calming the Kodo")
    [55904] = {
        name = "The Tranquilizer",
        questID = 14309,
        quest = "Calming the Kodo",
        start = "Starts from Thressa Amberglen",
    },
    -- source: https://www.wowhead.com/quest=14335   ("Chipping In")
    [55959] = {
        name = "Coven Battleaxe",
        questID = 14335,
        quest = "Chipping In",
        start = "Starts from Taiga Wisemane",
    },
    -- source: https://www.wowhead.com/quest=14342   ("Infernal Encroachment")
    [55933] = {
        name = "Darkblood Dagger",
        questID = 14342,
        quest = "Infernal Encroachment",
        start = "Starts from Felgur Twocuts",
    },
    -- source: https://www.wowhead.com/quest=14394   ("Death to Agogridon")
    [55916] = {
        name = "Soulstar Mace",
        questID = 14394,
        quest = "Death to Agogridon",
        start = "Starts from Khan Leh'Prah",
    },
    -- source: https://www.wowhead.com/quest=14452   ("Rite of Strength")
    [57231] = {
        name = "Red Ceremonial Dagger",
        questID = 14452,
        quest = "Rite of Strength",
        start = "Starts from Grull Hawkwind",
    },
    -- source: https://www.wowhead.com/quest=14456   ("Rite of Courage")
    [57224] = {
        name = "Longstalker's Rifle",
        questID = 14456,
        quest = "Rite of Courage",
        start = "Starts from Adana Thunderhorn",
    },
    -- source: https://www.wowhead.com/quest=14486   ("Handling the Goods")
    [53411] = {
        name = "Eldarath Staff",
        questID = 14486,
        quest = "Handling the Goods",
        start = "Starts from Tora Halotrix",
    },
    -- source: https://www.wowhead.com/quest=14491   ("The Restless Earth")
    [57233] = {
        name = "Worn Ceremonial Tomahawk",
        questID = 14491,
        quest = "The Restless Earth",
        start = "Starts from Ahmo Thunderhorn",
    },
    -- source: https://www.wowhead.com/quest=24449   ("Shore Leave")
    [53403] = {
        name = "Bedlam Gun",
        questID = 24449,
        quest = "Shore Leave",
        start = "Starts from Captain Tork",
    },
    -- source: https://www.wowhead.com/quest=24456   ("Thunderhorn Cleansing")
    [57226] = {
        name = "Touch of Dawn",
        questID = 24456,
        quest = "Thunderhorn Cleansing",
        start = "Starts from Mull Thunderhorn",
    },
    -- source: https://www.wowhead.com/quest=24540   ("War Dance")
    [57239] = {
        name = "Sunwalker's Stunner",
        questID = 24540,
        quest = "War Dance",
        start = "Starts from Baine Bloodhoof",
    },
    [57241] = {
        name = "Dreamwalking Staff",
        questID = 24540,
        quest = "War Dance",
        start = "Starts from Baine Bloodhoof",
    },
    -- source: https://www.wowhead.com/quest=24569   ("Siegebreaker")
    [53238] = {
        name = "Groady Goblin Wand",
        questID = 24569,
        quest = "Siegebreaker",
        start = "Starts from Warlord Bloodhilt",
    },
    -- source: https://www.wowhead.com/quest=24591   ("Changing of the Gar'dul")
    [53243] = {
        name = "Loose Cannon",
        questID = 24591,
        quest = "Changing of the Gar'dul",
        start = "Starts from Warlord Gar'dul",
    },
    -- source: https://www.wowhead.com/quest=24593   ("Neither Human Nor Beast")
    [52942] = {
        name = "Staff of Earned Tranquility",
        questID = 24593,
        quest = "Neither Human Nor Beast",
        start = "Starts from Lord Darius Crowley",
    },
    [66439] = {
        name = "Cry of the Wolf",
        questID = 24593,
        quest = "Neither Human Nor Beast",
        start = "Starts from Lord Darius Crowley",
    },
    [66876] = {
        name = "Sharp Edge of Balance",
        questID = 24593,
        quest = "Neither Human Nor Beast",
        start = "Starts from Lord Darius Crowley",
    },
    -- source: https://www.wowhead.com/quest=24621   ("Smarts-is-Smarts")
    [53246] = {
        name = "Neurosurgeon's Tool",
        questID = 24621,
        quest = "Smarts-is-Smarts",
        start = "Starts from Calder Gray",
    },
    -- source: https://www.wowhead.com/quest=24631   ("Flightmare")
    [53259] = {
        name = "Tomusa's Sword",
        questID = 24631,
        quest = "Flightmare",
        start = "Starts from Tomusa",
    },
    -- source: https://www.wowhead.com/quest=24637   ("The Butcher of Taurajo")
    [53256] = {
        name = "Taurajo Butcher's Blade",
        questID = 24637,
        quest = "The Butcher of Taurajo",
        start = "Starts from Warlord Bloodhilt",
    },
    -- source: https://www.wowhead.com/quest=24642   ("Proving Pit")
    [52876] = {
        name = "Darkspear Battle Axe",
        questID = 24642,
        quest = "Proving Pit",
        start = "Starts from Nortet",
    },
    -- source: https://www.wowhead.com/quest=24674   ("Slaves to No One")
    [54991] = {
        name = "Marcus' Pickaxe",
        questID = 24674,
        quest = "Slaves to No One",
        start = "Starts from Marcus",
    },
    -- source: https://www.wowhead.com/quest=24681   ("They Have Allies, But So Do We")
    [55012] = {
        name = "Night Elven Bow",
        questID = 24681,
        quest = "They Have Allies, But So Do We",
        start = "Starts from Lord Darius Crowley",
    },
    -- source: https://www.wowhead.com/quest=24697   ("How to Make Meat Fresh Again")
    [53563] = {
        name = "Stegodon Tusk Mace",
        questID = 24697,
        quest = "How to Make Meat Fresh Again",
        start = "Starts from Nolen Tacker",
    },
    -- source: https://www.wowhead.com/quest=24707   ("The Ballad of Maximillian")
    [53599] = {
        name = "Sword of Northshire",
        questID = 24707,
        quest = "The Ballad of Maximillian",
        start = "Starts from Maximillian of Northshire",
    },
    -- source: https://www.wowhead.com/quest=24719   ("Claws of White")
    [53559] = {
        name = "White Bone Rod",
        questID = 24719,
        quest = "Claws of White",
        start = "Starts from Garl Stormclaw",
    },
    -- source: https://www.wowhead.com/quest=24744   ("The Biggest Egg Ever")
    [52951] = {
        name = "Chicken Chopper",
        questID = 24744,
        quest = "The Biggest Egg Ever",
        start = "Starts from Hobart Grapplehammer",
    },
    -- source: https://www.wowhead.com/quest=24780   ("Proving Pit")
    [52872] = {
        name = "Darkspear Hunter's Bow",
        questID = 24780,
        quest = "Proving Pit",
        start = "Starts from Ortezza",
    },
    -- source: https://www.wowhead.com/quest=24817   ("A Goblin in Shark's Clothing")
    [52952] = {
        name = "The Hammer",
        questID = 24817,
        quest = "A Goblin in Shark's Clothing",
        start = "Starts from Assistant Greely",
    },
    -- source: https://www.wowhead.com/quest=24855   ("Aberrant Flora")
    [53569] = {
        name = "Confiscated Poacher's Gun",
        questID = 24855,
        quest = "Aberrant Flora",
        start = "Starts from Ithis Moonwarden",
    },
    -- source: https://www.wowhead.com/quest=25944   ("Girding Our Loins")
    [59807] = {
        name = "Legionnaire Nazgrim's Hacker",
        questID = 25944,
        quest = "Girding Our Loins",
        start = "Starts from Legionnaire Nazgrim",
    },
    -- source: https://www.wowhead.com/quest=25992   ("Hopelessly Gearless")
    [59743] = {
        name = "Beakless Polearm",
        questID = 25992,
        quest = "Hopelessly Gearless",
        start = "Starts from Captain Vilethorn",
    },
    -- source: https://www.wowhead.com/quest=26008   ("Decompression")
    [59771] = {
        name = "Breathstone-Infused Longbow",
        questID = 26008,
        quest = "Decompression",
        start = "Starts from Moanah Stormhoof",
    },
    -- source: https://www.wowhead.com/quest=26024   ("Wanted! Marez Cowl")
    [59182] = {
        name = "Syndicate Dagger",
        questID = 26024,
        quest = "Wanted! Marez Cowl",
        start = "Starts from Wanted Board",
    },
    -- source: https://www.wowhead.com/quest=26029   ("The Real Threat")
    [59187] = {
        name = "Silent Huntress",
        questID = 26029,
        quest = "The Real Threat",
        start = "Starts from Deathstalker Maudria",
    },
    -- source: https://www.wowhead.com/quest=26038   ("Attack on the Tower")
    [59159] = {
        name = "Highland Mace",
        questID = 26038,
        quest = "Attack on the Tower",
        start = "Starts from Apprentice Kryten",
    },
    [59163] = {
        name = "Craig's Steel",
        questID = 26038,
        quest = "Attack on the Tower",
        start = "Starts from Apprentice Kryten",
    },
    -- source: https://www.wowhead.com/quest=26051   ("Sunken Treasure")
    [59200] = {
        name = "Decalcified Elven Spear",
        questID = 26051,
        quest = "Sunken Treasure",
        start = "Starts from Doctor Draxlegauge",
    },
    -- source: https://www.wowhead.com/quest=26055   ("Drowned Sorrows")
    [59205] = {
        name = "Folly's Spar",
        questID = 26055,
        quest = "Drowned Sorrows",
        start = "Starts from Captain Steelgut",
    },
    -- source: https://www.wowhead.com/quest=26063   ("The Queen and Her Court")
    [57492] = {
        name = "Talongrip Dagger",
        questID = 26063,
        quest = "The Queen and Her Court",
        start = "Starts from Darn Talongrip",
    },
    -- source: https://www.wowhead.com/quest=26068   ("Kobold Fury!")
    [57508] = {
        name = "Devo's Handaxe",
        questID = 26068,
        quest = "Kobold Fury!",
        start = "Starts from Subjugator Devo",
    },
    -- source: https://www.wowhead.com/quest=26070   ("Clearing the Defiled")
    [59623] = {
        name = "Trench-Stalker Shotgun",
        questID = 26070,
        quest = "Clearing the Defiled",
        start = "Starts from Captain Taylor",
    },
    -- source: https://www.wowhead.com/quest=26076   ("Spy Infestation")
    [57498] = {
        name = "Bow of Invisible Aim",
        questID = 26076,
        quest = "Spy Infestation",
        start = "Starts from Jibbly Rakit",
    },
    -- source: https://www.wowhead.com/quest=26082   ("To Battlescar!")
    [57494] = {
        name = "Rampaging Staff",
        questID = 26082,
        quest = "To Battlescar!",
        start = "Starts from General Grebo",
    },
    [57497] = {
        name = "Grebo's Crossbow",
        questID = 26082,
        quest = "To Battlescar!",
        start = "Starts from General Grebo",
    },
    -- source: https://www.wowhead.com/quest=26108   ("Guile of the Raptor")
    [59204] = {
        name = "Hammerfall Mace",
        questID = 26108,
        quest = "Guile of the Raptor",
        start = "Starts from Gor'mul",
    },
    -- source: https://www.wowhead.com/quest=26118   ("Seize the Ambassador")
    [57584] = {
        name = "Battleaxe of the Sober Dwarf",
        questID = 26118,
        quest = "Seize the Ambassador",
        start = "Starts from Moira Thaurissan",
    },
    [57585] = {
        name = "Ambassador's Duplicitous Dagger",
        questID = 26118,
        quest = "Seize the Ambassador",
        start = "Starts from Moira Thaurissan",
    },
    -- source: https://www.wowhead.com/quest=26146   ("In Defense of the King's Lands")
    [58984] = {
        name = "Stonesplinter Staff",
        questID = 26146,
        quest = "In Defense of the King's Lands",
        start = "Starts from Captain Rugelfuss",
    },
    -- source: https://www.wowhead.com/quest=26197   ("The Future of Gnomeregan")
    [59042] = {
        name = "Electro-Staff",
        questID = 26197,
        quest = "The Future of Gnomeregan",
        start = "Starts from Nevin Twistwrench",
    },
    -- source: https://www.wowhead.com/quest=26199   ("The Future of Gnomeregan")
    [59040] = {
        name = "Staff of the Force",
        questID = 26199,
        quest = "The Future of Gnomeregan",
        start = "Starts from Nevin Twistwrench",
    },
    -- source: https://www.wowhead.com/quest=26206   ("The Future of Gnomeregan")
    [59043] = {
        name = "Death Star",
        questID = 26206,
        quest = "The Future of Gnomeregan",
        start = "Starts from Nevin Twistwrench",
    },
    -- source: https://www.wowhead.com/quest=26254   ("Some Spraining to Do")
    [61493] = {
        name = "Questioning Axe",
        questID = 26254,
        quest = "Some Spraining to Do",
        start = "Starts from Stormcaller Mylra",
    },
    -- source: https://www.wowhead.com/quest=26288   ("Jango Spothide")
    [58918] = {
        name = "Mystic Riverpaw Wand",
        questID = 26288,
        quest = "Jango Spothide",
        start = "Starts from Captain Danuvin",
    },
    -- source: https://www.wowhead.com/quest=26305   ("Saving Yenniku")
    [61100] = {
        name = "Stone Etcher",
        questID = 26305,
        quest = "Saving Yenniku",
        start = "Starts from Kin'weelay",
    },
    -- source: https://www.wowhead.com/quest=26322   ("Rise of the Brotherhood")
    [58927] = {
        name = "House Wrynn Dagger",
        questID = 26322,
        quest = "Rise of the Brotherhood",
        start = "Starts from Marshal Gryan Stoutmantle",
    },
    [58928] = {
        name = "House Wrynn Halberd",
        questID = 26322,
        quest = "Rise of the Brotherhood",
        start = "Starts from Marshal Gryan Stoutmantle",
    },
    [58929] = {
        name = "House Wrynn Crossbow",
        questID = 26322,
        quest = "Rise of the Brotherhood",
        start = "Starts from Marshal Gryan Stoutmantle",
    },
    [58930] = {
        name = "House Wrynn Staff",
        questID = 26322,
        quest = "Rise of the Brotherhood",
        start = "Starts from Marshal Gryan Stoutmantle",
    },
    [58931] = {
        name = "House Wrynn Claymore",
        questID = 26322,
        quest = "Rise of the Brotherhood",
        start = "Starts from Marshal Gryan Stoutmantle",
    },
    -- source: https://www.wowhead.com/quest=26418   ("The Shell of Shadra")
    [59305] = {
        name = "Greataxe of the Hinterlands",
        questID = 26418,
        quest = "The Shell of Shadra",
        start = "Starts from Darkcleric Marnal",
    },
    -- source: https://www.wowhead.com/quest=26428   ("To Steal From Thieves")
    [59158] = {
        name = "Craig's Steel",
        questID = 26428,
        quest = "To Steal From Thieves",
        start = "Starts from Genavie Callow",
    },
    [59164] = {
        name = "Grim Mace",
        questID = 26428,
        quest = "To Steal From Thieves",
        start = "Starts from Genavie Callow",
    },
    -- source: https://www.wowhead.com/quest=26434   ("Primal Reagents of Power")
    [61529] = {
        name = "Hideaway Staff",
        questID = 26434,
        quest = "Primal Reagents of Power",
        start = "Starts from Flem Gizzix",
    },
    -- source: https://www.wowhead.com/quest=26511   ("Lake Everstill Clean Up")
    [60697] = {
        name = "Indiscriminate Wand",
        questID = 26511,
        quest = "Lake Everstill Clean Up",
        start = "Starts from Bailiff Conacher",
    },
    -- source: https://www.wowhead.com/quest=26516   ("It's Ours Now")
    [59246] = {
        name = "Blood Drinker Staff",
        questID = 26516,
        quest = "It's Ours Now",
        start = "Starts from Doran Steelwing",
    },
    -- source: https://www.wowhead.com/quest=26520   ("Saving Foreman Oslow")
    [60700] = {
        name = "Solomon's Gavel",
        questID = 26520,
        quest = "Saving Foreman Oslow",
        start = "Starts from Ettin Control Orb",
    },
    [60702] = {
        name = "Sword of the Falling Sky",
        questID = 26520,
        quest = "Saving Foreman Oslow",
        start = "Starts from Ettin Control Orb",
    },
    -- source: https://www.wowhead.com/quest=26521   ("Faces of Evil")
    [59249] = {
        name = "Vile Branch",
        questID = 26521,
        quest = "Faces of Evil",
        start = "Starts from Fraggar Thundermantle",
    },
    -- source: https://www.wowhead.com/quest=26526   ("Hunt the Keeper")
    [59256] = {
        name = "Unkeeper Blade",
        questID = 26526,
        quest = "Hunt the Keeper",
        start = "Starts from Fraggar Thundermantle",
    },
    -- source: https://www.wowhead.com/quest=26546   ("Razorbeak Friends")
    [59238] = {
        name = "Talon Axe",
        questID = 26546,
        quest = "Razorbeak Friends",
        start = "Starts from Gryphon Master Talonaxe",
    },
    -- source: https://www.wowhead.com/quest=26575   ("Rock Bottom")
    [61422] = {
        name = "Basilisk Eye Wand",
        questID = 26575,
        quest = "Rock Bottom",
        start = "Starts from Kor the Immovable",
    },
    -- source: https://www.wowhead.com/quest=26612   ("Details of the Attack")
    [61576] = {
        name = "Pirate's Musket",
        questID = 26612,
        quest = "Details of the Attack",
        start = "Starts from Baron Revilgaz",
    },
    -- source: https://www.wowhead.com/quest=26621   ("Insurrection")
    [63889] = {
        name = "Shackle-Shatter Wand",
        questID = 26621,
        quest = "Insurrection",
        start = "Starts from Zaela",
    },
    -- source: https://www.wowhead.com/quest=26648   ("Our Mortal Enemies")
    [61600] = {
        name = "Mortal Naginata",
        questID = 26648,
        quest = "Our Mortal Enemies",
        start = "Starts from \\\"Dead-Eye\\\" Drederick McGumm",
    },
    -- source: https://www.wowhead.com/quest=26664   ("Making Mutiny")
    [61614] = {
        name = "Supposed Mace",
        questID = 26664,
        quest = "Making Mutiny",
        start = "Starts from Captain Stillwater's Charts",
    },
    [61616] = {
        name = "Accusing Finger",
        questID = 26664,
        quest = "Making Mutiny",
        start = "Starts from Captain Stillwater's Charts",
    },
    -- source: https://www.wowhead.com/quest=26670   ("Roland's Doom")
    [60914] = {
        name = "Exorcist's Wand",
        questID = 26670,
        quest = "Roland's Doom",
        start = "Starts from Clerk Daltry",
    },
    -- source: https://www.wowhead.com/quest=26699   ("Turning the Brashtide")
    [61620] = {
        name = "Revilgaz's Cutlass",
        questID = 26699,
        quest = "Turning the Brashtide",
        start = "Starts from Fleet Master Seahorn",
    },
    -- source: https://www.wowhead.com/quest=26707   ("A Deadly Vine")
    [60924] = {
        name = "Corpseweed Sickle",
        questID = 26707,
        quest = "A Deadly Vine",
        start = "Starts from Apprentice Fess",
    },
    -- source: https://www.wowhead.com/quest=26726   ("Triumphant Return")
    [60727] = {
        name = "Keeshan's Bow",
        questID = 26726,
        quest = "Triumphant Return",
        start = "Starts from Colonel Troteman",
    },
    -- source: https://www.wowhead.com/quest=26731   ("The Altar of Naias")
    [61059] = {
        name = "Emerine's Blade",
        questID = 26731,
        quest = "The Altar of Naias",
        start = "Starts from Emerine Junis",
    },
    -- source: https://www.wowhead.com/quest=26797   ("A Daughter's Love")
    [60937] = {
        name = "Restored Archeus",
        questID = 26797,
        quest = "A Daughter's Love",
        start = "Starts from Watcher Ladimore",
    },
    -- source: https://www.wowhead.com/quest=26822   ("Good-Fer-Nothin' Slither-Dogs")
    [61526] = {
        name = "Staff of First Occurrences",
        questID = 26822,
        quest = "Good-Fer-Nothin' Slither-Dogs",
        start = "Starts from Goris",
    },
    -- source: https://www.wowhead.com/quest=26931   ("Foxes and Hounds")
    [62163] = {
        name = "Fox Hunter's Rifle",
        questID = 26931,
        quest = "Foxes and Hounds",
        start = "Starts from Shadow Priestess Vandis",
    },
    -- source: https://www.wowhead.com/quest=26938   ("Combat Training")
    [62185] = {
        name = "Zombie Shotgun",
        questID = 26938,
        quest = "Combat Training",
        start = "Starts from Lindsay Ravensun",
    },
    -- source: https://www.wowhead.com/quest=26971   ("The Binding")
    [61402] = {
        name = "Riftrent Waraxe",
        questID = 26971,
        quest = "The Binding",
        start = "Starts from Earthcaller Torunscar",
    },
    [61403] = {
        name = "Spire of Defiance",
        questID = 26971,
        quest = "The Binding",
        start = "Starts from Earthcaller Torunscar",
    },
    [61404] = {
        name = "Blacksoul Polearm",
        questID = 26971,
        quest = "The Binding",
        start = "Starts from Earthcaller Torunscar",
    },
    -- source: https://www.wowhead.com/quest=26989   ("The Gilneas Liberation Front")
    [62838] = {
        name = "Nub's Wand",
        questID = 26989,
        quest = "The Gilneas Liberation Front",
        start = "Starts from Grand Executor Mortuus",
    },
    -- source: https://www.wowhead.com/quest=27001   ("This Means WAR (Wild Arachnid Roundup)")
    [62178] = {
        name = "Spider Splatter Mace",
        questID = 27001,
        quest = "This Means WAR (Wild Arachnid Roundup)",
        start = "Starts from Nathaniel Dumah",
    },
    [62179] = {
        name = "Spider Frier",
        questID = 27001,
        quest = "This Means WAR (Wild Arachnid Roundup)",
        start = "Starts from Nathaniel Dumah",
    },
    -- source: https://www.wowhead.com/quest=27055   ("Students of Krastinov")
    [62199] = {
        name = "Malicia's Scepter",
        questID = 27055,
        quest = "Students of Krastinov",
        start = "Starts from Field Agent Kaartish",
    },
    [62201] = {
        name = "Kaartish's Sword",
        questID = 27055,
        quest = "Students of Krastinov",
        start = "Starts from Field Agent Kaartish",
    },
    -- source: https://www.wowhead.com/quest=27068   ("Chief Ukorz Sandscalp")
    [65979] = {
        name = "Staff of the Unknown Road",
        questID = 27068,
        quest = "Chief Ukorz Sandscalp",
        start = "Starts from Mazoga's Spirit",
    },
    -- source: https://www.wowhead.com/quest=27099   ("No Escape")
    [62857] = {
        name = "Staff of the Formidable Opponent",
        questID = 27099,
        quest = "No Escape",
        start = "Starts from Lady Sylvanas Windrunner",
    },
    -- source: https://www.wowhead.com/quest=27104   ("Alzzin the Wildshaper")
    [65972] = {
        name = "Warpwood Bow",
        questID = 27104,
        quest = "Alzzin the Wildshaper",
        start = "Starts from Furgus Warpwood",
    },
    -- source: https://www.wowhead.com/quest=27111   ("The Treasure of the Shen'dralar")
    [65924] = {
        name = "Shen'dralar Trident",
        questID = 27111,
        quest = "The Treasure of the Shen'dralar",
        start = "Starts from Shen'dralar Ancient",
    },
    [65949] = {
        name = "Dire Maul",
        questID = 27111,
        quest = "The Treasure of the Shen'dralar",
        start = "Starts from Shen'dralar Ancient",
    },
    [65973] = {
        name = "Grimm's Cigar Cutter",
        questID = 27111,
        quest = "The Treasure of the Shen'dralar",
        start = "Starts from Shen'dralar Ancient",
    },
    [65994] = {
        name = "Staff of Athen'a",
        questID = 27111,
        quest = "The Treasure of the Shen'dralar",
        start = "Starts from Shen'dralar Ancient",
    },
    -- source: https://www.wowhead.com/quest=27125   ("King of the Gordok")
    [65997] = {
        name = "Tribute Gun",
        questID = 27125,
        quest = "King of the Gordok",
        start = "Starts from Druid of the Talon",
    },
    -- source: https://www.wowhead.com/quest=27128   ("King of the Gordok")
    [66043] = {
        name = "Tribute Gun",
        questID = 27128,
        quest = "King of the Gordok",
        start = "Starts from Stonemaul Ogre",
    },
    -- source: https://www.wowhead.com/quest=27144   ("The Reckoning")
    [62223] = {
        name = "Dagger of Andorhal",
        questID = 27144,
        quest = "The Reckoning",
        start = "Starts from Lady Sylvanas Windrunner",
    },
    -- source: https://www.wowhead.com/quest=27167   ("A Mighty Hunger")
    [62159] = {
        name = "Bear Hunter's Rifle",
        questID = 27167,
        quest = "A Mighty Hunger",
        start = "Starts from Thurman Grant",
    },
    -- source: https://www.wowhead.com/quest=27174   ("Combat Training")
    [62181] = {
        name = "Zombie Shotgun",
        questID = 27174,
        quest = "Combat Training",
        start = "Starts from Thurman Grant",
    },
    -- source: https://www.wowhead.com/quest=27195   ("Nowhere to Run")
    [62856] = {
        name = "Underestimated Crossbow",
        questID = 27195,
        quest = "Nowhere to Run",
        start = "Starts from Master Forteski",
    },
    -- source: https://www.wowhead.com/quest=27202   ("Brother Against Brother")
    [62213] = {
        name = "Minuteman Pike",
        questID = 27202,
        quest = "Brother Against Brother",
        start = "Starts from Thurman Grant",
    },
    -- source: https://www.wowhead.com/quest=27206   ("Alas, Andorhal")
    [62218] = {
        name = "Chillwind Dagger",
        questID = 27206,
        quest = "Alas, Andorhal",
        start = "Starts from Thassarian",
    },
    [62219] = {
        name = "Chillwind Staff",
        questID = 27206,
        quest = "Alas, Andorhal",
        start = "Starts from Thassarian",
    },
    -- source: https://www.wowhead.com/quest=27208   ("The Dreadlord Balnazzar")
    [65953] = {
        name = "Dathrohan's Mace",
        questID = 27208,
        quest = "The Dreadlord Balnazzar",
        start = "Starts from Crusade Commander Eligor Dawnbringer",
    },
    -- source: https://www.wowhead.com/quest=27328   ("Grimtotem Chiefs: The Chief of Chiefs")
    [63637] = {
        name = "Lasting Peace",
        questID = 27328,
        quest = "Grimtotem Chiefs: The Chief of Chiefs",
        start = "Starts from Freewind Brave",
    },
    -- source: https://www.wowhead.com/quest=27329   ("Invoking the Serpent")
    [63640] = {
        name = "Windsong Rifle",
        questID = 27329,
        quest = "Invoking the Serpent",
        start = "Starts from Lakota Windsong",
    },
    -- source: https://www.wowhead.com/quest=27330   ("Invoking the Serpent")
    [63644] = {
        name = "Windsong Rifle",
        questID = 27330,
        quest = "Invoking the Serpent",
        start = "Starts from Lakota Windsong",
    },
    -- source: https://www.wowhead.com/quest=27337   ("A Fitting Weapon")
    [65492] = {
        name = "Broadsword of the Crown",
        questID = 27337,
        quest = "A Fitting Weapon",
        start = "Starts from Ander Germaine",
    },
    [65493] = {
        name = "Greatsword of the Crown",
        questID = 27337,
        quest = "A Fitting Weapon",
        start = "Starts from Ander Germaine",
    },
    -- source: https://www.wowhead.com/quest=27343   ("The Hand of the Light")
    [65475] = {
        name = "Mace of the Order",
        questID = 27343,
        quest = "The Hand of the Light",
        start = "Starts from Lord Grayson Shadowbreaker",
    },
    [65476] = {
        name = "Gavel of the Order",
        questID = 27343,
        quest = "The Hand of the Light",
        start = "Starts from Lord Grayson Shadowbreaker",
    },
    [65477] = {
        name = "Warhammer of the Order",
        questID = 27343,
        quest = "The Hand of the Light",
        start = "Starts from Lord Grayson Shadowbreaker",
    },
    -- source: https://www.wowhead.com/quest=27351   ("A Royal Reward")
    [65486] = {
        name = "SI:7 Special Issue Dagger",
        questID = 27351,
        quest = "A Royal Reward",
        start = "Starts from Lord Tony Romano",
    },
    -- source: https://www.wowhead.com/quest=27353   ("Blessings of the Elements")
    [65489] = {
        name = "Spell Axe of the Farseer",
        questID = 27353,
        quest = "Blessings of the Elements",
        start = "Starts from Farseer Umbrua",
    },
    -- source: https://www.wowhead.com/quest=27354   ("Mastering the Arcane")
    [65467] = {
        name = "Staff of the Royal Wizard",
        questID = 27354,
        quest = "Mastering the Arcane",
        start = "Starts from Maginor Dumas",
    },
    -- source: https://www.wowhead.com/quest=27355   ("A Boon for the Powerful")
    [65496] = {
        name = "Staff of Justified Sins",
        questID = 27355,
        quest = "A Boon for the Powerful",
        start = "Starts from Demisette Cloyce",
    },
    -- source: https://www.wowhead.com/quest=27356   ("The Circle's Future")
    [65462] = {
        name = "Staff of the Verdant Circle",
        questID = 27356,
        quest = "The Circle's Future",
        start = "Starts from Loganaar",
    },
    -- source: https://www.wowhead.com/quest=27360   ("Vengeance for Our Soldiers")
    [62869] = {
        name = "Submariner Killer",
        questID = 27360,
        quest = "Vengeance for Our Soldiers",
        start = "Starts from Captain Rutsak",
    },
    -- source: https://www.wowhead.com/quest=27361   ("Favored of the Light")
    [65482] = {
        name = "Staff of the Hallowed",
        questID = 27361,
        quest = "Favored of the Light",
        start = "Starts from High Priestess Laurena",
    },
    -- source: https://www.wowhead.com/quest=27362   ("Favored of Elune")
    [65483] = {
        name = "Moon Staff of Elune",
        questID = 27362,
        quest = "Favored of Elune",
        start = "Starts from Tyrande Whisperwind",
    },
    -- source: https://www.wowhead.com/quest=27365   ("A Fitting Weapon")
    [65494] = {
        name = "Broadaxe of the Horde",
        questID = 27365,
        quest = "A Fitting Weapon",
        start = "Starts from Grezz Ragefist",
    },
    [65495] = {
        name = "Greataxe of the Horde",
        questID = 27365,
        quest = "A Fitting Weapon",
        start = "Starts from Grezz Ragefist",
    },
    -- source: https://www.wowhead.com/quest=27366   ("Landgrab")
    [63892] = {
        name = "Beach-Sweeper Wand",
        questID = 27366,
        quest = "Landgrab",
        start = "Starts from Lieutenant Emry",
    },
    -- source: https://www.wowhead.com/quest=27391   ("Hidden Treasures")
    [62960] = {
        name = "Brightening Wand",
        questID = 27391,
        quest = "Hidden Treasures",
        start = "Starts from Pamela Redpath",
    },
    -- source: https://www.wowhead.com/quest=27395   ("A Marksman's Weapon")
    [65466] = {
        name = "Bow of the Great Hunter",
        questID = 27395,
        quest = "A Marksman's Weapon",
        start = "Starts from Ormak Grimshot",
    },
    -- source: https://www.wowhead.com/quest=27396   ("Blade of the Shattered Hand")
    [65487] = {
        name = "Blade of the Shattered Hand",
        questID = 27396,
        quest = "Blade of the Shattered Hand",
        start = "Starts from Gordul",
    },
    -- source: https://www.wowhead.com/quest=27397   ("Hretar's Task")
    [65490] = {
        name = "Battleaxe of the Speaker",
        questID = 27397,
        quest = "Hretar's Task",
        start = "Starts from Kardris Dreamseeker",
    },
    [65491] = {
        name = "Spell Axe of the Speaker",
        questID = 27397,
        quest = "Hretar's Task",
        start = "Starts from Kardris Dreamseeker",
    },
    -- source: https://www.wowhead.com/quest=27400   ("Mastering the Arcane")
    [65468] = {
        name = "Staff of the Arcane Path",
        questID = 27400,
        quest = "Mastering the Arcane",
        start = "Starts from Ureda",
    },
    -- source: https://www.wowhead.com/quest=27402   ("Token of Power")
    [65497] = {
        name = "Staff of the Left Hand Path",
        questID = 27402,
        quest = "Token of Power",
        start = "Starts from Zevrist",
    },
    -- source: https://www.wowhead.com/quest=27403   ("A True Sunwalker")
    [65472] = {
        name = "Mace of the Sunwalker",
        questID = 27403,
        quest = "A True Sunwalker",
        start = "Starts from Sunwalker Atohmo",
    },
    [65473] = {
        name = "Battlehammer of the Sunwalker",
        questID = 27403,
        quest = "A True Sunwalker",
        start = "Starts from Sunwalker Atohmo",
    },
    [65474] = {
        name = "Greatsword of the Sunwalker",
        questID = 27403,
        quest = "A True Sunwalker",
        start = "Starts from Sunwalker Atohmo",
    },
    -- source: https://www.wowhead.com/quest=27404   ("The Circle's Future")
    [65464] = {
        name = "Staff of the Verdant Circle",
        questID = 27404,
        quest = "The Circle's Future",
        start = "Starts from Loganaar",
    },
    -- source: https://www.wowhead.com/quest=27434   ("The Adept's Path")
    [65469] = {
        name = "Morningstar of the Order",
        questID = 27434,
        quest = "The Adept's Path",
        start = "Starts from Master Pyreanor",
    },
    [65470] = {
        name = "Battlemace of the Order",
        questID = 27434,
        quest = "The Adept's Path",
        start = "Starts from Master Pyreanor",
    },
    [65471] = {
        name = "Greatmace of the Order",
        questID = 27434,
        quest = "The Adept's Path",
        start = "Starts from Master Pyreanor",
    },
    -- source: https://www.wowhead.com/quest=27436   ("A Seer's Staff")
    [65485] = {
        name = "Shadow-Walker Staff",
        questID = 27436,
        quest = "A Seer's Staff",
        start = "Starts from Shadow-Walker Zuru",
    },
    -- source: https://www.wowhead.com/quest=27437   ("Forsaken Faith")
    [65479] = {
        name = "Staff of Forsaken Faith",
        questID = 27437,
        quest = "Forsaken Faith",
        start = "Starts from Dark Cleric Cecille",
    },
    -- source: https://www.wowhead.com/quest=27454   ("Just a Drop in the Bucket")
    [62975] = {
        name = "Plaguefix Launcher",
        questID = 27454,
        quest = "Just a Drop in the Bucket",
        start = "Starts from Betina Bigglezink",
    },
    -- source: https://www.wowhead.com/quest=27478   ("Relios the Relic Keeper")
    [62875] = {
        name = "Betrayal's Sting",
        questID = 27478,
        quest = "Relios the Relic Keeper",
        start = "Starts from Dalar Dawnweaver",
    },
    [62878] = {
        name = "Codex Breaker",
        questID = 27478,
        quest = "Relios the Relic Keeper",
        start = "Starts from Dalar Dawnweaver",
    },
    -- source: https://www.wowhead.com/quest=27483   ("Practical Vengeance")
    [62879] = {
        name = "Psychopathic Hatchet",
        questID = 27483,
        quest = "Practical Vengeance",
        start = "Starts from Dalar Dawnweaver",
    },
    [62880] = {
        name = "Axe of Practical Vengeance",
        questID = 27483,
        quest = "Practical Vengeance",
        start = "Starts from Dalar Dawnweaver",
    },
    -- source: https://www.wowhead.com/quest=27539   ("Add 'em to the Pile")
    [63011] = {
        name = "Stinking Skull Mace",
        questID = 27539,
        quest = "Add 'em to the Pile",
        start = "Starts from Crusader Kevin Frost",
    },
    -- source: https://www.wowhead.com/quest=27632   ("Tanotep's Son")
    [65795] = {
        name = "Vir'naal Guardsman's Axe",
        questID = 27632,
        quest = "Tanotep's Son",
        start = "Starts from Vizier Tanotep",
    },
    -- source: https://www.wowhead.com/quest=27652   ("Dark Assassins")
    [63739] = {
        name = "Silenced Blunderbuss",
        questID = 27652,
        quest = "Dark Assassins",
        start = "Starts from Master Mathias Shaw",
    },
    -- source: https://www.wowhead.com/quest=27653   ("Dark Assassins")
    [63736] = {
        name = "Muffled Blunderbuss",
        questID = 27653,
        quest = "Dark Assassins",
        start = "Starts from Garona Halforcen",
    },
    -- source: https://www.wowhead.com/quest=27715   ("The Day that Deathwing Came: What Really Happened")
    [63191] = {
        name = "Martek's Knife",
        questID = 27715,
        quest = "The Day that Deathwing Came: What Really Happened",
        start = "Starts from Martek the Exiled",
    },
    [63193] = {
        name = "Theldurin's Fist",
        questID = 27715,
        quest = "The Day that Deathwing Came: What Really Happened",
        start = "Starts from Martek the Exiled",
    },
    -- source: https://www.wowhead.com/quest=27755   ("The Curse of the Tombs")
    [65844] = {
        name = "Tombbreaker Mace",
        questID = 27755,
        quest = "The Curse of the Tombs",
        start = "Starts from Sun Prophet Tumet",
    },
    -- source: https://www.wowhead.com/quest=27789   ("Troggish Troubles")
    [63180] = {
        name = "Blam Blam Gun",
        questID = 27789,
        quest = "Troggish Troubles",
        start = "Starts from Dr. Hieronymus Blam",
    },
    -- source: https://www.wowhead.com/quest=27790   ("The Defias Kingpin")
    [65935] = {
        name = "Cookie's Meat Mallet",
        questID = 27790,
        quest = "The Defias Kingpin",
        start = "Starts from Lieutenant Horatio Laine",
    },
    -- source: https://www.wowhead.com/quest=27794   ("Return to Blam")
    [63174] = {
        name = "Watcher's Spear",
        questID = 27794,
        quest = "Return to Blam",
        start = "Starts from Trove of the Watchers",
    },
    -- source: https://www.wowhead.com/quest=27795   ("Tides of Darkness")
    [64604] = {
        name = "Sword of Marshtide Watch",
        questID = 27795,
        quest = "Tides of Darkness",
        start = "Starts from Joanna Blueheart",
    },
    -- source: https://www.wowhead.com/quest=27833   ("Half-Ton Holdouts")
    [63199] = {
        name = "Storm's Bow",
        questID = 27833,
        quest = "Half-Ton Holdouts",
        start = "Starts from Terrance Storm",
    },
    -- source: https://www.wowhead.com/quest=27849   ("Assault on Stonard")
    [64623] = {
        name = "Surgical Striker",
        questID = 27849,
        quest = "Assault on Stonard",
        start = "Starts from Joanna Blueheart",
    },
    -- source: https://www.wowhead.com/quest=27854   ("Tides of Darkness")
    [64625] = {
        name = "Knight Tapper",
        questID = 27854,
        quest = "Tides of Darkness",
        start = "Starts from Dispatch Commander Ruag",
    },
    [64632] = {
        name = "Ogre Mage Staff",
        questID = 27854,
        quest = "Tides of Darkness",
        start = "Starts from Dispatch Commander Ruag",
    },
    [64634] = {
        name = "Bloodmire Crossbow",
        questID = 27854,
        quest = "Tides of Darkness",
        start = "Starts from Dispatch Commander Ruag",
    },
    -- source: https://www.wowhead.com/quest=27857   ("We're Under Attack!")
    [64636] = {
        name = "Defender's Thrust",
        questID = 27857,
        quest = "We're Under Attack!",
        start = "Starts from Dispatch Commander Ruag",
    },
    -- source: https://www.wowhead.com/quest=27868   ("The Crucible of Carnage: The Twilight Terror!")
    [63788] = {
        name = "Calder's Coated Carrion Carver",
        questID = 27868,
        quest = "The Crucible of Carnage: The Twilight Terror!",
        start = "Starts from Gurgthock",
    },
    [63789] = {
        name = "Very Manly Staff",
        questID = 27868,
        quest = "The Crucible of Carnage: The Twilight Terror!",
        start = "Starts from Gurgthock",
    },
    [63790] = {
        name = "Gurgthock's Garish Gorebat",
        questID = 27868,
        quest = "The Crucible of Carnage: The Twilight Terror!",
        start = "Starts from Gurgthock",
    },
    [63791] = {
        name = "Big Bendy Blasting Bow",
        questID = 27868,
        quest = "The Crucible of Carnage: The Twilight Terror!",
        start = "Starts from Gurgthock",
    },
    [63792] = {
        name = "Laquered Lung-Leak Longknife",
        questID = 27868,
        quest = "The Crucible of Carnage: The Twilight Terror!",
        start = "Starts from Gurgthock",
    },
    -- source: https://www.wowhead.com/quest=27888   ("Return to Blam")
    [63177] = {
        name = "Watcher's Spear",
        questID = 27888,
        quest = "Return to Blam",
        start = "Starts from Trove of the Watchers",
    },
    -- source: https://www.wowhead.com/quest=27995   ("Dance for Ruumbo!")
    [65318] = {
        name = "Ruumbo's Arm",
        questID = 27995,
        quest = "Dance for Ruumbo!",
        start = "Starts from Totem of Ruumbo",
    },
    -- source: https://www.wowhead.com/quest=28030   ("They Build a Better Bullet")
    [63227] = {
        name = "Dark Iron Gun",
        questID = 28030,
        quest = "They Build a Better Bullet",
        start = "Starts from Mountain-Lord Rendan",
    },
    -- source: https://www.wowhead.com/quest=28048   ("That Smart One's Gotta Go")
    [63621] = {
        name = "Ice Cream Churner",
        questID = 28048,
        quest = "That Smart One's Gotta Go",
        start = "Starts from Brivelthwerp",
    },
    -- source: https://www.wowhead.com/quest=28049   ("See the Invisible")
    [65334] = {
        name = "Impsy's Wand",
        questID = 28049,
        quest = "See the Invisible",
        start = "Starts from Impsy",
    },
    -- source: https://www.wowhead.com/quest=28056   ("Rise, Obsidion")
    [63237] = {
        name = "Sootsmoke Wand",
        questID = 28056,
        quest = "Rise, Obsidion",
        start = "Starts from Mountain-Lord Rendan",
    },
    -- source: https://www.wowhead.com/quest=28105   ("Kavem the Callous")
    [65821] = {
        name = "Pearl-Handled Long Gun",
        questID = 28105,
        quest = "Kavem the Callous",
        start = "Starts from Prince Nadun",
    },
    -- source: https://www.wowhead.com/quest=28128   ("The Inner Circle")
    [65280] = {
        name = "Shadow Hold Mace",
        questID = 28128,
        quest = "The Inner Circle",
        start = "Starts from Jessir Moonbow",
    },
    [65300] = {
        name = "Moonbow",
        questID = 28128,
        quest = "The Inner Circle",
        start = "Starts from Jessir Moonbow",
    },
    -- source: https://www.wowhead.com/quest=28133   ("Fury Unbound")
    [63799] = {
        name = "Mace of the Gullet",
        questID = 28133,
        quest = "Fury Unbound",
        start = "Starts from Zaela",
    },
    [63803] = {
        name = "Torth-Slayer's Staff",
        questID = 28133,
        quest = "Fury Unbound",
        start = "Starts from Zaela",
    },
    -- source: https://www.wowhead.com/quest=28155   ("Lord Banehollow")
    [65302] = {
        name = "Farlus' Staff",
        questID = 28155,
        quest = "Lord Banehollow",
        start = "Starts from Andalar Shadevale",
    },
    -- source: https://www.wowhead.com/quest=28189   ("Do the Right Thing")
    [65667] = {
        name = "Shovel of Mercy",
        questID = 28189,
        quest = "Do the Right Thing",
        start = "Starts from Shovel",
    },
    -- source: https://www.wowhead.com/quest=28194   ("The Great Escape")
    [65851] = {
        name = "Officer's Formal Baton",
        questID = 28194,
        quest = "The Great Escape",
        start = "Starts from Prolific Writer",
    },
    -- source: https://www.wowhead.com/quest=28197   ("Discretion is Key")
    [65672] = {
        name = "Crossbow of the Twice-Slain",
        questID = 28197,
        quest = "Discretion is Key",
        start = "Starts from Warden Stillwater",
    },
    -- source: https://www.wowhead.com/quest=28228   ("Rejoining the Forest")
    [65287] = {
        name = "Gifted Bough",
        questID = 28228,
        quest = "Rejoining the Forest",
        start = "Starts from Flourishing Protector",
    },
    -- source: https://www.wowhead.com/quest=28237   ("A Blight Upon the Land")
    [65675] = {
        name = "Stillwater's Dagger",
        questID = 28237,
        quest = "A Blight Upon the Land",
        start = "Starts from Master Apothecary Lydon",
    },
    -- source: https://www.wowhead.com/quest=28277   ("Salhet the Tactician")
    [65830] = {
        name = "Salhet's Ornate Dagger",
        questID = 28277,
        quest = "Salhet the Tactician",
        start = "Starts from Salhet",
    },
    -- source: https://www.wowhead.com/quest=28282   ("Narkrall, The Drake-Tamer")
    [63804] = {
        name = "Dragonscorn Mace",
        questID = 28282,
        quest = "Narkrall, The Drake-Tamer",
        start = "Starts from Colin Thundermar",
    },
    -- source: https://www.wowhead.com/quest=28333   ("It's Time to Oil Up")
    [65350] = {
        name = "Efficiency Spell Mace",
        questID = 28333,
        quest = "It's Time to Oil Up",
        start = "Starts from Darla Drilldozer",
    },
    -- source: https://www.wowhead.com/quest=28382   ("Enemy at our Roots")
    [65328] = {
        name = "Talon Branch",
        questID = 28382,
        quest = "Enemy at our Roots",
        start = "Starts from Denmother Ulrica",
    },
    -- source: https://www.wowhead.com/quest=28417   ("Done Nothing Wrong")
    [64498] = {
        name = "Whelp Keeper's Staff",
        questID = 28417,
        quest = "Done Nothing Wrong",
        start = "Starts from Mouton Flamestar",
    },
    -- source: https://www.wowhead.com/quest=28419   ("Stocking Up")
    [64502] = {
        name = "Sharp Scorpid Barb",
        questID = 28419,
        quest = "Stocking Up",
        start = "Starts from Ariok",
    },
    -- source: https://www.wowhead.com/quest=28426   ("Chiselgrip, the Heart of the Steppes")
    [64514] = {
        name = "Oreknuckle Gun",
        questID = 28426,
        quest = "Chiselgrip, the Heart of the Steppes",
        start = "Starts from Ariok",
    },
    -- source: https://www.wowhead.com/quest=28441   ("Enough Damage For One Day")
    [64539] = {
        name = "Kubit's Dagger",
        questID = 28441,
        quest = "Enough Damage For One Day",
        start = "Starts from Eitrigg",
    },
    -- source: https://www.wowhead.com/quest=28489   ("Stagwiches")
    [65681] = {
        name = "Stagwich Slicer",
        questID = 28489,
        quest = "Stagwiches",
        start = "Starts from Derak Nightfall",
    },
    -- source: https://www.wowhead.com/quest=28513   ("Pride of the Highborne")
    [67160] = {
        name = "Dagger of Suffering",
        questID = 28513,
        quest = "Pride of the Highborne",
        start = "Starts from Kaldorei Spirit",
    },
    -- source: https://www.wowhead.com/quest=28519   ("Pain of the Blood Elves")
    [67161] = {
        name = "Dagger of Wretched Spectres",
        questID = 28519,
        quest = "Pain of the Blood Elves",
        start = "Starts from Sin'dorei Spirit",
    },
    [67178] = {
        name = "Blade of Wretched Spirits",
        questID = 28519,
        quest = "Pain of the Blood Elves",
        start = "Starts from Sin'dorei Spirit",
    },
    [67195] = {
        name = "Mace of the Sin'dorei Spirit",
        questID = 28519,
        quest = "Pain of the Blood Elves",
        start = "Starts from Sin'dorei Spirit",
    },
    -- source: https://www.wowhead.com/quest=28604   ("Deception and Trickery")
    [65722] = {
        name = "Lilith's Wand",
        questID = 28604,
        quest = "Deception and Trickery",
        start = "Starts from Lilith",
    },
    -- source: https://www.wowhead.com/quest=28628   ("Ice Delivery")
    [67164] = {
        name = "Lilith the Lithe's Little Hammer",
        questID = 28628,
        quest = "Ice Delivery",
        start = "Starts from Deez Rocksnitch",
    },
    [67181] = {
        name = "Kilram's Killer",
        questID = 28628,
        quest = "Ice Delivery",
        start = "Starts from Deez Rocksnitch",
    },
    [67198] = {
        name = "Scourgebane's Sword",
        questID = 28628,
        quest = "Ice Delivery",
        start = "Starts from Deez Rocksnitch",
    },
    [67214] = {
        name = "Scourgebane's Slicer",
        questID = 28628,
        quest = "Ice Delivery",
        start = "Starts from Deez Rocksnitch",
    },
    -- source: https://www.wowhead.com/quest=28639   ("Ursius")
    [67224] = {
        name = "Morcott's Bow",
        questID = 28639,
        quest = "Ursius",
        start = "Starts from Francis Morcott",
    },
    -- source: https://www.wowhead.com/quest=28647   ("The Durnholde Challenge: D-1000")
    [65687] = {
        name = "Axe of the Judgment Day",
        questID = 28647,
        quest = "The Durnholde Challenge: D-1000",
        start = "Starts from Captain Jekyll",
    },
    [65707] = {
        name = "Discontinuer's Hammer",
        questID = 28647,
        quest = "The Durnholde Challenge: D-1000",
        start = "Starts from Captain Jekyll",
    },
    -- source: https://www.wowhead.com/quest=28722   ("Yetiphobia")
    [67223] = {
        name = "Umi's Masterful Shooter",
        questID = 28722,
        quest = "Yetiphobia",
        start = "Starts from Umi Rumplesnicker",
    },
    -- source: https://www.wowhead.com/quest=28748   ("Lawn of the Dead")
    [65689] = {
        name = "Brazie's Plant Light",
        questID = 28748,
        quest = "Lawn of the Dead",
        start = "Starts from Brazie the Botanist",
    },
    -- source: https://www.wowhead.com/quest=28842   ("Umbranse's Deliverance")
    [67222] = {
        name = "Umbranse's Staff",
        questID = 28842,
        quest = "Umbranse's Deliverance",
        start = "Starts from Haleh",
    },
    -- source: https://www.wowhead.com/quest=29094   ("The Short Way Home")
    [69223] = {
        name = "Emergency Hatchet",
        questID = 29094,
        quest = "The Short Way Home",
        start = "Starts from Sputtervalve",
    },
    -- source: https://www.wowhead.com/quest=29112   ("Demon Seed")
    [69219] = {
        name = "Sacrificial Blade",
        questID = 29112,
        quest = "Demon Seed",
        start = "Starts from Balgor Whipshank",
    },
    -- source: https://www.wowhead.com/quest=29186   ("The Hex Lord's Fetish")
    [69596] = {
        name = "Voodoo Hunting Bow",
        questID = 29186,
        quest = "The Hex Lord's Fetish",
        start = "Starts from Witch Doctor T'wansi",
    },
    -- source: https://www.wowhead.com/quest=29239   ("Nordrassil's Bough")
    [71084] = {
        name = "Branch of Nordrassil",
        questID = 29239,
        quest = "Nordrassil's Bough",
        start = "Starts from Kalecgos",
    },
    -- source: https://www.wowhead.com/quest=29285   ("Alignment")
    [71085] = {
        name = "Runestaff of Nordrassil",
        questID = 29285,
        quest = "Alignment",
        start = "Starts from Kalecgos",
    },
    -- source: https://www.wowhead.com/quest=30096   ("Murozond")
    [72873] = {
        name = "Bronze Blaster",
        questID = 30096,
        quest = "Murozond",
        start = "Starts from Nozdormu",
    },
    -- source: https://www.wowhead.com/quest=30097   ("Archival Purposes")
    [72871] = {
        name = "Crescent Wand",
        questID = 30097,
        quest = "Archival Purposes",
        start = "Starts from Alurmi",
    },
    -- source: https://www.wowhead.com/quest=30101   ("The Path to the Dragon Soul")
    [72876] = {
        name = "Ironfeather Longbow",
        questID = 30101,
        quest = "The Path to the Dragon Soul",
        start = "Starts from Nozdormu",
    },
    -- source: https://www.wowhead.com/quest=30106   ("The Deed is Done")
    [77945] = {
        name = "Fear",
        questID = 30106,
        quest = "The Deed is Done",
        start = "Starts from Zazzo Twinklefingers",
    },
    [77946] = {
        name = "Vengeance",
        questID = 30106,
        quest = "The Deed is Done",
        start = "Starts from Zazzo Twinklefingers",
    },
    -- source: https://www.wowhead.com/quest=30113   ("Victory in the Depths")
    [77947] = {
        name = "The Sleeper",
        questID = 30113,
        quest = "Victory in the Depths",
        start = "Starts from Zazzo Twinklefingers",
    },
    [77948] = {
        name = "The Dreamer",
        questID = 30113,
        quest = "Victory in the Depths",
        start = "Starts from Zazzo Twinklefingers",
    },
    -- source: https://www.wowhead.com/quest=30118   ("Patricide")
    [77949] = {
        name = "Golad, Twilight of Aspects",
        questID = 30118,
        quest = "Patricide",
        start = "Starts from Wrathion",
    },
    [77950] = {
        name = "Tiriosh, Nightmare of Ages",
        questID = 30118,
        quest = "Patricide",
        start = "Starts from Wrathion",
    },

    ------------------------------------------------------------
    -- MISTS OF PANDARIA
    ------------------------------------------------------------
    -- source: https://www.wowhead.com/quest=31161   ("Proving Pit")
    [85574] = {
        name = "Darkspear Monk's Staff",
        questID = 31161,
        quest = "Proving Pit",
        start = "Starts from Zabrax",
    },
    -- source: https://www.wowhead.com/quest=31179   ("The Scent of Blood")
    [84096] = {
        name = "Bloodseeker's Mace",
        questID = 31179,
        quest = "The Scent of Blood",
        start = "Starts from Skeer the Bloodseeker",
    },
    [84099] = {
        name = "Saltscale Dagger",
        questID = 31179,
        quest = "The Scent of Blood",
        start = "Starts from Skeer the Bloodseeker",
    },
    [84100] = {
        name = "Jaws of the Wakener",
        questID = 31179,
        quest = "The Scent of Blood",
        start = "Starts from Skeer the Bloodseeker",
    },
    -- source: https://www.wowhead.com/quest=31732   ("Unleash Hell")
    [90374] = {
        name = "Sully's Hotwiring Knife",
        questID = 31732,
        quest = "Unleash Hell",
        start = "Starts from Sky Admiral Rogers",
    },
    [90375] = {
        name = "Airship Marine's Sharpshooter",
        questID = 31732,
        quest = "Unleash Hell",
        start = "Starts from Sky Admiral Rogers",
    },
    [90376] = {
        name = "Barricade-Breaker Cudgel",
        questID = 31732,
        quest = "Unleash Hell",
        start = "Starts from Sky Admiral Rogers",
    },
    [90378] = {
        name = "Staff of the Skymagi",
        questID = 31732,
        quest = "Unleash Hell",
        start = "Starts from Sky Admiral Rogers",
    },
    [90379] = {
        name = "Mystic Perpetual Motion Mace",
        questID = 31732,
        quest = "Unleash Hell",
        start = "Starts from Sky Admiral Rogers",
    },
    -- source: https://www.wowhead.com/quest=31765   ("Paint it Red!")
    [90322] = {
        name = "Parachute Cord Slicer",
        questID = 31765,
        quest = "Paint it Red!",
        start = "Starts from General Nazgrim",
    },
    [90323] = {
        name = "Spare Gunship Cannon",
        questID = 31765,
        quest = "Paint it Red!",
        start = "Starts from General Nazgrim",
    },
    [90324] = {
        name = "Land Claimer's Cudgel",
        questID = 31765,
        quest = "Paint it Red!",
        start = "Starts from General Nazgrim",
    },
    [90325] = {
        name = "Staff of the Mist Navigator",
        questID = 31765,
        quest = "Paint it Red!",
        start = "Starts from General Nazgrim",
    },
    [90326] = {
        name = "Staff of Rolling Thunder",
        questID = 31765,
        quest = "Paint it Red!",
        start = "Starts from General Nazgrim",
    },
    -- source: https://www.wowhead.com/quest=31834   ("Begin Your Training: Master Cheng")
    [89553] = {
        name = "Aspirant's Staff of Grace",
        questID = 31834,
        quest = "Begin Your Training: Master Cheng",
        start = "Starts from Master Hight",
    },
    -- source: https://www.wowhead.com/quest=31839   ("Continue Your Training: Master Hsu")
    [89577] = {
        name = "Bladed Staff of the Summit's Breeze",
        questID = 31839,
        quest = "Continue Your Training: Master Hsu",
        start = "Starts from Master Hight",
    },
    -- source: https://www.wowhead.com/quest=31944   ("Complete Your Training: The Final Test")
    [90011] = {
        name = "Staff of the White Tigerlord",
        questID = 31944,
        quest = "Complete Your Training: The Final Test",
        start = "Starts from Master Hight",
    },

    ------------------------------------------------------------
    -- WARLORDS OF DRAENOR
    ------------------------------------------------------------
    -- source: https://www.wowhead.com/quest=13842   ("Dread Head Redemption")
    [119325] = {
        name = "Bow of Ire",
        questID = 13842,
        quest = "Dread Head Redemption",
        start = "Starts from Eitrigg",
    },
    -- source: https://www.wowhead.com/quest=32792   ("Leave Nothing Behind!")
    [117508] = {
        name = "Frostwolf Logsplitter",
        questID = 32792,
        quest = "Leave Nothing Behind!",
        start = "Starts from Ga'nar",
    },
    -- source: https://www.wowhead.com/quest=33010   ("The Iron Wolf")
    [111909] = {
        name = "Bow of the Iron Wolf",
        questID = 33010,
        quest = "The Iron Wolf",
        start = "Starts from Durotan",
    },
    [111911] = {
        name = "Thunderlord Hunting Spear",
        questID = 33010,
        quest = "The Iron Wolf",
        start = "Starts from Durotan",
    },
    [111913] = {
        name = "Thunderlord War Spear",
        questID = 33010,
        quest = "The Iron Wolf",
        start = "Starts from Durotan",
    },
    [111915] = {
        name = "Thunderlord Skull Crusher",
        questID = 33010,
        quest = "The Iron Wolf",
        start = "Starts from Durotan",
    },
    -- source: https://www.wowhead.com/quest=33837   ("Darkness Falls")
    [113169] = {
        name = "Rangari Initiate Longbow",
        questID = 33837,
        quest = "Darkness Falls",
        start = "Starts from Prophet Velen",
    },
    [113170] = {
        name = "Karabor Starsinger Staff",
        questID = 33837,
        quest = "Darkness Falls",
        start = "Starts from Prophet Velen",
    },
    -- source: https://www.wowhead.com/quest=33976   ("The Final Piece")
    [113044] = {
        name = "Telmor Soupriest Staff",
        questID = 33976,
        quest = "The Final Piece",
        start = "Starts from Restalaan",
    },
    [113048] = {
        name = "Vorpil's Ribcrusher",
        questID = 33976,
        quest = "The Final Piece",
        start = "Starts from Restalaan",
    },
    -- source: https://www.wowhead.com/quest=34393   ("The Portal's Power")
    [112388] = {
        name = "Iron Horde Tomahawk",
        questID = 34393,
        quest = "The Portal's Power",
        start = "Starts from Archmage Khadgar",
    },
    [112392] = {
        name = "Iron Horde Ritual Staff",
        questID = 34393,
        quest = "The Portal's Power",
        start = "Starts from Archmage Khadgar",
    },
    -- source: https://www.wowhead.com/quest=35128   ("Fair Warning")
    [118025] = {
        name = "Ogron Slayer's Ankleslicer",
        questID = 35128,
        quest = "Fair Warning",
        start = "Starts from Rexxar",
    },
    [118028] = {
        name = "Ogron Slayer's Greatstaff",
        questID = 35128,
        quest = "Fair Warning",
        start = "Starts from Rexxar",
    },
    [118029] = {
        name = "Ogron Slayer's Club",
        questID = 35128,
        quest = "Fair Warning",
        start = "Starts from Rexxar",
    },
    -- source: https://www.wowhead.com/quest=35704   ("When All Is Aligned")
    [114904] = {
        name = "Talon Guard Wingsmasher",
        questID = 35704,
        quest = "When All Is Aligned",
        start = "Starts from Reshad",
    },
    [114905] = {
        name = "Talon Guard Bow",
        questID = 35704,
        quest = "When All Is Aligned",
        start = "Starts from Reshad",
    },
    [114906] = {
        name = "Talon Guard Dagger",
        questID = 35704,
        quest = "When All Is Aligned",
        start = "Starts from Reshad",
    },
    [114909] = {
        name = "Talon Guard Staff",
        questID = 35704,
        quest = "When All Is Aligned",
        start = "Starts from Reshad",
    },

    ------------------------------------------------------------
    -- LEGION
    ------------------------------------------------------------
    -- source: https://www.wowhead.com/quest=46   ("Bounty on Murlocs")
    [156980] = {
        name = "Solid Wooden Club",
        questID = 46,
        quest = "Bounty on Murlocs",
        start = "Starts from Bounty Board",
    },
    [156981] = {
        name = "Field Tested Spear",
        questID = 46,
        quest = "Bounty on Murlocs",
        start = "Starts from Bounty Board",
    },
    -- source: https://www.wowhead.com/quest=835   ("Securing the Lines")
    [133693] = {
        name = "Jagged Wing Slasher",
        questID = 835,
        quest = "Securing the Lines",
        start = "Starts from Rezlak",
    },
    -- source: https://www.wowhead.com/quest=923   ("Mossy Tumors")
    [157016] = {
        name = "Gnarled Gavel",
        questID = 923,
        quest = "Mossy Tumors",
        start = "Starts from Rellian Greenspyre",
    },
    -- source: https://www.wowhead.com/quest=935   ("The Waters of Teldrassil")
    [156992] = {
        name = "Carved Ashwood Stick",
        questID = 935,
        quest = "The Waters of Teldrassil",
        start = "Starts from Tarindrella",
    },
    -- source: https://www.wowhead.com/quest=6544   ("Torek's Assault")
    [156956] = {
        name = "Rugged Walking Staff",
        questID = 6544,
        quest = "Torek's Assault",
        start = "Starts from Torek",
    },
    -- source: https://www.wowhead.com/quest=8480   ("Lost Armaments")
    [133696] = {
        name = "Rusty Sin'dorei Stiletto",
        questID = 8480,
        quest = "Lost Armaments",
        start = "Starts from Velendris Whitemorn",
    },
    -- source: https://www.wowhead.com/quest=8483   ("The Dwarven Spy")
    [133695] = {
        name = "Short Knife",
        questID = 8483,
        quest = "The Dwarven Spy",
        start = "Starts from Aeldon Sunbrand",
    },
    -- source: https://www.wowhead.com/quest=8885   ("The Ring of Mmmrrrggglll")
    [133694] = {
        name = "Ranger's Notched Dirk",
        questID = 8885,
        quest = "The Ring of Mmmrrrggglll",
        start = "Starts from Hathvelion Sungaze",
    },
    -- source: https://www.wowhead.com/quest=9167   ("The Traitor's Destruction")
    [156941] = {
        name = "Staff of Radiance",
        questID = 9167,
        quest = "The Traitor's Destruction",
        start = "Starts from Magister Kaendris",
    },
    -- source: https://www.wowhead.com/quest=9170   ("Dar'Khan's Lieutenants")
    [156942] = {
        name = "Spiky Legbone",
        questID = 9170,
        quest = "Dar'Khan's Lieutenants",
        start = "Starts from Magister Idonis",
    },
    -- source: https://www.wowhead.com/quest=9515   ("Warlord Sriss'tiz")
    [133691] = {
        name = "Battle Tested Dirk",
        questID = 9515,
        quest = "Warlord Sriss'tiz",
        start = "Starts from Priestess Kyleen Il'dinare",
    },
    -- source: https://www.wowhead.com/quest=9634   ("Alien Predators")
    [156993] = {
        name = "Long-Reach Elekk Prod",
        questID = 9634,
        quest = "Alien Predators",
        start = "Starts from Vorkhan the Elekk Herder",
    },
    -- source: https://www.wowhead.com/quest=9667   ("Saving Princess Stillpine")
    [156994] = {
        name = "Stillpine Family Letter Opener",
        questID = 9667,
        quest = "Saving Princess Stillpine",
        start = "Starts from Princess Stillpine",
    },
    -- source: https://www.wowhead.com/quest=9752   ("Escape from Umbrafen")
    [157548] = {
        name = "Warden's Longbow",
        questID = 9752,
        quest = "Escape from Umbrafen",
        start = "Starts from Kayra Longmane",
    },
    -- source: https://www.wowhead.com/quest=10632   ("Cutting Your Teeth")
    [157549] = {
        name = "Vibro Knuckles",
        questID = 10632,
        quest = "Cutting Your Teeth",
        start = "Starts from Razak Ironsides",
    },
    -- source: https://www.wowhead.com/quest=12619   ("The Emblazoned Runeblade")
    [142320] = {
        name = "Runed Soulsaber",
        questID = 12619,
        quest = "The Emblazoned Runeblade",
        start = "Starts from Instructor Razuvious",
    },
    -- source: https://www.wowhead.com/quest=12801   ("The Light of Dawn")
    [142321] = {
        name = "Saber of the Ebon Blade",
        questID = 12801,
        quest = "The Light of Dawn",
        start = "Starts from Scourge Commander Thalanor",
    },
    -- source: https://www.wowhead.com/quest=13570   ("Remembrance of Auberdine")
    [156966] = {
        name = "Cerellean's Spellsword",
        questID = 13570,
        quest = "Remembrance of Auberdine",
        start = "Starts from Cerellean Whiteclaw",
    },
    -- source: https://www.wowhead.com/quest=13698   ("Explosives Shredding")
    [156957] = {
        name = "Shredder Piston",
        questID = 13698,
        quest = "Explosives Shredding",
        start = "Starts from Sentinel Luciel Starwhisper",
    },
    -- source: https://www.wowhead.com/quest=13730   ("Playing With Felfire")
    [156958] = {
        name = "Scepter of Questionable Decision Making",
        questID = 13730,
        quest = "Playing With Felfire",
        start = "Starts from Splintertree Demolisher",
    },
    -- source: https://www.wowhead.com/quest=14301   ("Return and Report")
    [156967] = {
        name = "Spinescale Hammer",
        questID = 14301,
        quest = "Return and Report",
        start = "Starts from Lord Hydronis",
    },
    -- source: https://www.wowhead.com/quest=14394   ("Death to Agogridon")
    [156968] = {
        name = "Kolkar Polearm",
        questID = 14394,
        quest = "Death to Agogridon",
        start = "Starts from Khan Leh'Prah",
    },
    -- source: https://www.wowhead.com/quest=24436   ("Halo Drops")
    [156943] = {
        name = "Hort's Motivator",
        questID = 24436,
        quest = "Halo Drops",
        start = "Starts from Sergeant Hort",
    },
    -- source: https://www.wowhead.com/quest=24540   ("War Dance")
    [156986] = {
        name = "Kodo Gavel",
        questID = 24540,
        quest = "War Dance",
        start = "Starts from Baine Bloodhoof",
    },
    -- source: https://www.wowhead.com/quest=24593   ("Neither Human Nor Beast")
    [133697] = {
        name = "Sharpened Wolf's Tooth",
        questID = 24593,
        quest = "Neither Human Nor Beast",
        start = "Starts from Lord Darius Crowley",
    },
    [156985] = {
        name = "Staff of Deserved Tranquility",
        questID = 24593,
        quest = "Neither Human Nor Beast",
        start = "Starts from Lord Darius Crowley",
    },
    -- source: https://www.wowhead.com/quest=24601   ("The Nightmare Scar")
    [156997] = {
        name = "Scepter of Naralex",
        questID = 24601,
        quest = "The Nightmare Scar",
        start = "Starts from Naralex",
    },
    [156998] = {
        name = "Cudgel of Naralex",
        questID = 24601,
        quest = "The Nightmare Scar",
        start = "Starts from Naralex",
    },
    -- source: https://www.wowhead.com/quest=24697   ("How to Make Meat Fresh Again")
    [156996] = {
        name = "Tailspike Pike",
        questID = 24697,
        quest = "How to Make Meat Fresh Again",
        start = "Starts from Nolen Tacker",
    },
    -- source: https://www.wowhead.com/quest=24978   ("Reaping the Reapers")
    [133700] = {
        name = "Simmer's Dirk",
        questID = 24978,
        quest = "Reaping the Reapers",
        start = "Starts from Deathguard Simmer",
    },
    [156938] = {
        name = "Simmer's Cudgel",
        questID = 24978,
        quest = "Reaping the Reapers",
        start = "Starts from Deathguard Simmer",
    },
    -- source: https://www.wowhead.com/quest=24993   ("Annihilate the Worgen")
    [156944] = {
        name = "Worgen Training Stick",
        questID = 24993,
        quest = "Annihilate the Worgen",
        start = "Starts from Executor Zygand",
    },
    -- source: https://www.wowhead.com/quest=25001   ("Sandscraper")
    [157014] = {
        name = "Dunemaul Skullcracker",
        questID = 25001,
        quest = "Sandscraper",
        start = "Starts from Megs Dreadshredder",
    },
    -- source: https://www.wowhead.com/quest=25025   ("Sang'thraze the Deflector")
    [157024] = {
        name = "Sandfury Hatchet",
        questID = 25025,
        quest = "Sang'thraze the Deflector",
        start = "Starts from Mazoga",
    },
    -- source: https://www.wowhead.com/quest=25065   ("You Too, Brute?")
    [157015] = {
        name = "Meatface's Tenderizer",
        questID = 25065,
        quest = "You Too, Brute?",
        start = "Starts from Kelsey Steelspark",
    },
    -- source: https://www.wowhead.com/quest=25173   ("From Bad to Worse")
    [156970] = {
        name = "Razor Hill Axe",
        questID = 25173,
        quest = "From Bad to Worse",
        start = "Starts from Gar'Thok",
    },
    -- source: https://www.wowhead.com/quest=25192   ("Raggaran's Fury")
    [156969] = {
        name = "Quilboar Crusher",
        questID = 25192,
        quest = "Raggaran's Fury",
        start = "Starts from Raggaran",
    },
    -- source: https://www.wowhead.com/quest=25230   ("More Than Illness")
    [156983] = {
        name = "Runetotem Slicer",
        questID = 25230,
        quest = "More Than Illness",
        start = "Starts from Konu Runetotem",
    },
    -- source: https://www.wowhead.com/quest=25391   ("Weapons of Spirit")
    [157023] = {
        name = "Power of the Forest",
        questID = 25391,
        quest = "Weapons of Spirit",
        start = "Starts from Witch Doctor Uzer'i",
    },
    -- source: https://www.wowhead.com/quest=25394   ("More Than Illness")
    [156984] = {
        name = "Windflight Knife",
        questID = 25394,
        quest = "More Than Illness",
        start = "Starts from Telaron Windflight",
    },
    -- source: https://www.wowhead.com/quest=25780   ("Assault on Menethil Keep")
    [157005] = {
        name = "Stout Fist",
        questID = 25780,
        quest = "Assault on Menethil Keep",
        start = "Starts from Captain Stoutfist",
    },
    -- source: https://www.wowhead.com/quest=25853   ("Tooling Around")
    [157026] = {
        name = "Fresh-Haft Axe",
        questID = 25853,
        quest = "Tooling Around",
        start = "Starts from Merrin Rockweaver",
    },
    -- source: https://www.wowhead.com/quest=25868   ("Yorla Darksnare")
    [157004] = {
        name = "Old Guard's Poleaxe",
        questID = 25868,
        quest = "Yorla Darksnare",
        start = "Starts from Shilah Slabchisel",
    },
    [157006] = {
        name = "Old Guard's Bow",
        questID = 25868,
        quest = "Yorla Darksnare",
        start = "Starts from Shilah Slabchisel",
    },
    -- source: https://www.wowhead.com/quest=26051   ("Sunken Treasure")
    [156948] = {
        name = "Waterlogged Elven Spear",
        questID = 26051,
        quest = "Sunken Treasure",
        start = "Starts from Doctor Draxlegauge",
    },
    -- source: https://www.wowhead.com/quest=26108   ("Guile of the Raptor")
    [156947] = {
        name = "Hammerfall Cudgel",
        questID = 26108,
        quest = "Guile of the Raptor",
        start = "Starts from Gor'mul",
    },
    [156960] = {
        name = "Hammerfall Gavel",
        questID = 26108,
        quest = "Guile of the Raptor",
        start = "Starts from Gor'mul",
    },
    -- source: https://www.wowhead.com/quest=26118   ("Seize the Ambassador")
    [133692] = {
        name = "Ambassador's Deceitful Dagger",
        questID = 26118,
        quest = "Seize the Ambassador",
        start = "Starts from Moira Thaurissan",
    },
    -- source: https://www.wowhead.com/quest=41217   ("The Future of Gnomeregan")
    [134123] = {
        name = "\\\"Reliable\\\" Boom-O-Tronic",
        questID = 41217,
        quest = "The Future of Gnomeregan",
        start = "Starts from Nevin Twistwrench",
    },
    -- source: https://www.wowhead.com/quest=42740   ("The Battle for Broken Shore")
    [136586] = {
        name = "Stormwind Vanguard Splitter",
        questID = 42740,
        quest = "The Battle for Broken Shore",
        start = "Starts from Recruiter Lee",
    },
    [138764] = {
        name = "Stormwind Vanguard Waraxe",
        questID = 42740,
        quest = "The Battle for Broken Shore",
        start = "Starts from Recruiter Lee",
    },
    [138767] = {
        name = "Stormwind Vanguard Battle Mace",
        questID = 42740,
        quest = "The Battle for Broken Shore",
        start = "Starts from Recruiter Lee",
    },
    [138768] = {
        name = "Stormwind Vanguard Quickblade",
        questID = 42740,
        quest = "The Battle for Broken Shore",
        start = "Starts from Recruiter Lee",
    },

    ------------------------------------------------------------
    -- BATTLE FOR AZEROTH
    ------------------------------------------------------------
    -- source: https://www.wowhead.com/quest=47249   ("Soulbound")
    [155347] = {
        name = "Bloodrite Headchopper",
        questID = 47249,
        quest = "Soulbound",
        start = "Starts from Bwonsamdi",
    },
    [155350] = {
        name = "Death Sworn Blade",
        questID = 47249,
        quest = "Soulbound",
        start = "Starts from Bwonsamdi",
    },
    [155365] = {
        name = "Grave Watcher's Longstaff",
        questID = 47249,
        quest = "Soulbound",
        start = "Starts from Bwonsamdi",
    },
    [155369] = {
        name = "Spooky-Mon Choppa",
        questID = 47249,
        quest = "Soulbound",
        start = "Starts from Bwonsamdi",
    },
    -- source: https://www.wowhead.com/quest=47422   ("Dire Situation")
    [159097] = {
        name = "Pa'ku-Blessed Greatbow",
        questID = 47422,
        quest = "Dire Situation",
        start = "Starts from Wardruid Loti",
    },
    [159098] = {
        name = "Wardruid's Cutter",
        questID = 47422,
        quest = "Dire Situation",
        start = "Starts from Wardruid Loti",
    },
    [159100] = {
        name = "Crimson Cultist Scepter",
        questID = 47422,
        quest = "Dire Situation",
        start = "Starts from Wardruid Loti",
    },
    [159101] = {
        name = "Loti's Favorite Longspear",
        questID = 47422,
        quest = "Dire Situation",
        start = "Starts from Wardruid Loti",
    },
    [159102] = {
        name = "Raal's Spare Hexxer",
        questID = 47422,
        quest = "Dire Situation",
        start = "Starts from Wardruid Loti",
    },
    [159103] = {
        name = "Dregada's Greatsword",
        questID = 47422,
        quest = "Dire Situation",
        start = "Starts from Wardruid Loti",
    },
    -- source: https://www.wowhead.com/quest=47528   ("Mistress of Lies")
    [159107] = {
        name = "Shadra Disciple's Hexknife",
        questID = 47528,
        quest = "Mistress of Lies",
        start = "Starts from Acolyte Mali",
    },
    -- source: https://www.wowhead.com/quest=47587   ("Headhunter Jo")
    [159115] = {
        name = "K'tal Fang Blade",
        questID = 47587,
        quest = "Headhunter Jo",
        start = "Starts from Hemet Nesingwary",
    },
    [159117] = {
        name = "Great Hunt Skullcracker",
        questID = 47587,
        quest = "Headhunter Jo",
        start = "Starts from Hemet Nesingwary",
    },
    [159119] = {
        name = "Headhunter Jo's Machete",
        questID = 47587,
        quest = "Headhunter Jo",
        start = "Starts from Hemet Nesingwary",
    },
    [159121] = {
        name = "Headhunter Jo's Longstaff",
        questID = 47587,
        quest = "Headhunter Jo",
        start = "Starts from Hemet Nesingwary",
    },
    [159122] = {
        name = "Wildtusk Ivory Headcracker",
        questID = 47587,
        quest = "Headhunter Jo",
        start = "Starts from Hemet Nesingwary",
    },
    -- source: https://www.wowhead.com/quest=47948   ("Pork Chop")
    [155127] = {
        name = "Fallhaven Hatchet",
        questID = 47948,
        quest = "Pork Chop",
        start = "Starts from Thomas Staughton",
    },
    [155128] = {
        name = "Roland's Tenderizer",
        questID = 47948,
        quest = "Pork Chop",
        start = "Starts from Thomas Staughton",
    },
    [155131] = {
        name = "Hacksaw Carving Knife",
        questID = 47948,
        quest = "Pork Chop",
        start = "Starts from Thomas Staughton",
    },
    [155136] = {
        name = "Autumnvale Long Rifle",
        questID = 47948,
        quest = "Pork Chop",
        start = "Starts from Thomas Staughton",
    },
    [155139] = {
        name = "Mad-Butcher's Mallet",
        questID = 47948,
        quest = "Pork Chop",
        start = "Starts from Thomas Staughton",
    },
    [155150] = {
        name = "Swinestained Saber",
        questID = 47948,
        quest = "Pork Chop",
        start = "Starts from Thomas Staughton",
    },
    [155153] = {
        name = "Elder Crone's Ladle",
        questID = 47948,
        quest = "Pork Chop",
        start = "Starts from Thomas Staughton",
    },
    [158641] = {
        name = "Pork-Chopper Pike",
        questID = 47948,
        quest = "Pork Chop",
        start = "Starts from Thomas Staughton",
    },
    -- source: https://www.wowhead.com/quest=48088   ("No Party Like a Trogg Party")
    [155062] = {
        name = "Stoat-Trapper's Spikefist",
        questID = 48088,
        quest = "No Party Like a Trogg Party",
        start = "Starts from Lord Aldrius Norwington",
    },
    [155070] = {
        name = "Norwington's Poleaxe",
        questID = 48088,
        quest = "No Party Like a Trogg Party",
        start = "Starts from Lord Aldrius Norwington",
    },
    [155075] = {
        name = "Lord Aldrius' Greatstaff",
        questID = 48088,
        quest = "No Party Like a Trogg Party",
        start = "Starts from Lord Aldrius Norwington",
    },
    [158294] = {
        name = "Hollowbeak Hunting Rifle",
        questID = 48088,
        quest = "No Party Like a Trogg Party",
        start = "Starts from Lord Aldrius Norwington",
    },
    -- source: https://www.wowhead.com/quest=48330   ("Zandalari Treasure Trove")
    [155431] = {
        name = "Zak'rajan's Hexmace",
        questID = 48330,
        quest = "Zandalari Treasure Trove",
        start = "Starts from Omi",
    },
    [155445] = {
        name = "Mugabu's Soulwand",
        questID = 48330,
        quest = "Zandalari Treasure Trove",
        start = "Starts from Omi",
    },
    -- source: https://www.wowhead.com/quest=48558   ("The Irontide Crew")
    [155052] = {
        name = "Port-Ruffian's Cleaver",
        questID = 48558,
        quest = "The Irontide Crew",
        start = "Starts from Flynn Fairwind",
    },
    [155063] = {
        name = "Trickshot Speargun",
        questID = 48558,
        quest = "The Irontide Crew",
        start = "Starts from Flynn Fairwind",
    },
    [155073] = {
        name = "Waverider Warstaff",
        questID = 48558,
        quest = "The Irontide Crew",
        start = "Starts from Flynn Fairwind",
    },
    [155077] = {
        name = "Ashvane Captain's Cutlass",
        questID = 48558,
        quest = "The Irontide Crew",
        start = "Starts from Flynn Fairwind",
    },
    [155080] = {
        name = "Seafury Tamer",
        questID = 48558,
        quest = "The Irontide Crew",
        start = "Starts from Flynn Fairwind",
    },
    -- source: https://www.wowhead.com/quest=49259   ("And Justice For All")
    [155148] = {
        name = "Silverwood Spire",
        questID = 49259,
        quest = "And Justice For All",
        start = "Starts from Lucille Waycrest",
    },
    [155152] = {
        name = "Witchrend Greatsword",
        questID = 49259,
        quest = "And Justice For All",
        start = "Starts from Lucille Waycrest",
    },
    [155584] = {
        name = "Crone Sticker",
        questID = 49259,
        quest = "And Justice For All",
        start = "Starts from Lucille Waycrest",
    },
    [158646] = {
        name = "Curseform Sickle",
        questID = 49259,
        quest = "And Justice For All",
        start = "Starts from Lucille Waycrest",
    },
    [158647] = {
        name = "Everit's Morning Star",
        questID = 49259,
        quest = "And Justice For All",
        start = "Starts from Lucille Waycrest",
    },
    [159536] = {
        name = "Gol Osigr Hammer",
        questID = 49259,
        quest = "And Justice For All",
        start = "Starts from Lucille Waycrest",
    },

    ------------------------------------------------------------
    -- SHADOWLANDS
    ------------------------------------------------------------
    -- source: https://www.wowhead.com/quest=57189   ("Breaking the Hopebreakers")
    [177646] = {
        name = "Vicious Dredblade",
        questID = 57189,
        quest = "Breaking the Hopebreakers",
        start = "Starts from The Accuser",
    },
    [177650] = {
        name = "Stalwart Hopebreaker's Rapier",
        questID = 57189,
        quest = "Breaking the Hopebreakers",
        start = "Starts from The Accuser",
    },
    [177651] = {
        name = "Nimble Hopebreaker's Rapier",
        questID = 57189,
        quest = "Breaking the Hopebreakers",
        start = "Starts from The Accuser",
    },
    [177652] = {
        name = "Splinterball Morningstar",
        questID = 57189,
        quest = "Breaking the Hopebreakers",
        start = "Starts from The Accuser",
    },
    -- source: https://www.wowhead.com/quest=57269   ("The Hand of Doubt")
    [176330] = {
        name = "Guidenote Crossbow",
        questID = 57269,
        quest = "The Hand of Doubt",
        start = "Starts from Disciple Kosmas",
    },
    [176332] = {
        name = "Silverchime Warglaive",
        questID = 57269,
        quest = "The Hand of Doubt",
        start = "Starts from Disciple Kosmas",
    },
    [176338] = {
        name = "Skytone Greatsword",
        questID = 57269,
        quest = "The Hand of Doubt",
        start = "Starts from Disciple Kosmas",
    },
    [176339] = {
        name = "Skytone Mallet",
        questID = 57269,
        quest = "The Hand of Doubt",
        start = "Starts from Disciple Kosmas",
    },
    [176390] = {
        name = "Silverchime Gavel",
        questID = 57269,
        quest = "The Hand of Doubt",
        start = "Starts from Disciple Kosmas",
    },
    -- source: https://www.wowhead.com/quest=57316   ("The Ladder")
    [176278] = {
        name = "Ruthless Contender's Hammer",
        questID = 57316,
        quest = "The Ladder",
        start = "Starts from Anzio the Infallible",
    },
    [176283] = {
        name = "Ruthless Contender's Claymore",
        questID = 57316,
        quest = "The Ladder",
        start = "Starts from Anzio the Infallible",
    },
    [176444] = {
        name = "Ruthless Contender's Steel",
        questID = 57316,
        quest = "The Ladder",
        start = "Starts from Anzio the Infallible",
    },
    [181529] = {
        name = "Ruthless Contender's Blade",
        questID = 57316,
        quest = "The Ladder",
        start = "Starts from Anzio the Infallible",
    },
    -- source: https://www.wowhead.com/quest=57724   ("Securing Sinfall")
    [177635] = {
        name = "Sinfall Legion Smasher",
        questID = 57724,
        quest = "Securing Sinfall",
        start = "Starts from Breakfist",
    },
    [177636] = {
        name = "Sinfall Legionaire's Barbed Staff",
        questID = 57724,
        quest = "Securing Sinfall",
        start = "Starts from Breakfist",
    },
    [177637] = {
        name = "Sinfall Arquebus",
        questID = 57724,
        quest = "Securing Sinfall",
        start = "Starts from Breakfist",
    },
    [177638] = {
        name = "Sinfall Edgemaster's Blade",
        questID = 57724,
        quest = "Securing Sinfall",
        start = "Starts from Breakfist",
    },
    [177641] = {
        name = "Sinfall Inquisitor's Dagger",
        questID = 57724,
        quest = "Securing Sinfall",
        start = "Starts from Breakfist",
    },
    [177643] = {
        name = "Sinfall Duelist's Rapier",
        questID = 57724,
        quest = "Securing Sinfall",
        start = "Starts from Breakfist",
    },
    [184320] = {
        name = "Sinfall Initiate's Staff",
        questID = 57724,
        quest = "Securing Sinfall",
        start = "Starts from Breakfist",
    },
    [184326] = {
        name = "Sinfall Stoneborn Cudgel",
        questID = 57724,
        quest = "Securing Sinfall",
        start = "Starts from Breakfist",
    },
    -- source: https://www.wowhead.com/quest=59011   ("In Death We Are Truly Tested")
    [180664] = {
        name = "Reanimated Executioner's Crusher",
        questID = 59011,
        quest = "In Death We Are Truly Tested",
        start = "Starts from Alexandros Mograine",
    },
    [180668] = {
        name = "War Scholar's Wand",
        questID = 59011,
        quest = "In Death We Are Truly Tested",
        start = "Starts from Alexandros Mograine",
    },
    [180669] = {
        name = "Reanimated Executioner's Greatsword",
        questID = 59011,
        quest = "In Death We Are Truly Tested",
        start = "Starts from Alexandros Mograine",
    },
    [180672] = {
        name = "Bonebender's Warglaive",
        questID = 59011,
        quest = "In Death We Are Truly Tested",
        start = "Starts from Alexandros Mograine",
    },
    [180673] = {
        name = "Reanimated Executioner's Sword",
        questID = 59011,
        quest = "In Death We Are Truly Tested",
        start = "Starts from Alexandros Mograine",
    },
    [180790] = {
        name = "War Scholar's Stave",
        questID = 59011,
        quest = "In Death We Are Truly Tested",
        start = "Starts from Alexandros Mograine",
    },
    [180791] = {
        name = "Reanimated Executioner's Shank",
        questID = 59011,
        quest = "In Death We Are Truly Tested",
        start = "Starts from Alexandros Mograine",
    },
    [180792] = {
        name = "War Scholar's Shortsword",
        questID = 59011,
        quest = "In Death We Are Truly Tested",
        start = "Starts from Alexandros Mograine",
    },
    -- source: https://www.wowhead.com/quest=59623   ("What a Buzzkill")
    [178030] = {
        name = "Gormstinger Warglaive",
        questID = 59623,
        quest = "What a Buzzkill",
        start = "Starts from Gormsmith Cavina",
    },
    [180474] = {
        name = "Culexwood Dagger",
        questID = 59623,
        quest = "What a Buzzkill",
        start = "Starts from Gormsmith Cavina",
    },
    -- source: https://www.wowhead.com/quest=59726   ("It's a Trap")
    [177640] = {
        name = "Sinstealer's Staff",
        questID = 59726,
        quest = "It's a Trap",
        start = "Starts from Nadjia the Mistblade",
    },
    [178053] = {
        name = "Thicket Sweeper",
        questID = 59726,
        quest = "It's a Trap",
        start = "Starts from Nadjia the Mistblade",
    },
    [178055] = {
        name = "Briarbane Glaive",
        questID = 59726,
        quest = "It's a Trap",
        start = "Starts from Nadjia the Mistblade",
    },
    [178056] = {
        name = "Stonevigil Rapier",
        questID = 59726,
        quest = "It's a Trap",
        start = "Starts from Nadjia the Mistblade",
    },
    [178057] = {
        name = "Nobleman's Quickblade",
        questID = 59726,
        quest = "It's a Trap",
        start = "Starts from Nadjia the Mistblade",
    },
    [178058] = {
        name = "Cavalier's Morningstar",
        questID = 59726,
        quest = "It's a Trap",
        start = "Starts from Nadjia the Mistblade",
    },
    [178060] = {
        name = "Briarbane Halberd",
        questID = 59726,
        quest = "It's a Trap",
        start = "Starts from Nadjia the Mistblade",
    },
    -- source: https://www.wowhead.com/quest=60277   ("WANTED: Aggregate of Doom")
    [180288] = {
        name = "Silver-Bladed Excavator",
        questID = 60277,
        quest = "WANTED: Aggregate of Doom",
        start = "Starts from Wanted: Aggregate of Doom",
    },
    -- source: https://www.wowhead.com/quest=60856   ("Toppling the Brute")
    [175983] = {
        name = "Heartwood Bow",
        questID = 60856,
        quest = "Toppling the Brute",
        start = "Starts from Ara'lon",
    },
    [175986] = {
        name = "Grove Defender's Maul",
        questID = 60856,
        quest = "Toppling the Brute",
        start = "Starts from Ara'lon",
    },
    [175988] = {
        name = "Meadow Guardian's Staff",
        questID = 60856,
        quest = "Toppling the Brute",
        start = "Starts from Ara'lon",
    },
    [175989] = {
        name = "Grove Defender's Sword",
        questID = 60856,
        quest = "Toppling the Brute",
        start = "Starts from Ara'lon",
    },
    [175992] = {
        name = "Heartwood Warglaive",
        questID = 60856,
        quest = "Toppling the Brute",
        start = "Starts from Ara'lon",
    },
    -- source: https://www.wowhead.com/quest=60886   ("The Seat of the Primus")
    [180818] = {
        name = "Bonefused Bonesaw",
        questID = 60886,
        quest = "The Seat of the Primus",
        start = "Starts from Margrave Krexus",
    },
    [180819] = {
        name = "Bonefused Crusher",
        questID = 60886,
        quest = "The Seat of the Primus",
        start = "Starts from Margrave Krexus",
    },
    [180820] = {
        name = "Bonefused Greatstaff",
        questID = 60886,
        quest = "The Seat of the Primus",
        start = "Starts from Margrave Krexus",
    },
    [180821] = {
        name = "Bonefused Warblade",
        questID = 60886,
        quest = "The Seat of the Primus",
        start = "Starts from Margrave Krexus",
    },
    [180822] = {
        name = "Bonefused Crossbow",
        questID = 60886,
        quest = "The Seat of the Primus",
        start = "Starts from Margrave Krexus",
    },
    [180823] = {
        name = "Bonefused Greatsword",
        questID = 60886,
        quest = "The Seat of the Primus",
        start = "Starts from Margrave Krexus",
    },
    [180824] = {
        name = "Bonefused Sword",
        questID = 60886,
        quest = "The Seat of the Primus",
        start = "Starts from Margrave Krexus",
    },
    [180825] = {
        name = "Bonefused Shank",
        questID = 60886,
        quest = "The Seat of the Primus",
        start = "Starts from Margrave Krexus",
    },
    [180826] = {
        name = "Bonefused Shortsword",
        questID = 60886,
        quest = "The Seat of the Primus",
        start = "Starts from Margrave Krexus",
    },
    -- source: https://www.wowhead.com/quest=62748   ("Rallying Maldraxxus")
    [181692] = {
        name = "Gorewrought Warblade",
        questID = 62748,
        quest = "Rallying Maldraxxus",
        start = "Starts from Secutor Mevix",
    },
    -- source: https://www.wowhead.com/quest=63489   ("Justice Long Overdue")
    [191604] = {
        name = "Veil-Touched Ranseur",
        questID = 63489,
        quest = "Justice Long Overdue",
        start = "Starts from Lady Liadrin",
    },
    -- source: https://www.wowhead.com/quest=63578   ("The Battle of Ardenweald")
    [179511] = {
        name = "Faesworn Glaive",
        questID = 63578,
        quest = "The Battle of Ardenweald",
        start = "Starts from Lady Moonberry",
    },
    [179515] = {
        name = "Faesworn Falchion",
        questID = 63578,
        quest = "The Battle of Ardenweald",
        start = "Starts from Lady Moonberry",
    },
    [179531] = {
        name = "Faesworn Reaper",
        questID = 63578,
        quest = "The Battle of Ardenweald",
        start = "Starts from Lady Moonberry",
    },
    [179583] = {
        name = "Faesworn Warbow",
        questID = 63578,
        quest = "The Battle of Ardenweald",
        start = "Starts from Lady Moonberry",
    },
    -- source: https://www.wowhead.com/quest=64958   ("The Forces Gather")
    [188041] = {
        name = "Ageless Spellblade",
        questID = 64958,
        quest = "The Forces Gather",
        start = "Starts from Highlord Bolvar Fordragon",
    },
    [188043] = {
        name = "Eradicator of the Eternal Guard",
        questID = 64958,
        quest = "The Forces Gather",
        start = "Starts from Highlord Bolvar Fordragon",
    },
    [188046] = {
        name = "Haven Guard's Mace",
        questID = 64958,
        quest = "The Forces Gather",
        start = "Starts from Highlord Bolvar Fordragon",
    },
    [188048] = {
        name = "Truthseeker's Staff",
        questID = 64958,
        quest = "The Forces Gather",
        start = "Starts from Highlord Bolvar Fordragon",
    },

    ------------------------------------------------------------
    -- DRAGONFLIGHT
    ------------------------------------------------------------
    -- source: https://www.wowhead.com/quest=64865   ("Gear Up")
    [193481] = {
        name = "Emblazoned Ruby Staff",
        questID = 64865,
        quest = "Gear Up",
        start = "Starts from Scalecommander Azurathel",
    },
    -- source: https://www.wowhead.com/quest=65691   ("The Shadow of His Wings")
    [194385] = {
        name = "Neltharian Channeler's Rod",
        questID = 65691,
        quest = "The Shadow of His Wings",
        start = "Starts from Ayasanth",
    },
    -- source: https://www.wowhead.com/quest=65780   ("Proving Oneself")
    [197697] = {
        name = "Ohn'ir Ritual Scepter",
        questID = 65780,
        quest = "Proving Oneself",
        start = "Starts from Scout Tomul",
    },
    [197698] = {
        name = "Mystic's Windblade",
        questID = 65780,
        quest = "Proving Oneself",
        start = "Starts from Scout Tomul",
    },
    [197706] = {
        name = "Eaglestrike Pike",
        questID = 65780,
        quest = "Proving Oneself",
        start = "Starts from Scout Tomul",
    },
    -- source: https://www.wowhead.com/quest=65873   ("Leader of the Shadepaw Pack")
    [198008] = {
        name = "Shined Iron Polearm",
        questID = 65873,
        quest = "Leader of the Shadepaw Pack",
        start = "Starts from Brena",
    },
    -- source: https://www.wowhead.com/quest=65993   ("Killjoy")
    [194373] = {
        name = "Field Explorer's Stave",
        questID = 65993,
        quest = "Killjoy",
        start = "Starts from Wrathion",
    },
    [194377] = {
        name = "Expedition Dissection Knife",
        questID = 65993,
        quest = "Killjoy",
        start = "Starts from Wrathion",
    },
    [198488] = {
        name = "Staff of Discovery",
        questID = 65993,
        quest = "Killjoy",
        start = "Starts from Wrathion",
    },
    -- source: https://www.wowhead.com/quest=66151   ("His Stone Heart")
    [198003] = {
        name = "Ornate Steel Cleaver",
        questID = 66151,
        quest = "His Stone Heart",
        start = "Starts from Radza Thunderclaw",
    },
    [198009] = {
        name = "Gleaming Bronze Blade",
        questID = 66151,
        quest = "His Stone Heart",
        start = "Starts from Radza Thunderclaw",
    },
    -- source: https://www.wowhead.com/quest=66447   ("Beyond the Barrier")
    [194376] = {
        name = "Vault Guardian's Poleaxe",
        questID = 66447,
        quest = "Beyond the Barrier",
        start = "Starts from Elementalist Taiyang",
    },
    [194393] = {
        name = "Expedition Guard's Cudgel",
        questID = 66447,
        quest = "Beyond the Barrier",
        start = "Starts from Elementalist Taiyang",
    },
    -- source: https://www.wowhead.com/quest=66464   ("The Field of Ferocity: Master of the Hunt!")
    [197677] = {
        name = "Plainswalking Stick",
        questID = 66464,
        quest = "The Field of Ferocity: Master of the Hunt!",
        start = "Starts from Gurgthock",
    },
    [197679] = {
        name = "Rockfang Uppercut",
        questID = 66464,
        quest = "The Field of Ferocity: Master of the Hunt!",
        start = "Starts from Gurgthock",
    },
    [197684] = {
        name = "Argali Shearing Blade",
        questID = 66464,
        quest = "The Field of Ferocity: Master of the Hunt!",
        start = "Starts from Gurgthock",
    },
    [197690] = {
        name = "Staff of the Windsage",
        questID = 66464,
        quest = "The Field of Ferocity: Master of the Hunt!",
        start = "Starts from Gurgthock",
    },
    [197693] = {
        name = "Shikaar Hunter's Crossbow",
        questID = 66464,
        quest = "The Field of Ferocity: Master of the Hunt!",
        start = "Starts from Gurgthock",
    },
    [197699] = {
        name = "Nokhud Skullcrusher",
        questID = 66464,
        quest = "The Field of Ferocity: Master of the Hunt!",
        start = "Starts from Gurgthock",
    },
    -- source: https://www.wowhead.com/quest=66646   ("Quelling Causalities")
    [195179] = {
        name = "Timeways Baton",
        questID = 66646,
        quest = "Quelling Causalities",
        start = "Starts from Andantenormu",
    },
    [195180] = {
        name = "Time-Woven Blade",
        questID = 66646,
        quest = "Quelling Causalities",
        start = "Starts from Andantenormu",
    },
    [195182] = {
        name = "Inexorable Separation",
        questID = 66646,
        quest = "Quelling Causalities",
        start = "Starts from Andantenormu",
    },
    [195183] = {
        name = "Reach of Years",
        questID = 66646,
        quest = "Quelling Causalities",
        start = "Starts from Andantenormu",
    },
    [195184] = {
        name = "Bronze Tower",
        questID = 66646,
        quest = "Quelling Causalities",
        start = "Starts from Andantenormu",
    },
    -- source: https://www.wowhead.com/quest=70335   ("Simple Excavation Tools")
    [198387] = {
        name = "Excavator's Mallet",
        questID = 70335,
        quest = "Simple Excavation Tools",
        start = "Starts from Rae'ana",
    },
    [198717] = {
        name = "Excavator's Punch",
        questID = 70335,
        quest = "Simple Excavation Tools",
        start = "Starts from Rae'ana",
    },
    [198718] = {
        name = "Excavator's Chisel",
        questID = 70335,
        quest = "Simple Excavation Tools",
        start = "Starts from Rae'ana",
    },
    [199746] = {
        name = "Excavator's Trowel",
        questID = 70335,
        quest = "Simple Excavation Tools",
        start = "Starts from Rae'ana",
    },
    -- source: https://www.wowhead.com/quest=70807   ("Advanced Excavation Tools")
    [194102] = {
        name = "Expedition Excavator",
        questID = 70807,
        quest = "Advanced Excavation Tools",
        start = "Starts from Rae'ana",
    },
    [194325] = {
        name = "Researcher's Magnifier",
        questID = 70807,
        quest = "Advanced Excavation Tools",
        start = "Starts from Rae'ana",
    },
    [194326] = {
        name = "Trusty Sweeper",
        questID = 70807,
        quest = "Advanced Excavation Tools",
        start = "Starts from Rae'ana",
    },
    -- source: https://www.wowhead.com/quest=70880   ("To Cook With Finery")
    [199648] = {
        name = "Dragon Dinner Fork",
        questID = 70880,
        quest = "To Cook With Finery",
        start = "Starts from Erugosa",
    },
    [200750] = {
        name = "Dragon Dinner Knife",
        questID = 70880,
        quest = "To Cook With Finery",
        start = "Starts from Erugosa",
    },
    [200751] = {
        name = "Simple Silver Dragon Goblet",
        questID = 70880,
        quest = "To Cook With Finery",
        start = "Starts from Erugosa",
    },
    [200753] = {
        name = "Simple Gold Dragon Goblet",
        questID = 70880,
        quest = "To Cook With Finery",
        start = "Starts from Erugosa",
    },
    -- source: https://www.wowhead.com/quest=70883   ("A Hand in Cultivation")
    [199647] = {
        name = "Dragon Garden Fork",
        questID = 70883,
        quest = "A Hand in Cultivation",
        start = "Starts from Unatos",
    },
    [199651] = {
        name = "Dragon Garden Hoe",
        questID = 70883,
        quest = "A Hand in Cultivation",
        start = "Starts from Unatos",
    },
    [199652] = {
        name = "Dragon Garden Rake",
        questID = 70883,
        quest = "A Hand in Cultivation",
        start = "Starts from Unatos",
    },
    [199653] = {
        name = "Dragon Garden Hand Shovel",
        questID = 70883,
        quest = "A Hand in Cultivation",
        start = "Starts from Unatos",
    },
    [199654] = {
        name = "Dragon Garden Shovel",
        questID = 70883,
        quest = "A Hand in Cultivation",
        start = "Starts from Unatos",
    },
    -- source: https://www.wowhead.com/quest=70914   ("The Breadth of Dragon Weaponry")
    [199825] = {
        name = "Valdrakken Belt Knife",
        questID = 70914,
        quest = "The Breadth of Dragon Weaponry",
        start = "Starts from Weaponsmith Koref",
    },
    -- source: https://www.wowhead.com/quest=70971   ("Arms for Every Arm")
    [199878] = {
        name = "Tuskarr Timber Splitter",
        questID = 70971,
        quest = "Arms for Every Arm",
        start = "Starts from Hanu",
    },
    [199879] = {
        name = "Tuskarr Fisherman's Dagger",
        questID = 70971,
        quest = "Arms for Every Arm",
        start = "Starts from Hanu",
    },
    [199880] = {
        name = "Tuskarr Leviathan's Hook",
        questID = 70971,
        quest = "Arms for Every Arm",
        start = "Starts from Hanu",
    },
    [199881] = {
        name = "Tuskarr Fisherman's Harpoon",
        questID = 70971,
        quest = "Arms for Every Arm",
        start = "Starts from Hanu",
    },
    [199882] = {
        name = "Tuskarr Mystic's Stave",
        questID = 70971,
        quest = "Arms for Every Arm",
        start = "Starts from Hanu",
    },
    [199883] = {
        name = "Tuskarr Sharktooth Bolt-Thrower",
        questID = 70971,
        quest = "Arms for Every Arm",
        start = "Starts from Hanu",
    },
    -- source: https://www.wowhead.com/quest=72910   ("Know Thy Enemy")
    [204454] = {
        name = "Dragon Maul",
        questID = 72910,
        quest = "Know Thy Enemy",
        start = "Starts from Sabellian",
    },
    [204459] = {
        name = "Wand of Shifting Stone",
        questID = 72910,
        quest = "Know Thy Enemy",
        start = "Starts from Sabellian",
    },
    [204620] = {
        name = "Dark Earth Glaive",
        questID = 72910,
        quest = "Know Thy Enemy",
        start = "Starts from Sabellian",
    },
    [204624] = {
        name = "Staff of the Unlit Sky",
        questID = 72910,
        quest = "Know Thy Enemy",
        start = "Starts from Sabellian",
    },
    [204625] = {
        name = "Dark Nail",
        questID = 72910,
        quest = "Know Thy Enemy",
        start = "Starts from Sabellian",
    },
    [204626] = {
        name = "Rock Shooter",
        questID = 72910,
        quest = "Know Thy Enemy",
        start = "Starts from Sabellian",
    },
    [204627] = {
        name = "Proto-Drake Ripper",
        questID = 72910,
        quest = "Know Thy Enemy",
        start = "Starts from Sabellian",
    },
    [204628] = {
        name = "Scaled Titan's Tooth",
        questID = 72910,
        quest = "Know Thy Enemy",
        start = "Starts from Sabellian",
    },
    -- source: https://www.wowhead.com/quest=72974   ("Welcome to the City of Smells")
    [204448] = {
        name = "Stone Spitter",
        questID = 72974,
        quest = "Welcome to the City of Smells",
        start = "Starts from Elder Honeypelt",
    },
    [204449] = {
        name = "Black Earth Glaive",
        questID = 72974,
        quest = "Welcome to the City of Smells",
        start = "Starts from Elder Honeypelt",
    },
    [204450] = {
        name = "Draconic Cleaver",
        questID = 72974,
        quest = "Welcome to the City of Smells",
        start = "Starts from Elder Honeypelt",
    },
    [204451] = {
        name = "Earth-Bound Saber",
        questID = 72974,
        quest = "Welcome to the City of Smells",
        start = "Starts from Elder Honeypelt",
    },
    [204452] = {
        name = "Earth Warding Spire",
        questID = 72974,
        quest = "Welcome to the City of Smells",
        start = "Starts from Elder Honeypelt",
    },
    [204453] = {
        name = "Black Dragon's Reach",
        questID = 72974,
        quest = "Welcome to the City of Smells",
        start = "Starts from Elder Honeypelt",
    },
    [204455] = {
        name = "Scaled Titan's Claw",
        questID = 72974,
        quest = "Welcome to the City of Smells",
        start = "Starts from Elder Honeypelt",
    },
    [204456] = {
        name = "Proto-Drake Slicer",
        questID = 72974,
        quest = "Welcome to the City of Smells",
        start = "Starts from Elder Honeypelt",
    },
    -- source: https://www.wowhead.com/quest=75258   ("A Final Word")
    [204084] = {
        name = "Ancestor's Might",
        questID = 75258,
        quest = "A Final Word",
        start = "Starts from Baine Bloodhoof",
    },
    -- source: https://www.wowhead.com/quest=76324   ("Lost to the Flame")
    [209924] = {
        name = "Chartreuse Champion's Warspear",
        questID = 76324,
        quest = "Lost to the Flame",
        start = "Starts from Merithra",
    },
    [209938] = {
        name = "Chartreuse Champion's Greatsword",
        questID = 76324,
        quest = "Lost to the Flame",
        start = "Starts from Merithra",
    },
    -- source: https://www.wowhead.com/quest=77193   ("The Power of Temptation")
    [206448] = {
        name = "Fyr'alath the Dreamrender",
        questID = 77193,
        quest = "The Power of Temptation",
        start = "Starts from Wrathion",
    },
    -- source: https://www.wowhead.com/quest=77906   ("De Darkspear Loa")
    [218105] = {
        name = "Loa's Blade-Blessing",
        questID = 77906,
        quest = "De Darkspear Loa",
        start = "Starts from Rokhan",
    },

    ------------------------------------------------------------
    -- THE WAR WITHIN
    ------------------------------------------------------------
    -- source: https://www.wowhead.com/quest=78383   ("Strategic Edge")
    [225363] = {
        name = "Kaheti Confiscated Sword",
        questID = 78383,
        quest = "Strategic Edge",
        start = "Starts from Flynn Fairwind",
    },
    -- source: https://www.wowhead.com/quest=78462   ("Echoes of Compassion")
    [219797] = {
        name = "Cured Terracotta Pummeler",
        questID = 78462,
        quest = "Echoes of Compassion",
        start = "Starts from Adelgonn",
    },
    -- source: https://www.wowhead.com/quest=78464   ("Delve into the Earth")
    [219784] = {
        name = "Arachnophobic Spelunker's Battlestaff",
        questID = 78464,
        quest = "Delve into the Earth",
        start = "Starts from Adelgonn",
    },
    [219785] = {
        name = "Arachnophobic Spelunker's Battleaxe",
        questID = 78464,
        quest = "Delve into the Earth",
        start = "Starts from Adelgonn",
    },
    [219786] = {
        name = "Arachnophobic Spelunker's Saber",
        questID = 78464,
        quest = "Delve into the Earth",
        start = "Starts from Adelgonn",
    },
    [219787] = {
        name = "Arachnophobic Spelunker's Striker",
        questID = 78464,
        quest = "Delve into the Earth",
        start = "Starts from Adelgonn",
    },
    [219788] = {
        name = "Arachnophobic Spelunker's Knife",
        questID = 78464,
        quest = "Delve into the Earth",
        start = "Starts from Adelgonn",
    },
    -- source: https://www.wowhead.com/quest=78895   ("A Shadow Over Gundargaz")
    [219919] = {
        name = "Blade of Hatred",
        questID = 78895,
        quest = "A Shadow Over Gundargaz",
        start = "Starts from Watcher Toki",
    },
    -- source: https://www.wowhead.com/quest=78934   ("Blades of the Arathi")
    [220507] = {
        name = "Lamplighter's Torch",
        questID = 78934,
        quest = "Blades of the Arathi",
        start = "Starts from Faerin",
    },
    [220508] = {
        name = "Lamplighter's Unlit Torch",
        questID = 78934,
        quest = "Blades of the Arathi",
        start = "Starts from Faerin",
    },
    -- source: https://www.wowhead.com/quest=79145   ("Metal and Stone")
    [223871] = {
        name = "Algari Heavy Axe",
        questID = 79145,
        quest = "Metal and Stone",
        start = "Starts from High Exarch Turalyon",
    },
    [223872] = {
        name = "Algari Mace",
        questID = 79145,
        quest = "Metal and Stone",
        start = "Starts from High Exarch Turalyon",
    },
    [223876] = {
        name = "Algari Warglaive",
        questID = 79145,
        quest = "Metal and Stone",
        start = "Starts from High Exarch Turalyon",
    },
    -- source: https://www.wowhead.com/quest=79160   ("Fishing is Good for the Soul")
    [228363] = {
        name = "Shinda's Spare Greataxe",
        questID = 79160,
        quest = "Fishing is Good for the Soul",
        start = "Starts from Shinda Creedpike",
    },
    [228365] = {
        name = "Concerned Captain's Cudgel",
        questID = 79160,
        quest = "Fishing is Good for the Soul",
        start = "Starts from Shinda Creedpike",
    },
    [228366] = {
        name = "Child's Former Fishing Rod",
        questID = 79160,
        quest = "Fishing is Good for the Soul",
        start = "Starts from Shinda Creedpike",
    },
    [228367] = {
        name = "Arathi Scout's Walking Stick",
        questID = 79160,
        quest = "Fishing is Good for the Soul",
        start = "Starts from Shinda Creedpike",
    },
    -- source: https://www.wowhead.com/quest=79328   ("Embassies and Envoys")
    [223546] = {
        name = "Algari Spear",
        questID = 79328,
        quest = "Embassies and Envoys",
        start = "Starts from Thrall",
    },
    [223548] = {
        name = "Algari Rifle",
        questID = 79328,
        quest = "Embassies and Envoys",
        start = "Starts from Thrall",
    },
    [223549] = {
        name = "Algari Greatsword",
        questID = 79328,
        quest = "Embassies and Envoys",
        start = "Starts from Thrall",
    },
    [223569] = {
        name = "Algari Spellcleaver",
        questID = 79328,
        quest = "Embassies and Envoys",
        start = "Starts from Thrall",
    },
    -- source: https://www.wowhead.com/quest=79349   ("Entrepreneur, Inc.")
    [226172] = {
        name = "Disturbance Detection Device",
        questID = 79349,
        quest = "Entrepreneur, Inc.",
        start = "Starts from Skedgit Cinderbangs",
    },
    -- source: https://www.wowhead.com/quest=82480   ("Job Killing Robot Or...")
    [225947] = {
        name = "ELIZA's Rake Attachment",
        questID = 82480,
        quest = "Job Killing Robot Or...",
        start = "Starts from Orren Masyn",
    },
    -- source: https://www.wowhead.com/quest=83150   ("Expanding the Plan")
    [232435] = {
        name = "Boreal Spellstaff",
        questID = 83150,
        quest = "Expanding the Plan",
        start = "Starts from Monte Gazlowe",
    },
    -- source: https://www.wowhead.com/quest=83153   ("Sampling Steam")
    [219458] = {
        name = "Earthen Traveler's Dagger",
        questID = 83153,
        quest = "Sampling Steam",
        start = "Starts from Machinist Kilton",
    },
    [219460] = {
        name = "Earthen Traveler's Handaxe",
        questID = 83153,
        quest = "Sampling Steam",
        start = "Starts from Machinist Kilton",
    },
    -- source: https://www.wowhead.com/quest=83207   ("My Top Gal")
    [235516] = {
        name = "The Severance Package",
        questID = 83207,
        quest = "My Top Gal",
        start = "Starts from Monte Gazlowe",
    },
    -- source: https://www.wowhead.com/quest=84963   ("Sealing the Shadows")
    [238056] = {
        name = "Entropic-Shadow Staff",
        questID = 84963,
        quest = "Sealing the Shadows",
        start = "Starts from Om'en",
    },
    [238060] = {
        name = "Entropic-Shadow Greatsword",
        questID = 84963,
        quest = "Sealing the Shadows",
        start = "Starts from Om'en",
    },
    [238062] = {
        name = "Entropic-Shadow Sharpshooter",
        questID = 84963,
        quest = "Sealing the Shadows",
        start = "Starts from Om'en",
    },
    [238066] = {
        name = "Entropic-Shadow Sword",
        questID = 84963,
        quest = "Sealing the Shadows",
        start = "Starts from Om'en",
    },
    [238262] = {
        name = "Entropic-Shadow Mace",
        questID = 84963,
        quest = "Sealing the Shadows",
        start = "Starts from Om'en",
    },
    -- source: https://www.wowhead.com/quest=84964   ("Heroes Among Shadow")
    [238188] = {
        name = "Greatsword of Unyielding Will",
        questID = 84964,
        quest = "Heroes Among Shadow",
        start = "Starts from Alleria Windrunner",
    },
    [238194] = {
        name = "Blaster of Unyielding Will",
        questID = 84964,
        quest = "Heroes Among Shadow",
        start = "Starts from Alleria Windrunner",
    },
    -- source: https://www.wowhead.com/quest=90840   ("What's Your Specialty?")
    [246462] = {
        name = "Draconic Polearm",
        questID = 90840,
        quest = "What's Your Specialty?",
        start = "Starts from Kalecgos",
    },
    -- source: https://www.wowhead.com/quest=91138   ("I am the Creator and Destroyer")
    [250082] = {
        name = "T'uure, Remnant of the Naaru",
        questID = 91138,
        quest = "I am the Creator and Destroyer",
        start = "Starts from Om'en",
    },

    ------------------------------------------------------------
    -- THE WAR WITHIN (GAP CLOSURE)
    ------------------------------------------------------------
    -- source: https://www.wowhead.com/quest=66401   ("The Dreamer")
    [257319] = {
        name = "Viridian Shortsword",
        questID = 66401,
        quest = "The Dreamer",
        start = "Starts from Merithra",
    },
    [257320] = {
        name = "Thornwood Sticker",
        questID = 66401,
        quest = "The Dreamer",
        start = "Starts from Merithra",
    },

    ------------------------------------------------------------
    -- MIDNIGHT
    ------------------------------------------------------------
    -- source: https://www.wowhead.com/quest=84964   ("Heroes Among Shadow")
    [269973] = {
        name = "Warglaive of Unyielding Will",
        questID = 84964,
        quest = "Heroes Among Shadow",
        start = "Starts from Alleria Windrunner",
    },
    -- source: https://www.wowhead.com/quest=86530   ("First, The Shells")
    [262375] = {
        name = "Darkness-Infused Polearms",
        questID = 86530,
        quest = "First, The Shells",
        start = "Starts from Lothraxion",
    },
    [262376] = {
        name = "Dagger of the Eternal Void",
        questID = 86530,
        quest = "First, The Shells",
        start = "Starts from Lothraxion",
    },
    -- source: https://www.wowhead.com/quest=86537   ("Network Insecurity")
    [262670] = {
        name = "Void-Touched Dagger",
        questID = 86537,
        quest = "Network Insecurity",
        start = "Starts from Alleria Windrunner",
    },
    [262671] = {
        name = "Warglaive of Desolation",
        questID = 86537,
        quest = "Network Insecurity",
        start = "Starts from Alleria Windrunner",
    },
    [262673] = {
        name = "Void-Touched Bow",
        questID = 86537,
        quest = "Network Insecurity",
        start = "Starts from Alleria Windrunner",
    },
    [262677] = {
        name = "Darkness Dagger",
        questID = 86537,
        quest = "Network Insecurity",
        start = "Starts from Alleria Windrunner",
    },
    [262730] = {
        name = "Axe of Desolation",
        questID = 86537,
        quest = "Network Insecurity",
        start = "Starts from Alleria Windrunner",
    },
    -- source: https://www.wowhead.com/quest=86646   ("An Impasse")
    [250470] = {
        name = "Enchanted Crypt Bow",
        questID = 86646,
        quest = "An Impasse",
        start = "Starts from Assisting Paladin",
    },
    [250471] = {
        name = "Enchanted Crypt Battlestaff",
        questID = 86646,
        quest = "An Impasse",
        start = "Starts from Assisting Paladin",
    },
    [250472] = {
        name = "Enchanted Crypt Stave",
        questID = 86646,
        quest = "An Impasse",
        start = "Starts from Assisting Paladin",
    },
    [250473] = {
        name = "Enchanted Crypt Claymore",
        questID = 86646,
        quest = "An Impasse",
        start = "Starts from Assisting Paladin",
    },
    [250474] = {
        name = "Enchanted Crypt Greatsword",
        questID = 86646,
        quest = "An Impasse",
        start = "Starts from Assisting Paladin",
    },
    -- source: https://www.wowhead.com/quest=86716   ("Armed by Light")
    [248556] = {
        name = "Stonebough Greatsword",
        questID = 86716,
        quest = "Armed by Light",
        start = "Starts from Zul'jan",
    },
    [248557] = {
        name = "Stonebough Dagger",
        questID = 86716,
        quest = "Armed by Light",
        start = "Starts from Zul'jan",
    },
    [248558] = {
        name = "Stonebough Edge",
        questID = 86716,
        quest = "Armed by Light",
        start = "Starts from Zul'jan",
    },
    [248559] = {
        name = "Stonebough Bow",
        questID = 86716,
        quest = "Armed by Light",
        start = "Starts from Zul'jan",
    },
    [248560] = {
        name = "Stonebough Blade",
        questID = 86716,
        quest = "Armed by Light",
        start = "Starts from Zul'jan",
    },
    -- source: https://www.wowhead.com/quest=86733   ("Silvermoon Negotiations")
    [248063] = {
        name = "Golden City Cleaver",
        questID = 86733,
        quest = "Silvermoon Negotiations",
        start = "Starts from Lor'themar Theron",
    },
    [248067] = {
        name = "Golden City Blade",
        questID = 86733,
        quest = "Silvermoon Negotiations",
        start = "Starts from Lor'themar Theron",
    },
    [248070] = {
        name = "Golden City Claymore",
        questID = 86733,
        quest = "Silvermoon Negotiations",
        start = "Starts from Lor'themar Theron",
    },
    [248075] = {
        name = "Golden City Staff",
        questID = 86733,
        quest = "Silvermoon Negotiations",
        start = "Starts from Lor'themar Theron",
    },
    -- source: https://www.wowhead.com/quest=86844   ("Light Repurposed")
    [251724] = {
        name = "Repurposed Scarlet Skullsplitter",
        questID = 86844,
        quest = "Light Repurposed",
        start = "Starts from Alonsus Faol",
    },
    [251725] = {
        name = "Repurposed Scarlet Axe",
        questID = 86844,
        quest = "Light Repurposed",
        start = "Starts from Alonsus Faol",
    },
    [251726] = {
        name = "Repurposed Scarlet Cleaver",
        questID = 86844,
        quest = "Light Repurposed",
        start = "Starts from Alonsus Faol",
    },
    [251727] = {
        name = "Repurposed Scarlet Sword",
        questID = 86844,
        quest = "Light Repurposed",
        start = "Starts from Alonsus Faol",
    },
    [251728] = {
        name = "Repurposed Scarlet Blade",
        questID = 86844,
        quest = "Light Repurposed",
        start = "Starts from Alonsus Faol",
    },
    [251729] = {
        name = "Repurposed Scarlet Broadsword",
        questID = 86844,
        quest = "Light Repurposed",
        start = "Starts from Alonsus Faol",
    },
    -- source: https://www.wowhead.com/quest=86848   ("Light's Arsenal")
    [251257] = {
        name = "Recovered Sanctum Stave",
        questID = 86848,
        quest = "Light's Arsenal",
        start = "Starts from Lady Liadrin",
    },
    -- source: https://www.wowhead.com/quest=86914   ("Tending to Har'mara")
    [256177] = {
        name = "Spore-Touched Staff",
        questID = 86914,
        quest = "Tending to Har'mara",
        start = "Starts from Hagar",
    },
    [256180] = {
        name = "Spore-Touched Shortbow",
        questID = 86914,
        quest = "Tending to Har'mara",
        start = "Starts from Hagar",
    },
    [256184] = {
        name = "Spore-Touched Saber",
        questID = 86914,
        quest = "Tending to Har'mara",
        start = "Starts from Hagar",
    },
    [256186] = {
        name = "Spore-Touched Mace",
        questID = 86914,
        quest = "Tending to Har'mara",
        start = "Starts from Hagar",
    },
    -- source: https://www.wowhead.com/quest=87398   ("Smuggler Showdown")
    [263447] = {
        name = "Eversong Chopper",
        questID = 87398,
        quest = "Smuggler Showdown",
        start = "Starts from Lyssara Duskmourne",
    },
    [263482] = {
        name = "Eversong Stabber",
        questID = 87398,
        quest = "Smuggler Showdown",
        start = "Starts from Lyssara Duskmourne",
    },
    -- source: https://www.wowhead.com/quest=88927   ("Awaken the Ancient Protector")
    [257234] = {
        name = "Voidbreaker's Waraxe",
        questID = 88927,
        quest = "Awaken the Ancient Protector",
        start = "Starts from Shandris Feathermoon",
    },
    [257237] = {
        name = "Voidbreaker's Longbow",
        questID = 88927,
        quest = "Awaken the Ancient Protector",
        start = "Starts from Shandris Feathermoon",
    },
    [257238] = {
        name = "Voidbreaker's Dagger",
        questID = 88927,
        quest = "Awaken the Ancient Protector",
        start = "Starts from Shandris Feathermoon",
    },
    [257249] = {
        name = "Voidbreaker's War Mace",
        questID = 88927,
        quest = "Awaken the Ancient Protector",
        start = "Starts from Shandris Feathermoon",
    },
    [257251] = {
        name = "Voidbreaker's Poleaxe",
        questID = 88927,
        quest = "Awaken the Ancient Protector",
        start = "Starts from Shandris Feathermoon",
    },
    -- source: https://www.wowhead.com/quest=88937   ("Awaken the Ancient of Lore")
    [257248] = {
        name = "Voidbreaker's Hammer",
        questID = 88937,
        quest = "Awaken the Ancient of Lore",
        start = "Starts from Shandris Feathermoon",
    },
    [257254] = {
        name = "Voidbreaker's Spike",
        questID = 88937,
        quest = "Awaken the Ancient of Lore",
        start = "Starts from Shandris Feathermoon",
    },
    [257270] = {
        name = "Voidbreaker's Blade",
        questID = 88937,
        quest = "Awaken the Ancient of Lore",
        start = "Starts from Shandris Feathermoon",
    },
    [257284] = {
        name = "Voidbreaker's Greatsword",
        questID = 88937,
        quest = "Awaken the Ancient of Lore",
        start = "Starts from Shandris Feathermoon",
    },
    -- source: https://www.wowhead.com/quest=88989   ("Another One Bites the Sawdust")
    [264450] = {
        name = "Lightwood Carver's Knife",
        questID = 88989,
        quest = "Another One Bites the Sawdust",
        start = "Starts from Woodcrafter Azai",
    },
    [264453] = {
        name = "Lightwood Rune Blade",
        questID = 88989,
        quest = "Another One Bites the Sawdust",
        start = "Starts from Woodcrafter Azai",
    },
    [264454] = {
        name = "Lightwood Forager's Saber",
        questID = 88989,
        quest = "Another One Bites the Sawdust",
        start = "Starts from Woodcrafter Azai",
    },
    -- source: https://www.wowhead.com/quest=90095   ("Echo of the Call")
    [256176] = {
        name = "Spire of Painted Memories",
        questID = 90095,
        quest = "Echo of the Call",
        start = "Starts from Zur'ashar Kassameh",
    },
    [256178] = {
        name = "Spear of Painted Memories",
        questID = 90095,
        quest = "Echo of the Call",
        start = "Starts from Zur'ashar Kassameh",
    },
    [256179] = {
        name = "Bow of Painted Memories",
        questID = 90095,
        quest = "Echo of the Call",
        start = "Starts from Zur'ashar Kassameh",
    },
    [256182] = {
        name = "Blade of Painted Memories",
        questID = 90095,
        quest = "Echo of the Call",
        start = "Starts from Zur'ashar Kassameh",
    },
    [256183] = {
        name = "Sword of Painted Memories",
        questID = 90095,
        quest = "Echo of the Call",
        start = "Starts from Zur'ashar Kassameh",
    },
    -- source: https://www.wowhead.com/quest=90509   ("The Traitors of Tranquillien")
    [248065] = {
        name = "Gavel of the Unjust",
        questID = 90509,
        quest = "The Traitors of Tranquillien",
        start = "Starts from Arator",
    },
    [248069] = {
        name = "Traitorous Acolyte's Blade",
        questID = 90509,
        quest = "The Traitors of Tranquillien",
        start = "Starts from Arator",
    },
    [248084] = {
        name = "Backstabber's Back Stabber",
        questID = 90509,
        quest = "The Traitors of Tranquillien",
        start = "Starts from Arator",
    },
    [250355] = {
        name = "Twilight Agitator's Stave",
        questID = 90509,
        quest = "The Traitors of Tranquillien",
        start = "Starts from Arator",
    },
    [250356] = {
        name = "Treasonous Ranger's Longbow",
        questID = 90509,
        quest = "The Traitors of Tranquillien",
        start = "Starts from Arator",
    },
    -- source: https://www.wowhead.com/quest=90924   ("The Wicked End")
    [264425] = {
        name = "Voidformed Cleaver",
        questID = 90924,
        quest = "The Wicked End",
        start = "Starts from Decimus",
    },
    [264427] = {
        name = "Voidformed Poker",
        questID = 90924,
        quest = "The Wicked End",
        start = "Starts from Decimus",
    },
    [264428] = {
        name = "Voidformed Shooter",
        questID = 90924,
        quest = "The Wicked End",
        start = "Starts from Decimus",
    },
    [264429] = {
        name = "Voidformed Slasher",
        questID = 90924,
        quest = "The Wicked End",
        start = "Starts from Decimus",
    },
    -- source: https://www.wowhead.com/quest=91887   ("Dominion of Deceit")
    [264415] = {
        name = "Voidcaster's Bow",
        questID = 91887,
        quest = "Dominion of Deceit",
        start = "Starts from Scout Nefina",
    },
    [264417] = {
        name = "Voidcaster's Greatsword",
        questID = 91887,
        quest = "Dominion of Deceit",
        start = "Starts from Scout Nefina",
    },
    [264418] = {
        name = "Voidcaster's Cleaver",
        questID = 91887,
        quest = "Dominion of Deceit",
        start = "Starts from Scout Nefina",
    },
    [264419] = {
        name = "Voidcaster's Scepter",
        questID = 91887,
        quest = "Dominion of Deceit",
        start = "Starts from Scout Nefina",
    },
    -- source: https://www.wowhead.com/quest=92512   ("Devourer")
    [267004] = {
        name = "Twinblade of the Devourer",
        questID = 92512,
        quest = "Devourer",
        start = "Starts from Leona Darkstrider",
    },
    -- source: https://www.wowhead.com/quest=92697   ("Hues of Tomorrow")
    [260524] = {
        name = "Paintmaker's Stirrer",
        questID = 92697,
        quest = "Hues of Tomorrow",
        start = "Starts from Orn'shan",
    },
    [260527] = {
        name = "Paintmaker's Walking Stick",
        questID = 92697,
        quest = "Hues of Tomorrow",
        start = "Starts from Orn'shan",
    },
    [260528] = {
        name = "Paintmaker's Estoc",
        questID = 92697,
        quest = "Hues of Tomorrow",
        start = "Starts from Orn'shan",
    },
    -- source: https://www.wowhead.com/quest=92885   ("A Hunter's Prey")
    [260472] = {
        name = "Ka'shuk Trainee's Hatchet",
        questID = 92885,
        quest = "A Hunter's Prey",
        start = "Starts from Akazi",
    },
    [260476] = {
        name = "Ka'shuk Trainee's Shortsword",
        questID = 92885,
        quest = "A Hunter's Prey",
        start = "Starts from Akazi",
    },
    [260477] = {
        name = "Ka'shuk Trainee's Longsword",
        questID = 92885,
        quest = "A Hunter's Prey",
        start = "Starts from Akazi",
    },
    -- source: https://www.wowhead.com/quest=92937   ("Awakened Evil")
    [279245] = {
        name = "Exorcised Dagger",
        questID = 92937,
        quest = "Awakened Evil",
        start = "Starts from Dak'zor",
    },
    [279280] = {
        name = "Exorcised Greataxe",
        questID = 92937,
        quest = "Awakened Evil",
        start = "Starts from Dak'zor",
    },
    [279281] = {
        name = "Exorcised Handaxe",
        questID = 92937,
        quest = "Awakened Evil",
        start = "Starts from Dak'zor",
    },
    [279282] = {
        name = "Exorcised Spellblade",
        questID = 92937,
        quest = "Awakened Evil",
        start = "Starts from Dak'zor",
    },
    -- source: https://www.wowhead.com/quest=93063   ("Broken Spears")
    [279231] = {
        name = "Ancient Amani Spear",
        questID = 93063,
        quest = "Broken Spears",
        start = "Starts from Dak'zor",
    },
    [279232] = {
        name = "Ancient Amani Longbow",
        questID = 93063,
        quest = "Broken Spears",
        start = "Starts from Dak'zor",
    },
    [279233] = {
        name = "Ancient Amani Spellblade",
        questID = 93063,
        quest = "Broken Spears",
        start = "Starts from Dak'zor",
    },
    [279234] = {
        name = "Ancient Amani Dagger",
        questID = 93063,
        quest = "Broken Spears",
        start = "Starts from Dak'zor",
    },
    [279235] = {
        name = "Ancient Amani Handaxe",
        questID = 93063,
        quest = "Broken Spears",
        start = "Starts from Dak'zor",
    },
    [279236] = {
        name = "Ancient Amani Athame",
        questID = 93063,
        quest = "Broken Spears",
        start = "Starts from Dak'zor",
    },
    -- source: https://www.wowhead.com/quest=93096   ("Amani Honor")
    [264464] = {
        name = "Tuskcarver's Sharpstaff",
        questID = 93096,
        quest = "Amani Honor",
        start = "Starts from Kel'vujo",
    },
    [264465] = {
        name = "Tuskcarver's War Brand",
        questID = 93096,
        quest = "Amani Honor",
        start = "Starts from Kel'vujo",
    },
    -- source: https://www.wowhead.com/quest=94531   ("Like Mother, Like Son")
    [271970] = {
        name = "Dawn's Radiance",
        questID = 94531,
        quest = "Like Mother, Like Son",
        start = "Starts from Arator",
    },
    -- source: https://www.wowhead.com/quest=96498   ("Grovewarden's Kris")
    [257155] = {
        name = "Grovewarden's Kris",
        questID = 96498,
        quest = "Grovewarden's Kris",
        start = "Starts from Mothkeeper Wew'tam",
    },
    -- source: https://www.wowhead.com/quest=96499   ("Grovewarden's Dagger")
    [263283] = {
        name = "Grovewarden's Dagger",
        questID = 96499,
        quest = "Grovewarden's Dagger",
        start = "Starts from Mothkeeper Wew'tam",
    },
    -- source: https://www.wowhead.com/quest=96501   ("Grovewarden's Rapier")
    [257158] = {
        name = "Grovewarden's Rapier",
        questID = 96501,
        quest = "Grovewarden's Rapier",
        start = "Starts from Mothkeeper Wew'tam",
    },
    -- source: https://www.wowhead.com/quest=96506   ("Grovewarden's Staff")
    [263284] = {
        name = "Grovewarden's Staff",
        questID = 96506,
        quest = "Grovewarden's Staff",
        start = "Starts from Mothkeeper Wew'tam",
    },
    -- source: https://www.wowhead.com/quest=96508   ("Grovewarden's Halberd")
    [257161] = {
        name = "Grovewarden's Halberd",
        questID = 96508,
        quest = "Grovewarden's Halberd",
        start = "Starts from Mothkeeper Wew'tam",
    },
    -- source: https://www.wowhead.com/quest=96509   ("Grovewarden's Greatsword")
    [263285] = {
        name = "Grovewarden's Greatsword",
        questID = 96509,
        quest = "Grovewarden's Greatsword",
        start = "Starts from Mothkeeper Wew'tam",
    },

    ------------------------------------------------------------
    -- CATACLYSM (gap2 pass)
    ------------------------------------------------------------
    [52631] = { name = "Befouled Staff", quest = "A Cure In The Dark", start = "Buzzbox 723" },
    [52632] = { name = "Digging Staff", quest = "The Last Refugee", start = "Archaeologist Hollee" },
    [52633] = { name = "Satyr Horn Staff", quest = "The Corruption's Source", start = "Tharnariun Treetender" },
    [52634] = { name = "Earthborn Staff", quest = "Calming the Earth", start = "Selenn" },
    [52636] = { name = "Portal Closer's Hammer", quest = "The Eye of All Storms", start = "Malfurion Stormrage" },
    [52640] = { name = "Grove Keeper's Branch", quest = "The Tides Turn Against Us", start = "Felros" },
    [52641] = { name = "Cerellean's Dagger", quest = "Remembrance of Auberdine", start = "Cerellean Whiteclaw" },
    [52643] = { name = "Wildkin Claw Dagger", quest = "Aroom's Farewell", start = "Aroom" },
    [52645] = { name = "Whiteclaw Dagger", quest = "Remembrance of Auberdine", start = "Cerellean Whiteclaw" },
    [52646] = { name = "Shipwreck Bow", quest = "An Ocean Not So Deep", start = "Gorbold Steelhand" },
    [52647] = { name = "Blackwood Hunter's Bow", quest = "The Defiler", start = "Elder Brolg" },
    [52650] = { name = "Dryad's Wand", quest = "Strategic Strikes", start = "Lieutenant Morra Starbreeze" },
    [52651] = { name = "Blackwood Ritual Stick", quest = "The Defiler", start = "Elder Brolg" },
    [52870] = { name = "Darkspear Druidic Staff", quest = "Proving Pit", start = "Zen'tabra" },
    [52875] = { name = "Darkspear Shamanic Staff", quest = "Proving Pit", start = "Nekali" },
    [52889] = { name = "Blooded Darkspear Dagger", quest = "Proving Pit", start = "Legati" },
    [52904] = { name = "Broken Plunger", quest = "Cluster Cluck", start = "Hobart Grapplehammer" },
    [52909] = { name = "Mini B.C. Eliminator", quest = "Town-In-A-Box: Under Attack", start = "Sassy Hardwrench" },
    [52919] = { name = "Oxidizing Axe", quest = "Wild Mine Cart Ride", start = "Mine Cart" },
    [52938] = { name = "Jealousy's Edge", quest = "What Kind of Name is Chip, Anyway?", start = "Ace" },
    [52941] = { name = "Jealousy's Edge", quest = "What Kind of Name is Candy, Anyway?", start = "Sassy Hardwrench" },
    [52950] = { name = "Whamo Kablamo", quest = "Cluster Cluck", start = "Hobart Grapplehammer" },
    [52954] = { name = "Hatchling Prodder", quest = "Surrender or Else!", start = "Megs Dreadshredder" },
    [52956] = { name = "Oomlot Staff", quest = "Send a Message", start = "Izzy" },
    [52962] = { name = "Greely's Spare Dagger", quest = "The Gallywix Labor Mine", start = "Slinky Sharpshiv" },
    [52965] = { name = "Heartache Dagger", quest = "The Fastest Way to His Heart", start = "Izzy" },
    [53244] = { name = "Mangled Tooth", quest = "Mangletooth", start = "Mankrik" },
    [53249] = { name = "Razormane Staff", quest = "Mangletooth", start = "Mankrik" },
    [53279] = { name = "Mangled Tooth", quest = "Mangletooth", start = "Dorn Redearth" },
    [53285] = { name = "Pistonhammer Gun", quest = "Batteries Not Yet Included", start = "Mizzy Pistonhammer" },
    [53286] = { name = "Pot Stirrer", quest = "Marching On Our Stomachs", start = "Sam Trawley" },
    [53290] = { name = "Redearth Staff", quest = "Mangletooth", start = "Dorn Redearth" },
    [53298] = { name = "Stonesthrow Sword", quest = "No Bull", start = "Hurlston Stonesthrow" },
    [53300] = { name = "Survivor's Blade", quest = "Bael'dun Rescue", start = "Bael'dun Survivor" },
    [53381] = { name = "Quilboar Sticker", quest = "Raggaran's Fury", start = "Raggaran" },
    [53388] = { name = "Sen'Jin Bow", quest = "Purge the Valley", start = "Master Gadrin" },
    [53389] = { name = "Sen'jin Staff", quest = "Purge the Valley", start = "Master Gadrin" },
    [53400] = { name = "Arborcide Axe", quest = "Arborcide", start = "Labor Captain Grabbit" },
    [53416] = { name = "Hill's Eye Wand", quest = "The Eyes of Ashenvale", start = "Ag'tor Bloodfist" },
    [53449] = { name = "Stonifying Gun", quest = "Refleshification", start = "Weapons Cabinet" },
    [53451] = { name = "Wind Rider Wand", quest = "The Conquest of Azshara", start = "Chawg" },
    [53452] = { name = "Woodchipper Dagger", quest = "Arborcide", start = "Labor Captain Grabbit" },
    [53557] = { name = "White Bone Pummeler", quest = "Claws of White", start = "Garl Stormclaw" },
    [53580] = { name = "Doreen's Wand", quest = "Marshal's Refuse", start = "Doreen" },
    [53583] = { name = "Beast Clobberer", quest = "The Mighty U'cha" },
    [53584] = { name = "Beastkiller", quest = "The Mighty U'cha" },
    [54304] = { name = "First Bank Knocker", quest = "The Great Bank Heist", start = "Sassy Hardwrench" },
    [54886] = { name = "Power of the Mountain Giant", quest = "Forces of Nature: Mountain Giants", start = "Handler Jesana" },
    [54887] = { name = "Power of the Faerie Dragon", quest = "Forces of Nature: Mountain Giants", start = "Handler Jesana" },
    [54888] = { name = "Power of the Treant", quest = "Forces of Nature: Mountain Giants", start = "Handler Jesana" },
    [54909] = { name = "Windflight Staff", quest = "More Than Illness", start = "Telaron Windflight" },
    [54913] = { name = "Runetotem Staff", quest = "More Than Illness", start = "Konu Runetotem" },
    [54935] = { name = "Shadowleaf Bow", quest = "Might of the Sentinels", start = "Silvia" },
    [54938] = { name = "Stonemaul Slinger", quest = "Might of the Stonemaul", start = "Orhan Ogreblade" },
    [54969] = { name = "Power of the Hippogryph", quest = "Weapons of Spirit", start = "Witch Doctor Uzer'i" },
    [54970] = { name = "Power of the Mountain Giant", quest = "Weapons of Spirit", start = "Witch Doctor Uzer'i" },
    [54971] = { name = "Power of the Faerie Dragon", quest = "Weapons of Spirit", start = "Witch Doctor Uzer'i" },
    [54972] = { name = "Power of the Treant", quest = "Weapons of Spirit", start = "Witch Doctor Uzer'i" },
    [54979] = { name = "Godfrey's Dagger", quest = "Unleash the Beast", start = "Lord Godfrey" },
    [54987] = { name = "Marshalling Point", quest = "The Battle for Gilneas City", start = "Lorna Crowley" },
    [54989] = { name = "Rallying Charge", quest = "The Battle for Gilneas City", start = "Lorna Crowley" },
    [55013] = { name = "Seryl's Promise", quest = "They Have Allies, But So Do We", start = "Lord Darius Crowley" },
    [55016] = { name = "Granny's Mallet", quest = "Grandma's Cat", start = "Grandma Wahl" },
    [55132] = { name = "Darkshore Bow", quest = "Remembrance of Auberdine", start = "Cerellean Whiteclaw" },
    [55905] = { name = "Spinescale Longbow", quest = "Return and Report", start = "Lord Hydronis" },
    [55912] = { name = "Wrought Formal Dagger", quest = "Time For Change", start = "Kherrah" },
    [55915] = { name = "Cutlass of Agogridon", quest = "Death to Agogridon", start = "Khan Leh'Prah" },
    [55917] = { name = "Kolkar Cleaver", quest = "Death to Agogridon", start = "Khan Leh'Prah" },
    [55930] = { name = "Darkblood Dagger", quest = "Infernal Encroachment", start = "Thargad" },
    [55936] = { name = "Binding Staff", quest = "Portals of the Legion", start = "Thargad" },
    [56646] = { name = "Shredder Blade", quest = "Explosives Shredding", start = "Sentinel Luciel Starwhisper" },
    [56672] = { name = "Frostshadow Crossbow", quest = "Defend the Tree!", start = "Halannia" },
    [56696] = { name = "Legacy of Teronis", quest = "True Power of the Rod", start = "Krolg" },
    [56711] = { name = "Impish Blade", quest = "Rain of Destruction", start = "Durak" },
    [56712] = { name = "Accursed Mace", quest = "Rain of Destruction", start = "Durak" },
    [56836] = { name = "Overflowing Purple Brewfest Stein", quest = "A New Supplier of Souvenirs", start = "Driz Tumblequick" },
    [56859] = { name = "Nasmira's Soup Stirrer", quest = "Rocket Rescue", start = "Kelsey Steelspark" },
    [56862] = { name = "Failed Liferocket Prototype", quest = "Rocket Rescue", start = "Kelsey Steelspark" },
    [56866] = { name = "Failed Liferocket Prototype", quest = "Rocket Rescue", start = "Megs Dreadshredder" },
    [56883] = { name = "Meatface Pummeler", quest = "You Too, Brute?", start = "Kelsey Steelspark" },
    [56885] = { name = "Dagger of the Ides", quest = "You Too, Brute?", start = "Kelsey Steelspark" },
    [56887] = { name = "Knuckle Down", quest = "Sandscraper", start = "Megs Dreadshredder" },
    [56889] = { name = "Business Finisher", quest = "Sandscraper", start = "Megs Dreadshredder" },
    [57139] = { name = "Night Web Crossbow", quest = "Night Web's Hollow", start = "Executor Arren" },
    [57155] = { name = "Worgen Slaying Sword", quest = "Annihilate the Worgen", start = "Executor Zygand" },
    [57166] = { name = "Advanced Night Web Crossbow", quest = "A Little Oomph", start = "Apothecary Dithers" },
    [57169] = { name = "Darrington's Dirk", quest = "A Daughter's Embrace", start = "Lieutenant Sanders" },
    [57214] = { name = "Stunted Tree Root", quest = "War Dance", start = "Baine Bloodhoof" },
    [57230] = { name = "Kodo Mallet", quest = "War Dance", start = "Baine Bloodhoof" },
    [57240] = { name = "Hawkeye Rifle", quest = "Wildmane Cleansing", start = "Una Wildmane" },
    [57242] = { name = "Goblin Masher", quest = "Supervisor Fizsprocket", start = "Morin Cloudstalker" },
    [57286] = { name = "Dreamrending Dagger", quest = "Through the Dream", start = "Captain Saynna Stormrunner" },
    [57292] = { name = "Repurposed Twilight Stave", quest = "War on the Twilight's Hammer", start = "Malfurion Stormrage" },
    [57293] = { name = "Front-Line Blunderbuss", quest = "War on the Twilight's Hammer", start = "Malfurion Stormrage" },
    [57294] = { name = "Poisonfire Greatsword", quest = "Flames from Above", start = "Tholo Whitehoof" },
    [57304] = { name = "Druidic Channeler's Mace", quest = "The Return of Baron Geddon", start = "Malfurion Stormrage" },
    [57305] = { name = "Axe of Grounded Flame", quest = "The Return of Baron Geddon", start = "Malfurion Stormrage" },
    [57329] = { name = "Firestorm Hackblade", quest = "Disrupting the Rituals", start = "Laina Nightsky" },
    [57330] = { name = "Lordbane Scepter", quest = "Disrupting the Rituals", start = "Laina Nightsky" },
    [57337] = { name = "Heraldcall Censer", quest = "An Ancient Reborn", start = "Choluna" },
    [57339] = { name = "Heartcrush Greathammer", quest = "A Prayer and a Wing", start = "Choluna" },
    [57344] = { name = "Glyphtrace Ritual Knife", quest = "The Third Flamegate", start = "Tortolla" },
    [57350] = { name = "Kindleprotector Staff", quest = "Prepping the Soil", start = "Rayne Feathersong" },
    [57365] = { name = "Crusher of Bonds", quest = "Free Your Mind, the Rest Follows", start = "Twilight Cauldron" },
    [57369] = { name = "Goldrinn's Purifier", quest = "Sweeping the Shelf", start = "Takrik Ragehowl" },
    [57373] = { name = "Rage of Lo'Gosh", quest = "Sweeping the Shelf", start = "Ian Duran" },
    [57418] = { name = "Stonetalon Defender's Staff", quest = "Commandeer That Balloon!", start = "Boog the \\\"Gear Whisperer\\\"" },
    [57419] = { name = "Wand of Bought Time", quest = "Commandeer That Balloon!", start = "Boog the \\\"Gear Whisperer\\\"" },
    [57425] = { name = "Gyromatic Axe", quest = "Burn, Baby, Burn!", start = "Professor Xakxak Gyromate" },
    [57428] = { name = "Fish Stunner", quest = "BEWARE OF CRAGJAW!", start = "STAY OUT!" },
    [57433] = { name = "Windshear Axe", quest = "Rumble in the Lumber... Mill", start = "Huntress Illiona" },
    [57437] = { name = "Barus' Backup Sword", quest = "Bombs Away: Mirkfallon Post!", start = "Lord Fallowmere" },
    [57444] = { name = "Assassin Assassinator", quest = "Is This Thing On?", start = "Lieutenant Paulson" },
    [57447] = { name = "Paulson's Crossbow", quest = "Is This Thing On?", start = "Lieutenant Paulson" },
    [57454] = { name = "Elune-Blessed Bow", quest = "Seen Better Days", start = "Elder Sareth'na" },
    [57461] = { name = "Egg Smasher", quest = "Brood of Seldarria", start = "Hierophant Malyk" },
    [57496] = { name = "Wand of Destructive Talent", quest = "To Battlescar!", start = "General Grebo" },
    [57563] = { name = "South Gate Blunderbuss", quest = "A Pilot's Revenge", start = "A Dwarven Corpse" },
    [57583] = { name = "The Slaghammer", quest = "Seize the Ambassador", start = "Moira Thaurissan" },
    [57837] = { name = "Biting Greataxe", quest = "Arms of the Grimtotems", start = "Captain Darill" },
    [57838] = { name = "Searing Dagger", quest = "Identifying the Brood", start = "Draz'Zilb" },
    [57839] = { name = "Whelp Slaying Axe", quest = "Identifying the Brood", start = "Draz'Zilb" },
    [57842] = { name = "Tower of Theramore", quest = "Take Down Tethyr!", start = "Major Mills" },
    [57847] = { name = "Mok'Morokk's Beat Stick", quest = "Challenge Overlord Mok'Morokk", start = "Overlord Mok'Morokk" },
    [57849] = { name = "Seamonster Harpoon", quest = "Take Down Tethyr!", start = "Major Mills" },
    [57850] = { name = "Dustwallow Impaler", quest = "Challenge Overlord Mok'Morokk", start = "Overlord Mok'Morokk" },
    [58902] = { name = "Kobold Sticker", quest = "\"I TAKE Candle!\"", start = "Jimb \\\"Candles\\\" McHannigan" },
    [58905] = { name = "Kobold Basher", quest = "\"I TAKE Candle!\"", start = "Jimb \\\"Candles\\\" McHannigan" },
    [58972] = { name = "Mori's Gear Stick", quest = "The Lost Pilot", start = "Pilot Hammerfoot" },
    [58978] = { name = "Filthy Paw", quest = "Filthy Paws", start = "Mountaineer Stormpike" },
    [58991] = { name = "Star Shooter", quest = "Heartfelt Appreciation" },
    [58993] = { name = "Old Dwarven Hammer", quest = "Heartfelt Appreciation" },
    [58997] = { name = "Carved Stone Mace", quest = "Gathering Idols", start = "Magmar Fellhew" },
    [59010] = { name = "Swiftwind Blade", quest = "Vyrin's Revenge", start = "Daryl the Youngling" },
    [59041] = { name = "Vibro Knife", quest = "The Future of Gnomeregan", start = "Nevin Twistwrench" },
    [59076] = { name = "Wand of Infectious Dementia", quest = "Assault on Menethil Keep", start = "Captain Stoutfist" },
    [59099] = { name = "Darksnare Dagger", quest = "Yorla Darksnare", start = "Shilah Slabchisel" },
    [59100] = { name = "Old Guard's Greataxe", quest = "Yorla Darksnare", start = "Shilah Slabchisel" },
    [59101] = { name = "Shilah's Blade", quest = "Yorla Darksnare", start = "Shilah Slabchisel" },
    [59102] = { name = "Old Guard's Hammer", quest = "Yorla Darksnare", start = "Shilah Slabchisel" },
    [59183] = { name = "Silenced Rifle", quest = "Wanted! Marez Cowl", start = "Wanted Board" },
    [59186] = { name = "Skullslasher", quest = "The Real Threat", start = "Deathstalker Maudria" },
    [59239] = { name = "Wand of Oomph", quest = "Prime Slime", start = "Dron Blastbrew" },
    [59242] = { name = "Ironsight Crossbow", quest = "Gan'dranda", start = "Kerr Ironsight" },
    [59268] = { name = "Greathammer of the Hinterlands", quest = "The Shell of Shadra", start = "Gilda Cloudcaller" },
    [59277] = { name = "Research Assistant's Wand", quest = "Prime Slime", start = "Malcom Fendelson" },
    [59280] = { name = "Voice Stealer", quest = "Thornar Thunderclash", start = "Elder Torntusk" },
    [59284] = { name = "Unkeeper Blade", quest = "Hunt the Keeper", start = "Primal Torntusk" },
    [59288] = { name = "Vile Branch", quest = "Faces of Evil", start = "Kotonga" },
    [59290] = { name = "Jintha'Alor Axe", quest = "Faces of Evil", start = "Kotonga" },
    [59291] = { name = "Blood Drinker Staff", quest = "It's Ours Now", start = "Primal Torntusk" },
    [59573] = { name = "Bachelor's Dagger", quest = "Mutiny, Mon!", start = "Tony Two-Tusk" },
    [59577] = { name = "Sputtervalve Gun", quest = "The Escape", start = "Wizzlecrank's Shredder" },
    [59611] = { name = "Grimhorn Pummeler", quest = "Prisoners" },
    [59612] = { name = "Darkspear Ritual Blade", quest = "Prisoners" },
    [59613] = { name = "Goblin Shanker", quest = "Prisoners" },
    [59614] = { name = "Draenic Shacklebreaker", quest = "Prisoners" },
    [59615] = { name = "Gnomeregan Mindslicer", quest = "Prisoners" },
    [59616] = { name = "Gilnean Slicer", quest = "Prisoners" },
    [59620] = { name = "Trench-Stalker Shotgun", quest = "Clearing the Defiled", start = "Legionnaire Nazgrim" },
    [59622] = { name = "Remora-Crusher Staff", quest = "Clearing the Defiled", start = "Legionnaire Nazgrim" },
    [59625] = { name = "Remora-Crusher Staff", quest = "Clearing the Defiled", start = "Captain Taylor" },
    [59650] = { name = "Glovaal's Choppink Svord", quest = "One Last Favor", start = "Humphrey Digsong" },
    [59655] = { name = "Eel Cutter", quest = "Here Fishie Fishie 2: Eel-Egg-Trick Boogaloo", start = "Orako" },
    [59658] = { name = "Eel Cutter", quest = "The Brothers Digsong 2: Eel-Egg-Trick Boogaloo", start = "Humphrey Digsong" },
    [59681] = { name = "Staff of Post-Facto Preparation", quest = "Come Prepared", start = "Fiasco Sizzlegrin" },
    [59684] = { name = "Staff of Post-Facto Preparation", quest = "Come Prepared", start = "Engineer Hexascrub" },
    [59695] = { name = "Scribe's Quill", quest = "Piece of the Past" },
    [59698] = { name = "Scribe's Quill", quest = "Piece of the Past" },
    [59728] = { name = "Clam Shucker", quest = "Bellies Await", start = "Divemaster Birmingham" },
    [59729] = { name = "Pocket-Sized Mace", quest = "Crafty Crabs", start = "Fiasco Sizzlegrin" },
    [59732] = { name = "Prototype Chemical Applicator", quest = "Odor Coater", start = "Engineer Hexascrub" },
    [59746] = { name = "Beakless Polearm", quest = "Hopelessly Gearless", start = "Admiral Dvorek" },
    [59757] = { name = "Sambino's Old Hammer", quest = "Totem Modification", start = "The Great Sambino" },
    [59758] = { name = "Rockbite Slicer", quest = "Totem Modification", start = "The Great Sambino" },
    [59775] = { name = "Breathstone-Infused Longbow", quest = "Decompression", start = "Moanah Stormhoof" },
    [59778] = { name = "Medusoid Staff", quest = "Come Hell or High Water", start = "Rendel Firetongue" },
    [59798] = { name = "Barnacle-Coated Greataxe", quest = "Kliklak's Craw" },
    [59810] = { name = "Captain Taylor's Chopper", quest = "To Arms!", start = "Captain Taylor" },
    [60219] = { name = "Balanced Spell Staff", quest = "WANTED: \"Hogger\"", start = "Wanted Poster" },
    [60338] = { name = "Reconstructed Sword", quest = "Tooling Around", start = "Merrin Rockweaver" },
    [60688] = { name = "Parker's Yardstick", quest = "Hero's Call: Redridge Mountains!", start = "Captain Danuvin" },
    [60714] = { name = "Massive Firearm of Death", quest = "Detonation", start = "John J. Keeshan" },
    [60726] = { name = "Keeshan's Dagger", quest = "Triumphant Return", start = "Colonel Troteman" },
    [60911] = { name = "Archivist's Lighter", quest = "The Stolen Letters", start = "Clerk Daltry" },
    [61068] = { name = "Wand of Imagination", quest = "The Mind's Eye", start = "Livingston Marshal" },
    [61091] = { name = "Blade of Exotic Magic", quest = "An Unusual Patron", start = "Nemeth Hawkeye" },
    [61109] = { name = "Bhag'thera's Roar", quest = "Panther Mastery", start = "Sir S. J. Erlgadin" },
    [61124] = { name = "Bangalash's Claw", quest = "Big Game Hunter", start = "Hemet Nesingwary Jr." },
    [61398] = { name = "Axe of Earthly Sundering", quest = "The Hero Returns", start = "Pyrium Lodestone" },
    [61405] = { name = "Dimension Spike", quest = "The Binding", start = "Earthcaller Torunscar" },
    [61420] = { name = "Dragonsaw Boneblade", quest = "Resonating Blow", start = "Terrath the Steady" },
    [61465] = { name = "Geomancer's Mace", quest = "Sealing the Way", start = "Crag Rockcrusher" },
    [61478] = { name = "Energon Greatmace", quest = "Elemental Energy", start = "Seer Kormo" },
    [61483] = { name = "Quicksilver Crossbow", quest = "Maziel's Ascendancy", start = "Maziel's Journal" },
    [61486] = { name = "Breathpipe", quest = "Quicksilver Submersion", start = "Maruut Stonebinder" },
    [61489] = { name = "Lockbreaker Shank", quest = "Question the Slaves", start = "Maruut Stonebinder" },
    [61594] = { name = "Venture Blaster", quest = "Drive-By Piracy", start = "Ironpatch" },
    [61608] = { name = "Mongrel Shooter", quest = "The Final Voyage of the Brashtide", start = "Baron Revilgaz" },
    [61612] = { name = "Baron's Baton", quest = "The Final Voyage of the Brashtide", start = "Baron Revilgaz" },
    [62175] = { name = "Lumberjack's Hatchet", quest = "A Gnoll's Resolve", start = "Kelly Dumah" },
    [62224] = { name = "Staff of Andorhal", quest = "The Reckoning", start = "Lady Sylvanas Windrunner" },
    [62836] = { name = "Muckdweller Spear", quest = "Iterating Upon Success", start = "High Apothecary Shana T'veen" },
    [62854] = { name = "Mace of Calculated Loss", quest = "Nowhere to Run", start = "Master Forteski" },
    [62859] = { name = "Sword of Insurgence", quest = "No Escape", start = "Lady Sylvanas Windrunner" },
    [62863] = { name = "Wild Howl Dagger", quest = "Fall Back!", start = "Forward Commander Onslaught" },
    [62876] = { name = "Relios's Mace", quest = "Relios the Relic Keeper", start = "Dalar Dawnweaver" },
    [62881] = { name = "Dawnweaver's Dagger", quest = "Practical Vengeance", start = "Dalar Dawnweaver" },
    [62882] = { name = "Edge of Unlifted Burdens", quest = "Practical Vengeance", start = "Dalar Dawnweaver" },
    [62958] = { name = "Militia Hatchet", quest = "Hidden Treasures", start = "Pamela Redpath" },
    [62981] = { name = "Grubby Gun", quest = "Gathering Some Grub(s)", start = "Rimblat Earthshatter" },
    [63007] = { name = "Plaguewood Mace", quest = "Counter-Plague Research", start = "Argent Apothecary Judkins" },
    [63008] = { name = "Judkins' Staff", quest = "Counter-Plague Research", start = "Argent Apothecary Judkins" },
    [63163] = { name = "Strong Arm Mace", quest = "Third Sample: Implanted Eggs", start = "Rhea" },
    [63204] = { name = "Bow of Kargath", quest = "Half-Ton Holdouts", start = "Gorn" },
    [63240] = { name = "Dark Iron Axe", quest = "Rise, Obsidion", start = "Mountain-Lord Rendan" },
    [63243] = { name = "Hammer of the Thorium Brotherhood", quest = "Welcome to the Brotherhood" },
    [63586] = { name = "Cryocannon", quest = "We All Scream for Ice Cream... and then Die!", start = "Brivelthwerp" },
    [63591] = { name = "Alimony", quest = "The Mad Magus", start = "Ajamon Ghostcaller" },
    [63634] = { name = "Lasting Peace", quest = "Grimtotem Chiefs: The Chief of Chiefs", start = "Feralas Sentinel" },
    [63656] = { name = "Lakota's Mace", quest = "Something to Wear", start = "Lakota Windsong" },
    [63717] = { name = "Mindsear Shanker", quest = "Water of Life", start = "Countess Verrall" },
    [63720] = { name = "Mindsear Shanker", quest = "Water of Life", start = "Countess Verrall" },
    [63735] = { name = "Darklight Torch", quest = "Portal Overload", start = "Earthcaller Yevaa" },
    [63787] = { name = "Oversized Oblique Ogre Obliterator", quest = "The Crucible of Carnage: The Twilight Terror!", start = "Gurgthock" },
    [63808] = { name = "Staff of Draconic Pacification", quest = "Narkrall, The Drake-Tamer", start = "Colin Thundermar" },
    [63817] = { name = "Keg Smasher", quest = "Total War", start = "Harkkan" },
    [63820] = { name = "Barrel Opener", quest = "Fight Like a Wildhammer", start = "Low Shaman Blundy" },
    [64495] = { name = "Whelp Keeper's Staff", quest = "Done Nothing Wrong", start = "Mouton Flamestar" },
    [64501] = { name = "Sharp Scorpid Barb", quest = "Stocking Up", start = "John J. Keeshan" },
    [64510] = { name = "Oreknuckle Gun", quest = "Chiselgrip, the Heart of the Steppes", start = "John J. Keeshan" },
    [64534] = { name = "Kubit's Dagger", quest = "Enough Damage For One Day", start = "Colonel Troteman" },
    [64594] = { name = "Ogre Tapper", quest = "Tides of Darkness", start = "Joanna Blueheart" },
    [64613] = { name = "Ogre Mage Staff", quest = "Tides of Darkness", start = "Joanna Blueheart" },
    [64620] = { name = "Bloodmire Crossbow", quest = "Tides of Darkness", start = "Joanna Blueheart" },
    [64622] = { name = "Silversnap Bottle Opener", quest = "Drinks on the Rocks", start = "Brono Goodgroove" },
    [64629] = { name = "Greataxe of Stonard", quest = "Tides of Darkness", start = "Dispatch Commander Ruag" },
    [65335] = { name = "Demon Smasher", quest = "Break the Unbreakable", start = "Arcanist Delaris" },
    [65461] = { name = "Staff of the Green Circle", quest = "The Circle's Future", start = "Loganaar" },
    [65463] = { name = "Staff of the Green Circle", quest = "The Circle's Future", start = "Loganaar" },
    [65465] = { name = "Crossbow of the Crown", quest = "A Well-Earned Reward", start = "Wulf Hansreim" },
    [65478] = { name = "Staff of the Sunchaser", quest = "Staff of the Light", start = "Tyelis" },
    [65480] = { name = "Staff of the Technocrat", quest = "A Budding Young Surgeon", start = "Chief Surgeon Gashweld" },
    [65481] = { name = "Staff of Golden Worship", quest = "A Seer's Staff", start = "Brother Silverhallow" },
    [65484] = { name = "Staff of the Earthmother", quest = "A Seer's Staff", start = "Seer Liwatha" },
    [65488] = { name = "Battleaxe of the Farseer", quest = "Blessings of the Elements", start = "Farseer Umbrua" },
    [65676] = { name = "Helcular's Other Rod", quest = "Helcular's Rod Giveth...", start = "Helcular" },
    [65677] = { name = "Preemptive Staff", quest = "Preemptive Strike" },
    [65688] = { name = "Yetimus Maximus", quest = "Yetimus the Yeti Lord", start = "Deathguard Samsa" },
    [65698] = { name = "Daggerspine Dagger", quest = "Preemptive Strike" },
    [65787] = { name = "Harrison's Climbing Hook", quest = "Fortune and Glory", start = "Harrison Jones" },
    [65788] = { name = "Arrowspike Longbow", quest = "Fortune and Glory", start = "Harrison Jones" },
    [65799] = { name = "Ihsenn's Staff of Terror", quest = "The Bandit Warlord", start = "Sun Priest Asaris" },
    [65808] = { name = "Orsis Polearm", quest = "The Scepter of Orsis", start = "Sand-Covered Hieroglyphs" },
    [65813] = { name = "Scarab-Inlaid Crossbow", quest = "Lieutenants of Darkness", start = "King Phaoris" },
    [65816] = { name = "Ramkahen Ceremonial Hammer", quest = "Punish the Trespassers", start = "Sun Prophet Tumet" },
    [65840] = { name = "Knife of the Venomous Asp", quest = "The Element of Supplies", start = "Sergeant Mehat" },
    [65947] = { name = "Platinum Sword", quest = "The Platinum Discs", start = "The Discs of Norgannon" },
    [65959] = { name = "Cookie's Stirring Stick", quest = "The Defias Kingpin", start = "Lieutenant Horatio Laine" },
    [65977] = { name = "Balnazzar's Horn", quest = "The Dreadlord Balnazzar", start = "Crusade Commander Eligor Dawnbringer" },
    [66028] = { name = "Cookie's Stirring Stick", quest = "The Defias Kingpin", start = "Kagtha" },
    [66247] = { name = "Timeworn Staff", quest = "From the Shadows", start = "Lorna Crowley" },
    [66660] = { name = "Hammer of Controlled Fury", quest = "Neither Human Nor Beast", start = "Lord Darius Crowley" },
    [67210] = { name = "Wand of Sudden Changes", quest = "High Chief Winterfall", start = "Donova Snowden" },
    [68014] = { name = "Flintlocke's Chuckshooter", quest = "Aiming High", start = "Fargo Flintlocke" },
    [69222] = { name = "Kadrak's Axe", quest = "Mor'shan Caravan Delivery", start = "Nagala Whipshank" },
    [72884] = { name = "Writhing Wand", quest = "The Twilight Prophet" },

    ------------------------------------------------------------
    -- MISTS OF PANDARIA (gap2 pass)
    ------------------------------------------------------------
    [73234] = { name = "Flameheart Crossbow", quest = "The Passion of Shen-zin Su", start = "Huo" },
    [73235] = { name = "Sword of the Burning Spirit", quest = "The Passion of Shen-zin Su", start = "Huo" },
    [73236] = { name = "Dagger of Silent Flame", quest = "The Passion of Shen-zin Su", start = "Huo" },
    [73237] = { name = "Mace of the Master", quest = "Only the Worthy Shall Pass", start = "Master Li Fei" },
    [73238] = { name = "Dagger of the Master", quest = "Only the Worthy Shall Pass", start = "Master Li Fei" },
    [73239] = { name = "Staff of the Master", quest = "Only the Worthy Shall Pass", start = "Master Li Fei" },
    [74588] = { name = "Jade Crossbow", quest = "Stronger Than Bone", start = "Jade Tiger Pillar" },
    [74589] = { name = "Jade Hilted Sword", quest = "Stronger Than Bone", start = "Jade Tiger Pillar" },
    [74590] = { name = "Jade Hilted Dagger", quest = "Stronger Than Bone", start = "Jade Tiger Pillar" },
    [74591] = { name = "Sword of the Hozen", quest = "Do No Evil", start = "Ji Firepaw" },
    [74592] = { name = "Dagger of the Hozen", quest = "Do No Evil", start = "Ji Firepaw" },
    [74593] = { name = "Staff of the Hozen", quest = "Do No Evil", start = "Ji Firepaw" },
    [80788] = { name = "Jinyu Meditation Staff", quest = "Carp Diem", start = "Admiral Taylor" },
    [80789] = { name = "Jinyu Divining Rod", quest = "Carp Diem", start = "Admiral Taylor" },
    [80790] = { name = "Jinyu Combat Staff", quest = "Carp Diem", start = "Admiral Taylor" },
    [80791] = { name = "Jinyu Greatsword", quest = "Carp Diem", start = "Admiral Taylor" },
    [80792] = { name = "Jinyu Handaxe", quest = "Carp Diem", start = "Admiral Taylor" },
    [80793] = { name = "Jinyu Crossbow", quest = "Carp Diem", start = "Admiral Taylor" },
    [80794] = { name = "Jinyu Battleaxe", quest = "Carp Diem", start = "Admiral Taylor" },
    [80795] = { name = "Jinyu Ritual Scepter", quest = "Carp Diem", start = "Admiral Taylor" },
    [80796] = { name = "Jinyu Dagger", quest = "Boom Goes the Doonamite!", start = "Rivett Clutchpop" },
    [80797] = { name = "Jinyu Combat Mace", quest = "Carp Diem", start = "Admiral Taylor" },
    [80798] = { name = "Greataxe of Honor", quest = "Flying Colors", start = "Instructor Xann" },
    [80799] = { name = "Sword of Honor", quest = "Flying Colors", start = "Instructor Xann" },
    [80803] = { name = "Mace of Honor", quest = "Flying Colors", start = "Instructor Xann" },
    [81542] = { name = "Fishmonger's Blade", quest = "Balance", start = "Wise Ana Wu" },
    [81543] = { name = "Waterkeeper's Wand", quest = "Balance", start = "Wise Ana Wu" },
    [81544] = { name = "Marista Halberd", quest = "Balance", start = "Wise Ana Wu" },
    [81545] = { name = "Marista Blade", quest = "Balance", start = "Wise Ana Wu" },
    [81546] = { name = "Cloudfall Sword", quest = "Balance", start = "Wise Ana Wu" },
    [81547] = { name = "Marista Bow", quest = "Balance", start = "Wise Ana Wu" },
    [81548] = { name = "Marista Mace", quest = "Balance", start = "Wise Ana Wu" },
    [81549] = { name = "Marista Axe", quest = "Balance", start = "Wise Ana Wu" },
    [81550] = { name = "Cloudfall Blade", quest = "Balance", start = "Wise Ana Wu" },
    [81551] = { name = "Cloudfall Mace", quest = "Balance", start = "Wise Ana Wu" },
    [81552] = { name = "Red Crane Sword", quest = "Ahead on the Way", start = "Koro Mistwalker" },
    [81553] = { name = "Crane Temple Blade", quest = "Ahead on the Way", start = "Koro Mistwalker" },
    [81556] = { name = "Sha-Warped Blade", quest = "Ahead on the Way", start = "Koro Mistwalker" },
    [81557] = { name = "Maw of Despair", quest = "Ahead on the Way", start = "Koro Mistwalker" },
    [81844] = { name = "Gardener's Sickle", quest = "Gardener Fran and the Watering Can", start = "Gardener Fran" },
    [81846] = { name = "Fran's Spear", quest = "Gardener Fran and the Watering Can", start = "Gardener Fran" },
    [81847] = { name = "Gardener's Axe", quest = "Gardener Fran and the Watering Can", start = "Gardener Fran" },
    [81848] = { name = "Fran's Handaxe", quest = "Gardener Fran and the Watering Can", start = "Gardener Fran" },
    [81849] = { name = "Fran's Crossbow", quest = "Gardener Fran and the Watering Can", start = "Gardener Fran" },
    [81850] = { name = "Gardener's Mace", quest = "Gardener Fran and the Watering Can", start = "Gardener Fran" },
    [81851] = { name = "Fran's Golden Mace", quest = "Gardener Fran and the Watering Can", start = "Gardener Fran" },
    [81852] = { name = "Fran's Dagger", quest = "Gardener Fran and the Watering Can", start = "Gardener Fran" },
    [81853] = { name = "Fran's Bronze Mace", quest = "Gardener Fran and the Watering Can", start = "Gardener Fran" },
    [81854] = { name = "Mushan Chopper", quest = "Mushan Mastery: Darkhide", start = "Hemet Nesingwary" },
    [81855] = { name = "Darkhide Blade", quest = "Mushan Mastery: Darkhide", start = "Hemet Nesingwary" },
    [81858] = { name = "Mushan Sticker", quest = "Mushan Mastery: Darkhide", start = "Hemet Nesingwary" },
    [81859] = { name = "'Nessy's Trophy Pincers", quest = "Mushan Mastery: Darkhide", start = "Hemet Nesingwary" },
    [82589] = { name = "Ordo Mace", quest = "The Ordo Warbringer" },
    [82590] = { name = "Blazecaster's Wand", quest = "The Ordo Warbringer" },
    [82591] = { name = "Wind's Rest Spear", quest = "The Ordo Warbringer" },
    [82592] = { name = "Warbringer's Axe", quest = "The Ordo Warbringer" },
    [82593] = { name = "Wind Blade", quest = "The Ordo Warbringer" },
    [82594] = { name = "Fireblaze Rifle", quest = "The Ordo Warbringer" },
    [82595] = { name = "Wind's Edge", quest = "The Ordo Warbringer" },
    [82596] = { name = "Ordo Handaxe", quest = "The Ordo Warbringer" },
    [82597] = { name = "Warbringer's Dagger", quest = "The Ordo Warbringer" },
    [82598] = { name = "Fireblaze Clobberer", quest = "The Ordo Warbringer" },
    [82599] = { name = "Shomi's Greatsword", quest = "Make A Fighter Out of Me", start = "Shomi" },
    [82600] = { name = "Shomi's Mace", quest = "Make A Fighter Out of Me", start = "Shomi" },
    [82604] = { name = "Shomi's Axe", quest = "Make A Fighter Out of Me", start = "Shomi" },
    [83746] = { name = "Torch of Noon", quest = "Last Toll of the Yaungol", start = "Xiao Tu" },
    [83747] = { name = "Torch of Dawn", quest = "Last Toll of the Yaungol", start = "Xiao Tu" },
    [83748] = { name = "Torch of Dusk", quest = "Last Toll of the Yaungol", start = "Xiao Tu" },
    [83749] = { name = "Hatred's Vise", quest = "Last Toll of the Yaungol", start = "Xiao Tu" },
    [83750] = { name = "Sha-Blighted Blade", quest = "Last Toll of the Yaungol", start = "Xiao Tu" },
    [83751] = { name = "Shado-Pan Ranger's Bow", quest = "Last Toll of the Yaungol", start = "Xiao Tu" },
    [83752] = { name = "Hatred's Bite", quest = "Last Toll of the Yaungol", start = "Xiao Tu" },
    [83753] = { name = "Dividing Edge", quest = "Last Toll of the Yaungol", start = "Xiao Tu" },
    [83754] = { name = "Shado-Pan Ranger's Blade", quest = "Last Toll of the Yaungol", start = "Xiao Tu" },
    [83755] = { name = "Bearheart's Club", quest = "Last Toll of the Yaungol", start = "Xiao Tu" },
    [83756] = { name = "Sumprush Mace", quest = "The Death of Me", start = "Orbiss" },
    [83757] = { name = "Halcyon Death", quest = "The Death of Me", start = "Orbiss" },
    [83760] = { name = "Contorted Blade", quest = "The Death of Me", start = "Orbiss" },
    [83761] = { name = "Mist-Shaman's Barbs", quest = "The Death of Me", start = "Orbiss" },
    [84087] = { name = "Kyparitic Staff", quest = "The Horror Comes A-Rising", start = "Boggeo" },
    [84088] = { name = "Kyparitic Clawmace", quest = "The Horror Comes A-Rising", start = "Boggeo" },
    [84089] = { name = "Axe of the Rikkitun", quest = "The Horror Comes A-Rising", start = "Boggeo" },
    [84090] = { name = "Bow of the Rikkitun", quest = "The Horror Comes A-Rising", start = "Boggeo" },
    [84091] = { name = "Obelisk of the Rikkitun", quest = "The Horror Comes A-Rising", start = "Boggeo" },
    [84092] = { name = "Boggeo's Ritual Axe", quest = "The Horror Comes A-Rising", start = "Boggeo" },
    [84093] = { name = "Spiked Edge of the Rikkitun", quest = "The Horror Comes A-Rising", start = "Boggeo" },
    [84094] = { name = "Thorns of the Rikkitun", quest = "The Horror Comes A-Rising", start = "Boggeo" },
    [84095] = { name = "Bloodseeker's Axe", quest = "The Scent of Blood", start = "Skeer the Bloodseeker" },
    [84251] = { name = "Staff of Inner Focus", quest = "The Rumpus", start = "Instructor Myang" },
    [84252] = { name = "Instructor's Staff", quest = "The Rumpus", start = "Instructor Myang" },
    [84253] = { name = "Tian Monastic Staff", quest = "The Rumpus", start = "Instructor Myang" },
    [84254] = { name = "Sword of the Lone Victor", quest = "The Rumpus", start = "Instructor Myang" },
    [84255] = { name = "Axe of the Lone Champion", quest = "The Rumpus", start = "Instructor Myang" },
    [84256] = { name = "Jade Rifle", quest = "The Rumpus", start = "Instructor Myang" },
    [84257] = { name = "Trophy of the Last Man Standing", quest = "The Rumpus", start = "Instructor Myang" },
    [84258] = { name = "Mace of Inner Peace", quest = "The Rumpus", start = "Instructor Myang" },
    [84260] = { name = "Mace of Serenity", quest = "The Rumpus", start = "Instructor Myang" },
    [84261] = { name = "Axe of Sacrifice", quest = "An Urgent Plea", start = "Pei-Zhi" },
    [84262] = { name = "Spirit Crusher", quest = "An Urgent Plea", start = "Pei-Zhi" },
    [84265] = { name = "Spiritbound Crescent", quest = "An Urgent Plea", start = "Pei-Zhi" },
    [84266] = { name = "Spiritbound Axe", quest = "An Urgent Plea", start = "Pei-Zhi" },
    [84528] = { name = "Inkgill Blade", quest = "Enraged Vengeance", start = "Swordmistress Mei" },
    [84529] = { name = "Bodyguard's Halberd", quest = "Enraged Vengeance", start = "Swordmistress Mei" },
    [84530] = { name = "Swordmistress' Greatsword", quest = "Enraged Vengeance", start = "Swordmistress Mei" },
    [84531] = { name = "Swordmistress' Blade", quest = "Enraged Vengeance", start = "Swordmistress Mei" },
    [84532] = { name = "Bodyguard's Rifle", quest = "Enraged Vengeance", start = "Swordmistress Mei" },
    [84533] = { name = "Mei's Blade", quest = "Enraged Vengeance", start = "Swordmistress Mei" },
    [84534] = { name = "Ornate Mace", quest = "Enraged Vengeance", start = "Swordmistress Mei" },
    [84535] = { name = "Bodyguard's Dagger", quest = "Enraged Vengeance", start = "Swordmistress Mei" },
    [84536] = { name = "Hidden Pass Barbs", quest = "Enraged Vengeance", start = "Swordmistress Mei" },
    [84537] = { name = "Binan Greatsword", quest = "Call Out Their Leader", start = "Mayor Bramblestaff" },
    [84538] = { name = "Binan Blade", quest = "Call Out Their Leader", start = "Mayor Bramblestaff" },
    [84541] = { name = "Bramble Blade", quest = "Call Out Their Leader", start = "Mayor Bramblestaff" },
    [84542] = { name = "Bataari Hatchet", quest = "Call Out Their Leader", start = "Mayor Bramblestaff" },
    [85575] = { name = "Peacebringer's Staff", quest = "Ending the Invasion!", start = "Marshal McBride" },
    [90076] = { name = "Boggeo's Thorns", quest = "The Horror Comes A-Rising", start = "Boggeo" },
    [90077] = { name = "Oracle's Blade", quest = "The Horror Comes A-Rising", start = "Boggeo" },
    [90327] = { name = "Stormcaller's Warclub", quest = "Paint it Red!", start = "General Nazgrim" },
    [90328] = { name = "Trench Medic's Staff", quest = "Paint it Red!", start = "General Nazgrim" },
    [90329] = { name = "Garrosh's Vanguard Battleaxe", quest = "Paint it Red!", start = "General Nazgrim" },
    [90330] = { name = "Smoldering Gunship Strut", quest = "Regroup!", start = "General Nazgrim" },
    [90332] = { name = "Zin'jun's Dwarf-Cleaver", quest = "Regroup!", start = "General Nazgrim" },
    [90333] = { name = "Scavenged Rotor Blade", quest = "Regroup!", start = "General Nazgrim" },
    [90335] = { name = "Hozen-Thunking Mace", quest = "Regroup!", start = "General Nazgrim" },
    [90336] = { name = "Gunship Armory Greataxe", quest = "Paint it Red!", start = "General Nazgrim" },
    [90377] = { name = "Fogcutter Staff", quest = "Unleash Hell", start = "Sky Admiral Rogers" },
    [90380] = { name = "Skyfire Medic's Staff", quest = "Unleash Hell", start = "Sky Admiral Rogers" },
    [90382] = { name = "Captain Rogers' Polite Knocking Stick", quest = "Unleash Hell", start = "Sky Admiral Rogers" },
    [90387] = { name = "Crashed Gyrocopter Rotor", quest = "Critical Condition", start = "Mishka" },
    [90388] = { name = "Greatsword of Kofinna Kottr", quest = "Critical Condition", start = "Mishka" },
    [90459] = { name = "Liuyang's Light-Lit Longshank", quest = "The Arena of Annihilation", start = "Gurgthock" },
    [90461] = { name = "Jol'Grum's Frozen Mace", quest = "The Arena of Annihilation", start = "Gurgthock" },
    [90462] = { name = "Liuyang's Lovely Longstaff", quest = "The Arena of Annihilation", start = "Gurgthock" },
    [90463] = { name = "Chagan's Cheery Chopper", quest = "The Arena of Annihilation", start = "Gurgthock" },
    [90464] = { name = "Satay's Stabbing Sword", quest = "The Arena of Annihilation", start = "Gurgthock" },
    [90465] = { name = "Scar-Shell's Scintillating Staff", quest = "The Arena of Annihilation", start = "Gurgthock" },
    [90466] = { name = "Maki's Mashing Mace", quest = "The Arena of Annihilation", start = "Gurgthock" },

    ------------------------------------------------------------
    -- WARLORDS OF DRAENOR (gap2 pass)
    ------------------------------------------------------------
    [108908] = { name = "Rangari Initiate Crossbow", quest = "For the Alliance!", start = "Vindicator Maraad" },
    [108909] = { name = "Karabor Footman's Pike", quest = "For the Alliance!", start = "Vindicator Maraad" },
    [108910] = { name = "Rangari Initiate Dagger", quest = "For the Alliance!", start = "Vindicator Maraad" },
    [108912] = { name = "Karabor Greatsword", quest = "For the Alliance!", start = "Vindicator Maraad" },
    [108913] = { name = "Rangari Initiate Armblade", quest = "For the Alliance!", start = "Vindicator Maraad" },
    [108914] = { name = "Karabor Footman Sword", quest = "For the Alliance!", start = "Vindicator Maraad" },
    [108918] = { name = "Karabor Arcanist Rod", quest = "For the Alliance!", start = "Vindicator Maraad" },
    [108919] = { name = "Karabor Augury Mace", quest = "For the Alliance!", start = "Vindicator Maraad" },
    [111535] = { name = "Frostwolf Hand Axe", quest = "For the Horde!", start = "Thrall" },
    [111536] = { name = "Frostwolf Cleaver", quest = "For the Horde!", start = "Thrall" },
    [111537] = { name = "Frostwolf Greataxe", quest = "For the Horde!", start = "Thrall" },
    [111538] = { name = "Frostwolf Hunting Crossbow", quest = "For the Horde!", start = "Thrall" },
    [111539] = { name = "Frostwolf Boot Knife", quest = "For the Horde!", start = "Thrall" },
    [111540] = { name = "Frostwolf Augury Staff", quest = "For the Horde!", start = "Thrall" },
    [111541] = { name = "Frostwolf Mountaineering Stick", quest = "For the Horde!", start = "Thrall" },
    [111542] = { name = "Frostwolf Wind-Talker Cudgel", quest = "For the Horde!", start = "Thrall" },
    [111912] = { name = "Thunderlord Riding Crop", quest = "The Iron Wolf", start = "Durotan" },
    [111914] = { name = "Thunderlord Skinning Knife", quest = "The Iron Wolf", start = "Durotan" },
    [111916] = { name = "Thunderlord Herding Cudgel", quest = "The Iron Wolf", start = "Durotan" },
    [112389] = { name = "Iron Horde Warcudgel", quest = "The Portal's Power", start = "Archmage Khadgar" },
    [112391] = { name = "Iron Horde Hatchet", quest = "The Portal's Power", start = "Archmage Khadgar" },
    [112393] = { name = "Iron Horde Waraxe", quest = "The Portal's Power", start = "Archmage Khadgar" },
    [112395] = { name = "Iron Horde Bramblestaff", quest = "The Portal's Power", start = "Archmage Khadgar" },
    [112576] = { name = "Sharpened Riverbeast Tusk", quest = "WANTED: Hilaani", start = "Patrick Messer" },
    [112577] = { name = "Teroclaw Talon", quest = "WANTED: Kil'uun", start = "Patrick Messer" },
    [112578] = { name = "Talador Hunting Rifle", quest = "WANTED: Kil'uun", start = "Patrick Messer" },
    [112579] = { name = "Riverbeast Jawbone", quest = "WANTED: Hilaani", start = "Patrick Messer" },
    [112580] = { name = "Ra'tok's Painhammer", quest = "WANTED: Ra'tok the Hammer", start = "Patrick Messer" },
    [112586] = { name = "Riverbeast Femur", quest = "WANTED: Hilaani", start = "Patrick Messer" },
    [112587] = { name = "Riverbeast Tusk Shank", quest = "WANTED: Hilaani", start = "Patrick Messer" },
    [112867] = { name = "Abandoned Dark Iron Handaxe", quest = "Down the Goren Hole", start = "Hansel Heavyhands" },
    [112868] = { name = "Abandoned Dark Iron Greataxe", quest = "Down the Goren Hole", start = "Hansel Heavyhands" },
    [112869] = { name = "Abandoned Dark Iron Longbow", quest = "Down the Goren Hole", start = "Hansel Heavyhands" },
    [112870] = { name = "Abandoned Dark Iron Lockjammer", quest = "Down the Goren Hole", start = "Hansel Heavyhands" },
    [112871] = { name = "Abandoned Dark Iron Skullthumper", quest = "Down the Goren Hole", start = "Hansel Heavyhands" },
    [112872] = { name = "Abandoned Dark Iron Glaive", quest = "Down the Goren Hole", start = "Hansel Heavyhands" },
    [112873] = { name = "Abandoned Dark Iron Staff", quest = "Down the Goren Hole", start = "Hansel Heavyhands" },
    [112874] = { name = "Abandoned Dark Iron Cudgel", quest = "Down the Goren Hole", start = "Hansel Heavyhands" },
    [113042] = { name = "Talador Sentinel Standard Issue", quest = "The Final Piece", start = "Restalaan" },
    [113043] = { name = "Telmor Crystal Staff", quest = "The Final Piece", start = "Restalaan" },
    [113045] = { name = "Restalaan's Greatsword", quest = "The Final Piece", start = "Restalaan" },
    [113046] = { name = "Vorpil's Ribsmasher", quest = "The Final Piece", start = "Restalaan" },
    [113047] = { name = "Restalaan's Longsword", quest = "The Final Piece", start = "Restalaan" },
    [113049] = { name = "Vorpil's Ribnicker", quest = "The Final Piece", start = "Restalaan" },
    [113051] = { name = "Iron Shredder Axle", quest = "Engineering Her Demise", start = "Gazlowe" },
    [113052] = { name = "Camshaft-Haft Greatcleaver", quest = "Engineering Her Demise", start = "Gazlowe" },
    [113053] = { name = "Iron Shredder Doohickey", quest = "Engineering Her Demise", start = "Gazlowe" },
    [113054] = { name = "Broken Shredder Blade", quest = "Engineering Her Demise", start = "Gazlowe" },
    [113055] = { name = "Serrated Sawblade Axe", quest = "Engineering Her Demise", start = "Gazlowe" },
    [113056] = { name = "Multi-Purpose Shredder Hydraulic Lever", quest = "Engineering Her Demise", start = "Gazlowe" },
    [113057] = { name = "Maintenance Downtime Hatchet", quest = "Engineering Her Demise", start = "Gazlowe" },
    [113171] = { name = "Karabor Warmace", quest = "Darkness Falls", start = "Prophet Velen" },
    [113172] = { name = "Karabor Arcanist Wand", quest = "Darkness Falls", start = "Prophet Velen" },
    [113173] = { name = "Karabor Honor Guard Mace", quest = "Darkness Falls", start = "Prophet Velen" },
    [113174] = { name = "Rangari Initiate Blackjack", quest = "Darkness Falls", start = "Prophet Velen" },
    [113175] = { name = "Rangari Skinning Knife", quest = "Darkness Falls", start = "Prophet Velen" },
    [113176] = { name = "Karabor Anchorite Cudgel", quest = "Darkness Falls", start = "Prophet Velen" },
    [113180] = { name = "Rangari Boot Knife", quest = "The Exarch Council", start = "Vindicator Maraad" },
    [113181] = { name = "Karabor Honor Guard Axe", quest = "The Exarch Council", start = "Vindicator Maraad" },
    [113182] = { name = "Rangari Initiate Hatchet", quest = "The Exarch Council", start = "Vindicator Maraad" },
    [114903] = { name = "Talon Guard Shortblade", quest = "When All Is Aligned", start = "Reshad" },
    [114907] = { name = "Talon Guard Wingclipper", quest = "When All Is Aligned", start = "Reshad" },
    [114908] = { name = "Talon Guard Glaive", quest = "When All Is Aligned", start = "Reshad" },
    [114910] = { name = "Talon Guard Cudgel", quest = "When All Is Aligned", start = "Reshad" },
    [114911] = { name = "Mighty Gorian Cleaver", quest = "Reglakk's Research", start = "Rangari Mirana" },
    [114912] = { name = "Mighty Gorian Greatsword", quest = "Reglakk's Research", start = "Rangari Mirana" },
    [114913] = { name = "Mighty Gorian Hunting Bow", quest = "Reglakk's Research", start = "Rangari Mirana" },
    [114914] = { name = "Mighty Gorian Dagger", quest = "Reglakk's Research", start = "Rangari Mirana" },
    [114915] = { name = "Mighty Gorian Shortsword", quest = "Reglakk's Research", start = "Rangari Mirana" },
    [114916] = { name = "Mighty Gorian Halberd", quest = "Reglakk's Research", start = "Rangari Mirana" },
    [114917] = { name = "Gorian Arcanist Spellstaff", quest = "Reglakk's Research", start = "Rangari Mirana" },
    [114918] = { name = "Gorian Arcanist Spiritshaker", quest = "Reglakk's Research", start = "Rangari Mirana" },
    [117506] = { name = "Frostwolf Shank", quest = "Leave Nothing Behind!", start = "Ga'nar" },
    [117507] = { name = "Frostwolf Hatchet", quest = "Leave Nothing Behind!", start = "Ga'nar" },
    [118012] = { name = "Steamscar Shank", quest = "Steamscar \"Reagents\"", start = "Rakthoth" },
    [118013] = { name = "Steamscar Sabre", quest = "Steamscar \"Reagents\"", start = "Rakthoth" },
    [118014] = { name = "Steamscar Cudgel", quest = "Steamscar \"Reagents\"", start = "Rakthoth" },
    [118022] = { name = "Ogron Slayer's Axe", quest = "Fair Warning", start = "Rexxar" },
    [118023] = { name = "Ogron Slayer's Greataxe", quest = "Fair Warning", start = "Rexxar" },
    [118024] = { name = "Ogron Slayer's Eye-Poker", quest = "Fair Warning", start = "Rexxar" },
    [118026] = { name = "Ogron Slayer's Eyebruiser", quest = "Fair Warning", start = "Rexxar" },
    [118027] = { name = "Ogron Slayer's Eyegouger", quest = "Fair Warning", start = "Rexxar" },
    [118079] = { name = "Admiral Taylor's Ceremonial Sword", quest = "Admiral Taylor", start = "Lady Claudia" },
    [118081] = { name = "Admiral Taylor's Hunting Bow", quest = "Admiral Taylor", start = "Lady Claudia" },
    [118082] = { name = "Admiral Taylor's Boot Knife", quest = "Admiral Taylor", start = "Lady Claudia" },
    [118083] = { name = "Admiral Taylor's Cutlass", quest = "Admiral Taylor", start = "Lady Claudia" },
    [118084] = { name = "Admiral Taylor's Glaive", quest = "Admiral Taylor", start = "Lady Claudia" },
    [118085] = { name = "Admiral Taylor's Staff of Wisdom", quest = "Admiral Taylor", start = "Lady Claudia" },
    [118086] = { name = "Admiral Taylor's Keg Tapper", quest = "Admiral Taylor", start = "Lady Claudia" },
    [118124] = { name = "Void-Warped Oshu'gun Shortsword", quest = "The Dark Heart of Oshu'gun", start = "Farseer Drek'Thar" },
    [118125] = { name = "Void-Warped Oshu'gun Greatmaul", quest = "The Dark Heart of Oshu'gun", start = "Farseer Drek'Thar" },
    [118126] = { name = "Void-Warped Oshu'gun Crossbow", quest = "The Dark Heart of Oshu'gun", start = "Farseer Drek'Thar" },
    [118127] = { name = "Void-Warped Oshu'gun Dagger", quest = "The Dark Heart of Oshu'gun", start = "Farseer Drek'Thar" },
    [118128] = { name = "Void-Warped Oshu'gun Mace", quest = "The Dark Heart of Oshu'gun", start = "Farseer Drek'Thar" },
    [118129] = { name = "Void-Warped Oshu'gun Staff", quest = "The Dark Heart of Oshu'gun", start = "Farseer Drek'Thar" },
    [118131] = { name = "Void-Warped Oshu'gun Mallet", quest = "The Dark Heart of Oshu'gun", start = "Farseer Drek'Thar" },
    [118135] = { name = "Plainshunter Claws", quest = "That Pounding Sound", start = "Kia Herman" },
    [118136] = { name = "Plainshunter Dagger", quest = "That Pounding Sound", start = "Kia Herman" },
    [118137] = { name = "Plainshunter Blackjack", quest = "That Pounding Sound", start = "Kia Herman" },
    [118217] = { name = "Staff of Dubious Pacts", quest = "Message for Saurfang", start = "Kor'kron Loyalist" },
    [119457] = { name = "Handaxe of Trials", quest = "Proving Grounds", start = "Lieutenant Thorn" },
    [119458] = { name = "Greataxe of Trials", quest = "Proving Grounds", start = "Lieutenant Thorn" },
    [119459] = { name = "Longbow of Trials", quest = "Proving Grounds", start = "Lieutenant Thorn" },
    [119460] = { name = "Lockbreaker of Trials", quest = "Proving Grounds", start = "Lieutenant Thorn" },
    [119461] = { name = "Skullthumper of Trials", quest = "Proving Grounds", start = "Lieutenant Thorn" },
    [119462] = { name = "Skullcutter of Trials", quest = "Proving Grounds", start = "Lieutenant Thorn" },
    [119463] = { name = "Staff of Trials", quest = "Proving Grounds", start = "Lieutenant Thorn" },
    [119464] = { name = "Cudgel of Trials", quest = "Proving Grounds", start = "Lieutenant Thorn" },
    [120304] = { name = "Iron Horde Carving Knife", quest = "The Portal's Power", start = "Archmage Khadgar" },
    [120430] = { name = "Mighty Gorian Headcracker", quest = "Reglakk's Research", start = "Rangari Mirana" },

    ------------------------------------------------------------
    -- CLASSIC (gap2 pass)
    ------------------------------------------------------------
    [1010] = { name = "Gnarled Short Staff", questID = 25792, quest = "Pushing Forward", start = "Captain Tharran" },
    [1011] = { name = "Sharp Axe", questID = 25792, quest = "Pushing Forward", start = "Captain Tharran" },
    [2047] = { name = "Anvilmar Hand Axe", questID = 182, quest = "The Troll Menace", start = "Grelin Whitebeard" },
    [2195] = { name = "Anvilmar Knife", questID = 182, quest = "The Troll Menace", start = "Grelin Whitebeard" },
    [3267] = { name = "Forsaken Shortsword", questID = 24970, quest = "No Better Than the Zombies", start = "Executor Arren" },
    [3268] = { name = "Forsaken Dagger", questID = 24970, quest = "No Better Than the Zombies", start = "Executor Arren" },
    [3269] = { name = "Forsaken Maul", questID = 24970, quest = "No Better Than the Zombies", start = "Executor Arren" },
    [3277] = { name = "Executor Staff", questID = 24971, quest = "Assault on the Rotbrain Encampment", start = "Darnell" },
    [3440] = { name = "Bonecracker", questID = 25029, quest = "Deaths in the Family", start = "Coleman Farthing" },
    [3446] = { name = "Darkwood Staff", questID = 25029, quest = "Deaths in the Family", start = "Coleman Farthing" },
    [4840] = { name = "Long Bayonet", questID = 46, quest = "Bounty on Murlocs", start = "Bounty Board" },
    [4932] = { name = "Harpy Wing Clipper", questID = 835, quest = "Securing the Lines", start = "Rezlak" },
    [4938] = { name = "Blemished Wooden Staff", questID = 835, quest = "Securing the Lines", start = "Rezlak" },
    [5240] = { name = "Torchlight Wand", questID = 26349, quest = "The Coastal Menace", start = "Captain Grayson" },
    [5392] = { name = "Thistlewood Dagger", questID = 28726, quest = "Webwood Corruption", start = "Tarindrella" },
    [5393] = { name = "Thistlewood Staff", questID = 28726, quest = "Webwood Corruption", start = "Tarindrella" },
    [5579] = { name = "Militia Warhammer", questID = 26390, quest = "Ending the Invasion!", start = "Marshal McBride" },
    [5580] = { name = "Militia Hammer", questID = 26390, quest = "Ending the Invasion!", start = "Marshal McBride" },
    [5595] = { name = "Thicket Hammer", questID = 935, quest = "The Waters of Teldrassil", start = "Tarindrella" },
    [5596] = { name = "Ashwood Bow", questID = 935, quest = "The Waters of Teldrassil", start = "Tarindrella" },
    [5605] = { name = "Pruning Knife", questID = 923, quest = "Mossy Tumors", start = "Rellian Greenspyre" },
    [5761] = { name = "Anvilmar Sledge", questID = 182, quest = "The Troll Menace", start = "Grelin Whitebeard" },
    [5779] = { name = "Forsaken Bastard Sword", questID = 24970, quest = "No Better Than the Zombies", start = "Executor Arren" },
    [5813] = { name = "Emil's Brand", questID = 26472, quest = "Insane Druids", start = "Gaivan Shadewalker" },
    [6797] = { name = "Eyepoker", questID = 27261, quest = "Questioning Reethe", start = "Ogron" },
    [6798] = { name = "Blasting Hackbut", questID = 27261, quest = "Questioning Reethe", start = "Ogron" },
    [7298] = { name = "Blade of Cunning", questID = 2206, quest = "Snatch and Grab", start = "Master Mathias Shaw" },
    [9513] = { name = "Ley Staff", questID = 9404, quest = "Recently Living", start = "Instructor Antheol" },
    [10544] = { name = "Thistlewood Maul", questID = 28726, quest = "Webwood Corruption", start = "Tarindrella" },
    [10547] = { name = "Camping Knife", questID = 25792, quest = "Pushing Forward", start = "Captain Tharran" },
    [12446] = { name = "Anvilmar Musket", questID = 182, quest = "The Troll Menace", start = "Grelin Whitebeard" },
    [16890] = { name = "Slatemetal Cutlass", questID = 6544, quest = "Torek's Assault", start = "Torek" },
    [19106] = { name = "Ice Barbed Spear", questID = 8271, quest = "Hero of the Stormpike", start = "Prospector Stonehewer" },
    [19107] = { name = "Bloodseeker", questID = 8271, quest = "Hero of the Stormpike", start = "Prospector Stonehewer" },
    [19108] = { name = "Wand of Biting Cold", questID = 8271, quest = "Hero of the Stormpike", start = "Prospector Stonehewer" },
    [20646] = { name = "Sandstrider's Mark", questID = 8283, quest = "Wanted - Deathclasp, Terror of the Sands", start = "Wanted Poster: Deathclasp" },
    [20647] = { name = "Black Crystal Dagger", questID = 8283, quest = "Wanted - Deathclasp, Terror of the Sands", start = "Wanted Poster: Deathclasp" },
    [20648] = { name = "Cold Forged Hammer", questID = 8271, quest = "Hero of the Stormpike", start = "Prospector Stonehewer" },
    [20724] = { name = "Corrupted Blackwood Staff", questID = 8306, quest = "Into The Maw of Madness", start = "Commander Mar'alith" },
    [21275] = { name = "Blessed Qiraji Augur Staff", questID = 8790, quest = "Imperial Qiraji Regalia", start = "Merithra of the Dream" },

    ------------------------------------------------------------
    -- THE BURNING CRUSADE (gap2 pass)
    ------------------------------------------------------------
    [20835] = { name = "Sunstrider Sword", questID = 8334, quest = "Aggression", start = "Lanthan Perilon" },
    [22963] = { name = "Ranger's Pocketknife", questID = 8477, quest = "The Spearcrafter's Hammer", start = "Arathel Sunforge" },
    [22969] = { name = "Ven'jashi's Bow", questID = 8479, quest = "Zul'Marosh", start = "Ven'jashi" },
    [23390] = { name = "Exodar Bastard Sword", questID = 9311, quest = "Blood Elf Spy", start = "Tolaan" },
    [23391] = { name = "Exodar Dagger", questID = 9311, quest = "Blood Elf Spy", start = "Tolaan" },
    [23396] = { name = "Slightly Used Ranger's Blade", questID = 8885, quest = "The Ring of Mmmrrrggglll", start = "Hathvelion Sungaze" },
    [23431] = { name = "Mercenary Stiletto", questID = 10350, quest = "Behomat", start = "Ruada" },
    [24351] = { name = "Mace of the Hand", questID = 9759, quest = "Ending Their World", start = "Demolitionist Legoso" },
    [24352] = { name = "Blade of the Hand", questID = 9759, quest = "Ending Their World", start = "Demolitionist Legoso" },
    [24353] = { name = "Crossbow of the Hand", questID = 9759, quest = "Ending Their World", start = "Demolitionist Legoso" },
    [24354] = { name = "Staff of the Hand", questID = 9759, quest = "Ending Their World", start = "Demolitionist Legoso" },
    [24431] = { name = "McWeaksauce's Meat Tenderizer", questID = 9537, quest = "Show Gnomercy", start = "Admiral Odesyus" },
    [24432] = { name = "The Shell Cracker", questID = 9537, quest = "Show Gnomercy", start = "Admiral Odesyus" },
    [25519] = { name = "Warden's Hammer", questID = 9752, quest = "Escape from Umbrafen", start = "Kayra Longmane" },
    [25536] = { name = "Sporeggar Smasher", questID = 9729, quest = "Fhwoor Smash!", start = "Fhwoor" },
    [25537] = { name = "Hewing Axe of the Marsh", questID = 9729, quest = "Fhwoor Smash!", start = "Fhwoor" },
    [25538] = { name = "Sporeling Claw", questID = 9729, quest = "Fhwoor Smash!", start = "Fhwoor" },
    [25543] = { name = "Talbuk Sticker", questID = 9859, quest = "Talbuk Mastery", start = "Harold Lane" },
    [25544] = { name = "Zerid's Vintage Musket", questID = 9900, quest = "Gava'xi", start = "Zerid" },
    [25545] = { name = "Talbuk Dirk", questID = 9859, quest = "Talbuk Mastery", start = "Harold Lane" },
    [25553] = { name = "Exodar Staff", questID = 9311, quest = "Blood Elf Spy", start = "Tolaan" },
    [25603] = { name = "Lantresor's Warblade", questID = 9933, quest = "Message to Telaar", start = "Lantresor of the Blade" },
    [25608] = { name = "Lantresor's Warblade", questID = 9934, quest = "Message to Garadar", start = "Lantresor of the Blade" },
    [25622] = { name = "Staff of the Four Golden Coins", questID = 9907, quest = "An Audacious Advance", start = "Jorin Deadeye" },
    [25629] = { name = "Ogre Handler's Shooter", questID = 9916, quest = "Bleeding Hollow Supply Crates", start = "Elkay'gan the Mystic" },
    [25632] = { name = "Wand of Happiness", questID = 9924, quest = "Corki's Gone Missing Again!", start = "Arechron" },
    [25639] = { name = "Hemet's Elekk Gun", questID = 9852, quest = "The Ultimate Bloodsport", start = "Hemet Nesingwary" },
    [25640] = { name = "Nesingwary Safari Stick", questID = 9852, quest = "The Ultimate Bloodsport", start = "Hemet Nesingwary" },
    [25759] = { name = "Mogor's Anointing Club", questID = 9977, quest = "The Ring of Blood: The Final Challenge", start = "Gurgthock" },
    [25760] = { name = "Battle Mage's Baton", questID = 9977, quest = "The Ring of Blood: The Final Challenge", start = "Gurgthock" },
    [25761] = { name = "Staff of Beasts", questID = 9977, quest = "The Ring of Blood: The Final Challenge", start = "Gurgthock" },
    [25762] = { name = "Honed Voidaxe", questID = 9977, quest = "The Ring of Blood: The Final Challenge", start = "Gurgthock" },
    [25763] = { name = "Ceremonial Warmaul Blood-Blade", questID = 9977, quest = "The Ring of Blood: The Final Challenge", start = "Gurgthock" },
    [25764] = { name = "Mag'hari Fury Brand", questID = 9977, quest = "The Ring of Blood: The Final Challenge", start = "Gurgthock" },
    [25772] = { name = "Crystalline Kopesh", questID = 9937, quest = "WANTED: Durn the Hungerer", start = "Warden Bullrok" },
    [25773] = { name = "Hungering Bone Cudgel", questID = 9937, quest = "WANTED: Durn the Hungerer", start = "Warden Bullrok" },
    [25774] = { name = "Azure Lightblade", questID = 9937, quest = "WANTED: Durn the Hungerer", start = "Warden Bullrok" },
    [25806] = { name = "Nethekurse's Rod of Torment", questID = 29654, quest = "Turning the Tide", start = "Advance Scout Chadwick" },
    [25808] = { name = "Rod of Dire Shadows", questID = 29653, quest = "The Will of the Warchief", start = "Stone Guard Stok'ton" },
    [25916] = { name = "Terokkar Axe", questID = 10051, quest = "Escape from Firewing Point!", start = "Isla Starmane" },
    [25917] = { name = "Healer's Staff of the Forest", questID = 10051, quest = "Escape from Firewing Point!", start = "Isla Starmane" },
    [25918] = { name = "Blood-Guided Knife", questID = 10051, quest = "Escape from Firewing Point!", start = "Isla Starmane" },
    [25933] = { name = "Extra Sharp Blade", questID = 10042, quest = "Kill the Shadow Council!", start = "Private Weeks" },
    [25934] = { name = "Spiked Destroyer", questID = 10042, quest = "Kill the Shadow Council!", start = "Private Weeks" },
    [25935] = { name = "Invincible Stave", questID = 10042, quest = "Kill the Shadow Council!", start = "Private Weeks" },
    [25971] = { name = "Stout Oak Longbow", questID = 10007, quest = "Thinning the Ranks", start = "Theloria Shadecloak" },
    [25972] = { name = "Deadeye's Piece", questID = 10007, quest = "Thinning the Ranks", start = "Theloria Shadecloak" },
    [25973] = { name = "Dark Augur's Wand", questID = 10007, quest = "Thinning the Ranks", start = "Theloria Shadecloak" },
    [25985] = { name = "Cenarion Naturalist's Staff", questID = 10255, quest = "Testing the Antidote", start = "Thiah Redmane" },
    [26050] = { name = "Fist of Argus", questID = 9694, quest = "Blood Watch", start = "Vindicator Boros" },
    [26052] = { name = "Vindicator's Smasher", questID = 9703, quest = "The Cryo-Core", start = "Vindicator Kuros" },
    [26054] = { name = "Blade of Argus", questID = 9694, quest = "Blood Watch", start = "Vindicator Boros" },
    [27390] = { name = "Vindicator's Letter Opener", questID = 9703, quest = "The Cryo-Core", start = "Vindicator Kuros" },
    [27640] = { name = "Hand of Argus Crossfire", questID = 9694, quest = "Blood Watch", start = "Vindicator Boros" },
    [27641] = { name = "Vindicator's Walking Stick", questID = 9703, quest = "The Cryo-Core", start = "Vindicator Kuros" },
    [27749] = { name = "Staff of the Wild", questID = 9726, quest = "Now That We're Friends...", start = "Gzhun'tt" },
    [27750] = { name = "Hammer of the Sporelings", questID = 9726, quest = "Now That We're Friends...", start = "Gzhun'tt" },
    [27751] = { name = "Survivalist's Pike", questID = 9726, quest = "Now That We're Friends...", start = "Gzhun'tt" },
    [27752] = { name = "Zangarmarsh Claymore", questID = 9726, quest = "Now That We're Friends...", start = "Gzhun'tt" },
    [27753] = { name = "Ensorcelled Marshfang Blade", questID = 9833, quest = "Lines of Communication", start = "Puluu" },
    [27754] = { name = "Keen Marshfang Slicer", questID = 9833, quest = "Lines of Communication", start = "Puluu" },
    [27756] = { name = "Marshfang Blade Axe", questID = 9833, quest = "Lines of Communication", start = "Puluu" },
    [28062] = { name = "Expedition Repeater", questID = 10132, quest = "Colossal Menace", start = "Tola'thion" },
    [28063] = { name = "Survivalist's Wand", questID = 10132, quest = "Colossal Menace", start = "Tola'thion" },
    [28151] = { name = "Arcanist's Wand", questID = 9140, quest = "Windrunner Village", start = "Arcanist Vandril" },
    [29109] = { name = "Rod of the Unyielding", questID = 10258, quest = "Honor the Fallen", start = "Althen the Historian" },
    [29329] = { name = "Terokk's Quill", questID = 29606, quest = "Terokk's Legacy", start = "Isfar" },
    [29779] = { name = "Rejuvenating Scepter", questID = 10176, quest = "Ar'kelos the Guardian", start = "Image of Archmage Vargoth" },
    [29908] = { name = "Rage Reaver", questID = 10123, quest = "Felspark Ravine", start = "Sergeant Shatterskull" },
    [29909] = { name = "Screaming Dagger", questID = 10123, quest = "Felspark Ravine", start = "Sergeant Shatterskull" },
    [29910] = { name = "The Staff of Twin Worlds", questID = 10123, quest = "Felspark Ravine", start = "Sergeant Shatterskull" },
    [29911] = { name = "Agamaggan's Quill", questID = 10123, quest = "Felspark Ravine", start = "Sergeant Shatterskull" },
    [29913] = { name = "Foe Reaver", questID = 10123, quest = "Felspark Ravine", start = "Sergeant Shatterskull" },
    [29914] = { name = "Hellfire Skiver", questID = 10450, quest = "Bonechewer Blood", start = "Vurtok Axebreaker" },
    [29915] = { name = "Desolation Rod", questID = 10450, quest = "Bonechewer Blood", start = "Vurtok Axebreaker" },
    [29916] = { name = "Ironstar Repeater", questID = 10450, quest = "Bonechewer Blood", start = "Vurtok Axebreaker" },
    [30226] = { name = "Alley's Recurve", questID = 10191, quest = "Mark V is Alive!", start = "Maxx A. Million Mk. V" },
    [30252] = { name = "Unearthed Enkaat Wand", questID = 10191, quest = "Mark V is Alive!", start = "Maxx A. Million Mk. V" },
    [31002] = { name = "Summoner's Blade", questID = 10651, quest = "Varedis Must Be Stopped", start = "Exarch Onaala" },
    [31009] = { name = "Wildcaller", questID = 10651, quest = "Varedis Must Be Stopped", start = "Exarch Onaala" },
    [31010] = { name = "Slayer's Axe", questID = 10651, quest = "Varedis Must Be Stopped", start = "Exarch Onaala" },
    [31013] = { name = "Ceremonial Kris", questID = 10651, quest = "Varedis Must Be Stopped", start = "Exarch Onaala" },
    [31422] = { name = "Heavy Elven Dirk", questID = 10690, quest = "The Den Mother", start = "Wanted Poster" },
    [31492] = { name = "Claw of the Netherwing Flight", questID = 10870, quest = "Ally of the Netherwing", start = "Karynaku" },
    [31541] = { name = "Whistling Sword", questID = 10723, quest = "Gorgrom the Dragon-Eater", start = "Rexxar" },
    [31542] = { name = "Fanged Axe", questID = 10723, quest = "Gorgrom the Dragon-Eater", start = "Rexxar" },
    [31543] = { name = "Adjudicator's Staff", questID = 10723, quest = "Gorgrom the Dragon-Eater", start = "Rexxar" },
    [31723] = { name = "Madman's Blade", questID = 9951, quest = "It's Watching You!", start = "Warden Treelos" },
    [31724] = { name = "Arakkoa Divining Rod", questID = 10112, quest = "A Personal Favor", start = "Wind Trader Lathrai" },
    [31762] = { name = "Feather-Wrapped Bow", questID = 10848, quest = "Veil Rhaze: Unliving Evil", start = "Kirrik the Awakened" },
    [31785] = { name = "Edge of Inevitability", questID = 10446, quest = "The Final Code", start = "Lieutenant Meridian" },
    [33267] = { name = "Fleshripper", questID = 27237, quest = "Recover the Cargo!", start = "Renn McGill" },
    [33268] = { name = "Bone Dirk", questID = 27427, quest = "Arms of the Grimtotems", start = "Captain Darill" },
    [33271] = { name = "Battlecaster's Edge", questID = 27291, quest = "Peace at Last", start = "Captain Garran Vimes" },
    [33273] = { name = "Seasoned Marshwood Bow", questID = 27339, quest = "The Reagent Thief", start = "Apprentice Garion" },

    ------------------------------------------------------------
    -- WRATH OF THE LICH KING (gap2 pass)
    ------------------------------------------------------------
    [35807] = { name = "Bramblethorn Greatstaff", questID = 11233, quest = "Landing the Killing Blow", start = "Dark Ranger Lyana" },
    [35808] = { name = "Coldstone Cutlass", questID = 11233, quest = "Landing the Killing Blow", start = "Dark Ranger Lyana" },
    [35809] = { name = "Earthspike", questID = 11233, quest = "Landing the Killing Blow", start = "Dark Ranger Lyana" },
    [35810] = { name = "Pacifying Pummeler", questID = 11233, quest = "Landing the Killing Blow", start = "Dark Ranger Lyana" },
    [35811] = { name = "Elekk-Horn Crossbow", questID = 11233, quest = "Landing the Killing Blow", start = "Dark Ranger Lyana" },
    [35812] = { name = "Cragthumper", questID = 11233, quest = "Landing the Killing Blow", start = "Dark Ranger Lyana" },
    [35823] = { name = "Ice-Rimed Dagger", questID = 11241, quest = "Trail of Fire", start = "Apothecary Hanes" },
    [35824] = { name = "Stoneblade Slicer", questID = 11241, quest = "Trail of Fire", start = "Apothecary Hanes" },
    [35826] = { name = "Whelpling-Skull Zapper", questID = 11241, quest = "Trail of Fire", start = "Apothecary Hanes" },
    [35827] = { name = "Regal Sceptre", questID = 11241, quest = "Trail of Fire", start = "Apothecary Hanes" },
    [35829] = { name = "Coldspike Longbow", questID = 11241, quest = "Trail of Fire", start = "Apothecary Hanes" },
    [35830] = { name = "Worn Vrykul Smasher", questID = 11241, quest = "Trail of Fire", start = "Apothecary Hanes" },
    [35849] = { name = "Featherweight Claymore", questID = 11305, quest = "A Tailor-Made Formula", start = "Chief Plaguebringer Harris" },
    [35851] = { name = "Acid-Etched Knuckles", questID = 11305, quest = "A Tailor-Made Formula", start = "Chief Plaguebringer Harris" },
    [35852] = { name = "Fullered Coldsteel Dagger", questID = 11305, quest = "A Tailor-Made Formula", start = "Chief Plaguebringer Harris" },
    [35856] = { name = "Hair-Trigger Blunderbuss", questID = 11305, quest = "A Tailor-Made Formula", start = "Chief Plaguebringer Harris" },
    [36878] = { name = "Writhing Longstaff", questID = 11602, quest = "Cutting Off the Source", start = "Overlord Razgor" },
    [36879] = { name = "Soldier's Spiked Mace", questID = 11602, quest = "Cutting Off the Source", start = "Overlord Razgor" },
    [36880] = { name = "Vicious Spellblade", questID = 11602, quest = "Cutting Off the Source", start = "Overlord Razgor" },
    [36881] = { name = "Medic's Morning Star", questID = 11602, quest = "Cutting Off the Source", start = "Overlord Razgor" },
    [36883] = { name = "Combatant Greatsword", questID = 11602, quest = "Cutting Off the Source", start = "Overlord Razgor" },
    [37015] = { name = "Dowsing Rod", questID = 11872, quest = "The Nefarious Clam Master...", start = "Hierophant Liandra" },
    [37018] = { name = "G.E.H.T.A.", questID = 11872, quest = "The Nefarious Clam Master...", start = "Hierophant Liandra" },
    [37021] = { name = "Claw of the Tuskarr", questID = 11613, quest = "Karuk's Oath", start = "Karuk" },
    [37022] = { name = "Shark Stabber", questID = 11613, quest = "Karuk's Oath", start = "Karuk" },
    [37023] = { name = "Compact Arrow Launcher", questID = 11613, quest = "Karuk's Oath", start = "Karuk" },
    [37025] = { name = "Blubber Carver", questID = 11613, quest = "Karuk's Oath", start = "Karuk" },
    [37029] = { name = "Fin Carver", questID = 11968, quest = "The Tides Turn", start = "Elder Muahit" },
    [37030] = { name = "Blubber Grinder", questID = 11968, quest = "The Tides Turn", start = "Elder Muahit" },
    [37032] = { name = "Edge of the Tuskarr", questID = 11968, quest = "The Tides Turn", start = "Elder Muahit" },
    [37034] = { name = "Lobstrock Slicer", questID = 11560, quest = "Oh Noes, the Tadpoles!", start = "King Mrgl-Mrgl" },
    [37036] = { name = "Fish-Eye Poker", questID = 11570, quest = "Escape from the Winterfin Caverns", start = "Lurgglbr" },
    [37039] = { name = "Mrgl Blade", questID = 11570, quest = "Escape from the Winterfin Caverns", start = "Lurgglbr" },
    [37041] = { name = "Scepter of the Winterfin", questID = 11570, quest = "Escape from the Winterfin Caverns", start = "Lurgglbr" },
    [37042] = { name = "Glimmering Orca Tooth", questID = 11570, quest = "Escape from the Winterfin Caverns", start = "Lurgglbr" },
    [37044] = { name = "Amphibious Speargun", questID = 11570, quest = "Escape from the Winterfin Caverns", start = "Lurgglbr" },
    [37046] = { name = "Shell Smasher", questID = 11570, quest = "Escape from the Winterfin Caverns", start = "Lurgglbr" },
    [37047] = { name = "Branch of Everlasting Flame", questID = 11638, quest = "Return My Remains", start = "Farseer Grimwalker's Spirit" },
    [37049] = { name = "Lost Marksman's Rifle", questID = 11638, quest = "Return My Remains", start = "Farseer Grimwalker's Spirit" },
    [37054] = { name = "Frostbiter", questID = 11670, quest = "It Was The Orcs, Honest!", start = "Crafty Wobblesprocket" },
    [37072] = { name = "Jagged Icefist", questID = 11670, quest = "It Was The Orcs, Honest!", start = "Crafty Wobblesprocket" },
    [37073] = { name = "Hungering Greatstaff", questID = 11670, quest = "It Was The Orcs, Honest!", start = "Crafty Wobblesprocket" },
    [37075] = { name = "Serrated Scale Shank", questID = 11969, quest = "Springing the Trap", start = "Raelorasz" },
    [37077] = { name = "Smoldering Talon", questID = 11969, quest = "Springing the Trap", start = "Raelorasz" },
    [37080] = { name = "Crimson Will", questID = 11969, quest = "Springing the Trap", start = "Raelorasz" },
    [37535] = { name = "Stave of the Windborn", questID = 11909, quest = "Defeat the Gearmaster", start = "Greatmother Taiga" },
    [37547] = { name = "Fireborn Warhammer", questID = 11909, quest = "Defeat the Gearmaster", start = "Greatmother Taiga" },
    [38128] = { name = "Staff of the Spiked Beast", questID = 12032, quest = "Conversing With the Depths", start = "Elder Mana'loa" },
    [38129] = { name = "Staff of the Ley Mender", questID = 12107, quest = "The End of the Line", start = "Mage-Commander Evenstar" },
    [38130] = { name = "Emme's Lost Spellblade", questID = 12151, quest = "Wanton Warlord", start = "Aurastrasza" },
    [38131] = { name = "Staff of Ruby Wood", questID = 12111, quest = "Where the Wild Things Roam", start = "Soar Hawkfury" },
    [38132] = { name = "Moonrest Garden Stave", questID = 12111, quest = "Where the Wild Things Roam", start = "Soar Hawkfury" },
    [38133] = { name = "Timeshattered Spire", questID = 12470, quest = "Mystery of the Infinite", start = "Chromie" },
    [38134] = { name = "Bloodtinged Spellblade", questID = 12221, quest = "The Forsaken Blight", start = "Chief Plaguebringer Middleton" },
    [38135] = { name = "Mace of the Fallen Raven Priest", questID = 12221, quest = "The Forsaken Blight", start = "Chief Plaguebringer Middleton" },
    [38137] = { name = "Endurance of the Spell Warder", questID = 12089, quest = "WANTED: Magister Keldonus", start = "Wanted!" },
    [38138] = { name = "Keldonus' Missing Spellshard", questID = 12089, quest = "WANTED: Magister Keldonus", start = "Wanted!" },
    [38151] = { name = "Daschal's Discarded Shiv", questID = 12107, quest = "The End of the Line", start = "Mage-Commander Evenstar" },
    [38152] = { name = "Mace of the Violet Guardian", questID = 12107, quest = "The End of the Line", start = "Mage-Commander Evenstar" },
    [38153] = { name = "Mana-Infused Claw", questID = 12107, quest = "The End of the Line", start = "Mage-Commander Evenstar" },
    [38154] = { name = "Taigasha", questID = 12151, quest = "Wanton Warlord", start = "Aurastrasza" },
    [38155] = { name = "Shortblade of the Ruby Ally", questID = 12151, quest = "Wanton Warlord", start = "Aurastrasza" },
    [38156] = { name = "Battered Magnataur Dualblade", questID = 12151, quest = "Wanton Warlord", start = "Aurastrasza" },
    [38169] = { name = "Keen Woodland Shank", questID = 12111, quest = "Where the Wild Things Roam", start = "Soar Hawkfury" },
    [38170] = { name = "Spiked Coldwind Club", questID = 12111, quest = "Where the Wild Things Roam", start = "Soar Hawkfury" },
    [38171] = { name = "Battleworn Magnataur Crusher", questID = 12111, quest = "Where the Wild Things Roam", start = "Soar Hawkfury" },
    [38172] = { name = "Crossbow of the Hardened Ranger", questID = 12111, quest = "Where the Wild Things Roam", start = "Soar Hawkfury" },
    [38173] = { name = "Dagger of the Returning Past", questID = 12470, quest = "Mystery of the Infinite", start = "Chromie" },
    [38174] = { name = "Time-Bending Smasher", questID = 12470, quest = "Mystery of the Infinite", start = "Chromie" },
    [38176] = { name = "Stronghold Battlemace", questID = 12221, quest = "The Forsaken Blight", start = "Chief Plaguebringer Middleton" },
    [38177] = { name = "Siege Captain's Gun", questID = 12221, quest = "The Forsaken Blight", start = "Chief Plaguebringer Middleton" },
    [38178] = { name = "Battlement Enforcer's Axe", questID = 12221, quest = "The Forsaken Blight", start = "Chief Plaguebringer Middleton" },
    [38181] = { name = "Warblade of the Forgotten Footman", questID = 12303, quest = "Funding the War Effort", start = "Quartermaster Bartlett" },
    [38188] = { name = "Claw of the Undead Ravager", questID = 12545, quest = "The Cleansing Of Jintha'kalar", start = "Crusader Valus" },
    [38190] = { name = "Scourgeslayer's Shank", questID = 12545, quest = "The Cleansing Of Jintha'kalar", start = "Crusader Valus" },
    [38194] = { name = "Mageslayer Rifle", questID = 12089, quest = "WANTED: Magister Keldonus", start = "Wanted!" },
    [38196] = { name = "Bloodsmeared Brutalizer", questID = 12089, quest = "WANTED: Magister Keldonus", start = "Wanted!" },
    [38197] = { name = "Mounted Boneshredder", questID = 12050, quest = "Lumber Hack", start = "Xink" },
    [38198] = { name = "Joint-Severing Quickblade", questID = 12545, quest = "The Cleansing Of Jintha'kalar", start = "Crusader Valus" },
    [38202] = { name = "Twig of Happy Reminders", questID = 12470, quest = "Mystery of the Infinite", start = "Chromie" },
    [38206] = { name = "Wand of Blinding Light", questID = 12545, quest = "The Cleansing Of Jintha'kalar", start = "Crusader Valus" },
    [38207] = { name = "Wand of Purifying Fire", questID = 12545, quest = "The Cleansing Of Jintha'kalar", start = "Crusader Valus" },
    [38237] = { name = "Axe of Frozen Death", questID = 11916, quest = "Hellscream's Champion", start = "Garrosh Hellscream" },
    [38238] = { name = "Borean Smasher", questID = 11916, quest = "Hellscream's Champion", start = "Garrosh Hellscream" },
    [38239] = { name = "Tower of the Infinite Mind", questID = 11916, quest = "Hellscream's Champion", start = "Garrosh Hellscream" },
    [38240] = { name = "Staff of the Purposeful Mendicant", questID = 11916, quest = "Hellscream's Champion", start = "Garrosh Hellscream" },
    [38241] = { name = "Fury of the Raging Dragon", questID = 11916, quest = "Hellscream's Champion", start = "Garrosh Hellscream" },
    [38242] = { name = "Fang of the Desolate Soul", questID = 11916, quest = "Hellscream's Champion", start = "Garrosh Hellscream" },
    [39109] = { name = "Branch of the Roaming Spirit", questID = 12099, quest = "Free at Last", start = "Gavrock" },
    [39112] = { name = "Talon of Freedom", questID = 12099, quest = "Free at Last", start = "Gavrock" },
    [39113] = { name = "Jagged Troll Render", questID = 12152, quest = "Jin'arrak's End", start = "Kraz" },
    [39114] = { name = "Axe of the Warlord's Demise", questID = 12152, quest = "Jin'arrak's End", start = "Kraz" },
    [39115] = { name = "Axe of Bloodstained Ice", questID = 13349, quest = "Cradle of the Frostbrood", start = "Koltira Deathweaver" },
    [39117] = { name = "Liberator's Blade", questID = 12099, quest = "Free at Last", start = "Gavrock" },
    [39119] = { name = "Bondsniper", questID = 12099, quest = "Free at Last", start = "Gavrock" },
    [39121] = { name = "Cultist's Cauldron Stirrer", questID = 13321, quest = "Retest Now", start = "Chief Engineer Boltwrench" },
    [39125] = { name = "Beaked Dagger", questID = 12152, quest = "Jin'arrak's End", start = "Kraz" },
    [39127] = { name = "Serrated Cold-Iron Slicer", questID = 12152, quest = "Jin'arrak's End", start = "Kraz" },
    [39129] = { name = "Spike of Renounced Autonomy", questID = 11984, quest = "Filling the Cages", start = "Samir" },
    [39130] = { name = "Corrupter's Shanker", questID = 13349, quest = "Cradle of the Frostbrood", start = "Koltira Deathweaver" },
    [39131] = { name = "Warbling Crossbow", questID = 11984, quest = "Filling the Cages", start = "Samir" },
    [39132] = { name = "Sword of the Caged Mind", questID = 11984, quest = "Filling the Cages", start = "Samir" },
    [39133] = { name = "Necrolord's Sacrificial Dagger", questID = 13349, quest = "Cradle of the Frostbrood", start = "Koltira Deathweaver" },
    [39134] = { name = "Bow of Regression", questID = 13321, quest = "Retest Now", start = "Chief Engineer Boltwrench" },
    [39135] = { name = "Wyrmstalker's Bow", questID = 13349, quest = "Cradle of the Frostbrood", start = "Koltira Deathweaver" },
    [39136] = { name = "Reanimator's Hacker", questID = 13349, quest = "Cradle of the Frostbrood", start = "Koltira Deathweaver" },
    [39143] = { name = "Writhing Mace", questID = 13321, quest = "Retest Now", start = "Chief Engineer Boltwrench" },
    [39144] = { name = "Twisted Hooligan Whacker", questID = 13321, quest = "Retest Now", start = "Chief Engineer Boltwrench" },
    [39486] = { name = "Hemet's Trophy Gun", questID = 12614, quest = "Post-partum Aggression", start = "Dorian Drakestalker" },
    [39487] = { name = "Dragon Slayer's Shortbow", questID = 12614, quest = "Post-partum Aggression", start = "Dorian Drakestalker" },
    [39488] = { name = "Nesingwary Brush Burner", questID = 12614, quest = "Post-partum Aggression", start = "Dorian Drakestalker" },
    [39784] = { name = "Staff of the Dutybound", questID = 12555, quest = "A Tangled Skein", start = "Specialist Cogwheel" },
    [39802] = { name = "Crusader's Greatblade", questID = 12609, quest = "Stocking the Shelves", start = "Captain Arnath" },
    [39806] = { name = "Blade of Diligence", questID = 12555, quest = "A Tangled Skein", start = "Specialist Cogwheel" },
    [39808] = { name = "Staff of Diligence", questID = 12555, quest = "A Tangled Skein", start = "Specialist Cogwheel" },
    [39818] = { name = "Frigid Crossbow", questID = 12707, quest = "Wooly Justice", start = "Scalper Ahunae" },
    [39820] = { name = "Blade of Valorous Service", questID = 12740, quest = "Parachutes for the Argent Crusade", start = "Commander Falstaav" },
    [39822] = { name = "Knife of the Dutybound", questID = 12555, quest = "A Tangled Skein", start = "Specialist Cogwheel" },
    [39823] = { name = "Dutybound Mace of Purity", questID = 12555, quest = "A Tangled Skein", start = "Specialist Cogwheel" },
    [39824] = { name = "Cleaver of Diligence", questID = 12555, quest = "A Tangled Skein", start = "Specialist Cogwheel" },
    [39826] = { name = "Bloodletter's Blade", questID = 12685, quest = "You Reap What You Sow", start = "Har'koa" },
    [39829] = { name = "High-Strung Bow", questID = 12609, quest = "Stocking the Shelves", start = "Captain Arnath" },
    [39830] = { name = "Fist of Subtlety", questID = 12661, quest = "Infiltrating Voltarus", start = "Stefan Vadu" },
    [39852] = { name = "Victorious Spellblade", questID = 12609, quest = "Stocking the Shelves", start = "Captain Arnath" },
    [39853] = { name = "Thorny Bough of the Light", questID = 12609, quest = "Stocking the Shelves", start = "Captain Arnath" },
    [39865] = { name = "Knuckle of Victory", questID = 12609, quest = "Stocking the Shelves", start = "Captain Arnath" },
    [41987] = { name = "Staff of the Sorrowful Chieftain", questID = 12857, quest = "WANTED: Ragemane's Flipper", start = "Wanted!" },
    [42786] = { name = "Daschal's Serrated Blade", questID = 12832, quest = "Bitter Departure", start = "Injured Goblin Miner" },
    [42794] = { name = "Hardened Vine of the Mauler", questID = 12872, quest = "Norgannon's Shell", start = "Inventor's Library Console" },
    [42799] = { name = "Snowblind Butcher", questID = 12832, quest = "Bitter Departure", start = "Injured Goblin Miner" },
    [42807] = { name = "Blade of the Inception", questID = 12872, quest = "Norgannon's Shell", start = "Inventor's Library Console" },
    [42811] = { name = "Twisted Reflection", questID = 12832, quest = "Bitter Departure", start = "Injured Goblin Miner" },
    [42819] = { name = "Maker's Touch", questID = 12872, quest = "Norgannon's Shell", start = "Inventor's Library Console" },
    [42822] = { name = "K3 Pachyderm Prevention Device", questID = 12828, quest = "Ample Inspiration", start = "Ricket" },
    [42823] = { name = "Ricket's Beatstick", questID = 12824, quest = "Demolitionist Extraordinaire", start = "Gino" },
    [42824] = { name = "Maker's Edge", questID = 12872, quest = "Norgannon's Shell", start = "Inventor's Library Console" },
    [42828] = { name = "Garm's Ward", questID = 12832, quest = "Bitter Departure", start = "Injured Goblin Miner" },
    [42831] = { name = "Maiden's Dagger", questID = 12872, quest = "Norgannon's Shell", start = "Inventor's Library Console" },
    [42848] = { name = "Razor-Sharp Icicle", questID = 13051, quest = "Territorial Trespass", start = "Thorim" },
    [42861] = { name = "Jormungar Fang", questID = 12989, quest = "The Slithering Darkness", start = "Astrid Bjornrittar" },
    [42862] = { name = "Hyldnir Painbringer", questID = 12942, quest = "Off With Their Black Wings", start = "Iva the Vengeful" },
    [42868] = { name = "Hyldnir Headcracker", questID = 12971, quest = "Taking on All Challengers", start = "Lok'lira the Crone" },
    [43185] = { name = "Wand of Chilled Renewal", questID = 12868, quest = "Sirana Iceshriek", start = "Glorthal Stiffbeard" },
    [43186] = { name = "Iceshrieker's Touch", questID = 12868, quest = "Sirana Iceshriek", start = "Glorthal Stiffbeard" },
    [43828] = { name = "Touch of Light", questID = 13039, quest = "Defending The Vanguard", start = "Crusader Lord Dalfors" },
    [43832] = { name = "The Argent Resolve", questID = 13110, quest = "The Restless Dead", start = "Father Gustav" },
    [43833] = { name = "Blade of Echoes", questID = 13110, quest = "The Restless Dead", start = "Father Gustav" },
    [43858] = { name = "Vrykul Crusher", questID = 12992, quest = "Crush Dem Vrykuls!", start = "Vile" },
    [43873] = { name = "Frail Bone Wand", questID = 13161, quest = "The Rider of the Unholy", start = "Vereth the Cunning" },
    [43880] = { name = "Fair Touch of the Crusader", questID = 13211, quest = "By Fire Be Purged", start = "Crusader Olakin Sainrith" },
    [43883] = { name = "Arete's Command", questID = 12840, quest = "In Strict Confidence", start = "Lord-Commander Arete" },
    [43885] = { name = "Scourgehammer", questID = 13275, quest = "Time to Hide", start = "Matthias Lehner" },
    [43888] = { name = "Blunt Brainwasher", questID = 13275, quest = "Time to Hide", start = "Matthias Lehner" },
    [43890] = { name = "Interrogator's Flaming Knuckles", questID = 12840, quest = "In Strict Confidence", start = "Lord-Commander Arete" },
    [43899] = { name = "Sapph's Cleaver", questID = 13162, quest = "The Rider of Frost", start = "Vereth the Cunning" },
    [43911] = { name = "Vile's Poker", questID = 12992, quest = "Crush Dem Vrykuls!", start = "Vile" },
    [43915] = { name = "Pilot's Knife", questID = 13275, quest = "Time to Hide", start = "Matthias Lehner" },
    [43916] = { name = "Mace of the Final Command", questID = 13275, quest = "Time to Hide", start = "Matthias Lehner" },
    [43917] = { name = "Ritualist's Bloodletter", questID = 13275, quest = "Time to Hide", start = "Matthias Lehner" },
    [43918] = { name = "Shooter's Glory", questID = 13275, quest = "Time to Hide", start = "Matthias Lehner" },
    [43927] = { name = "Wrought-Iron Staff", questID = 12992, quest = "Crush Dem Vrykuls!", start = "Vile" },
    [43929] = { name = "Vile's Uglystick", questID = 12992, quest = "Crush Dem Vrykuls!", start = "Vile" },
    [44393] = { name = "Polished Zombie Exterminator", questID = 13346, quest = "No Rest For The Wicked", start = "Thassarian" },
    [44394] = { name = "Encrusted Zombie Finger", questID = 13346, quest = "No Rest For The Wicked", start = "Thassarian" },
    [44395] = { name = "Touch of Unlife", questID = 13346, quest = "No Rest For The Wicked", start = "Thassarian" },
    [44745] = { name = "Blade of the Empty Void", questID = 13364, quest = "Tirion's Gambit", start = "Highlord Tirion Fordring" },
    [44746] = { name = "Knife of the Tarnished Soul", questID = 13364, quest = "Tirion's Gambit", start = "Highlord Tirion Fordring" },
    [44747] = { name = "Hammer of Wrenching Change", questID = 13364, quest = "Tirion's Gambit", start = "Highlord Tirion Fordring" },
    [44748] = { name = "Stave of Youthful Sorrow", questID = 13364, quest = "Tirion's Gambit", start = "Highlord Tirion Fordring" },
    [50046] = { name = "Quel'Delar, Cunning of the Shadows", questID = 24795, quest = "A Victory For The Silver Covenant", start = "Caladis Brightspear" },
    [50047] = { name = "Quel'Delar, Lens of the Mind", questID = 24795, quest = "A Victory For The Silver Covenant", start = "Caladis Brightspear" },
    [50048] = { name = "Quel'Delar, Might of the Faithful", questID = 24795, quest = "A Victory For The Silver Covenant", start = "Caladis Brightspear" },
    [50049] = { name = "Quel'Delar, Ferocity of the Scorned", questID = 24795, quest = "A Victory For The Silver Covenant", start = "Caladis Brightspear" },
    [50050] = { name = "Cudgel of Furious Justice", questID = 24795, quest = "A Victory For The Silver Covenant", start = "Caladis Brightspear" },
    [50051] = { name = "Hammer of Purified Flame", questID = 24795, quest = "A Victory For The Silver Covenant", start = "Caladis Brightspear" },
    [50052] = { name = "Lightborn Spire", questID = 24795, quest = "A Victory For The Silver Covenant", start = "Caladis Brightspear" },

    ------------------------------------------------------------
    -- LEGION (gap2 pass)
    ------------------------------------------------------------
    [131733] = { name = "Spear of Rethu", quest = "Neltharion's Lair: Misdirected", start = "Lessah Moonwater" },
    [133699] = { name = "Militia Dagger", quest = "Ending the Invasion!", start = "Marshal McBride" },
    [136582] = { name = "Bonegrinder of the Horde Vanguard", quest = "The Battle for Broken Shore", start = "Stone Guard Mukar" },
    [136583] = { name = "Longbow of the Horde Vanguard", quest = "The Battle for Broken Shore", start = "Stone Guard Mukar" },
    [136584] = { name = "Dagger of the Horde Vanguard", quest = "The Battle for Broken Shore", start = "Stone Guard Mukar" },
    [136587] = { name = "Poleaxe of the Horde Vanguard", quest = "The Battle for Broken Shore", start = "Stone Guard Mukar" },
    [136588] = { name = "Quickblade of the Horde Vanguard", quest = "The Battle for Broken Shore", start = "Stone Guard Mukar" },
    [136589] = { name = "Battle Mace of the Horde Vanguard", quest = "The Battle for Broken Shore", start = "Stone Guard Mukar" },
    [136590] = { name = "Staff of the Horde Vanguard", quest = "The Battle for Broken Shore", start = "Stone Guard Mukar" },
    [138765] = { name = "Stormwind Vanguard Mageblade", quest = "The Battle for Broken Shore", start = "Recruiter Lee" },
    [138766] = { name = "Stormwind Vanguard Stave", quest = "The Battle for Broken Shore", start = "Recruiter Lee" },
    [139292] = { name = "Splitter of the Horde Vanguard", quest = "The Battle for Broken Shore", start = "Stone Guard Mukar" },
    [156933] = { name = "Mori's Pocketknife", quest = "The Lost Pilot", start = "Pilot Hammerfoot" },
    [156934] = { name = "House Wrynn Gavel", quest = "Rise of the Brotherhood", start = "Marshal Gryan Stoutmantle" },
    [156935] = { name = "Kobold Torch", quest = "\"I TAKE Candle!\"", start = "Jimb \\\"Candles\\\" McHannigan" },
    [156936] = { name = "Dark Iron Pike", quest = "Rise, Obsidion", start = "Mountain-Lord Rendan" },
    [156937] = { name = "Dark Iron Blackjack", quest = "They Build a Better Bullet", start = "Mountain-Lord Rendan" },
    [156940] = { name = "Snubnose Blunderbuss", quest = "Pushing Forward", start = "Captain Tharran" },
    [156945] = { name = "Talon Hatchet", quest = "Hunt the Keeper", start = "Primal Torntusk" },
    [156946] = { name = "Goopy Mallet", quest = "Prime Slime", start = "Malcom Fendelson" },
    [156952] = { name = "Adversarial Blackjack", quest = "Our Mortal Enemies", start = "\\\"Dead-Eye\\\" Drederick McGumm" },
    [156953] = { name = "'Liberated' Greataxe", quest = "Detonation", start = "John J. Keeshan" },
    [156954] = { name = "Refurbished Archeus", quest = "A Daughter's Love", start = "Watcher Ladimore" },
    [156955] = { name = "Reconditioned Archeus", quest = "A Daughter's Love", start = "Watcher Ladimore" },
    [156959] = { name = "Emil's Staff", quest = "Insane Druids", start = "Gaivan Shadewalker" },
    [156961] = { name = "Martek's Stick of Truthiness", quest = "The Day that Deathwing Came: What Really Happened", start = "Martek the Exiled" },
    [156962] = { name = "Genuine Deathwing Fang", quest = "The Day that Deathwing Came: What Really Happened", start = "Martek the Exiled" },
    [156964] = { name = "Clutch Rearrangement Tool", quest = "Done Nothing Wrong", start = "Mouton Flamestar" },
    [156965] = { name = "Enchanted Scorpid Tail", quest = "Stocking Up", start = "John J. Keeshan" },
    [156973] = { name = "Archivist's Staff", quest = "The Stolen Letters", start = "Clerk Daltry" },
    [156974] = { name = "Archivist's Walking Stick", quest = "The Stolen Letters", start = "Clerk Daltry" },
    [156975] = { name = "Exorcist's Dagger", quest = "Roland's Doom", start = "Clerk Daltry" },
    [156976] = { name = "Staff of Memory", quest = "Peace at Last", start = "Captain Garran Vimes" },
    [156977] = { name = "Serrated Gladius", quest = "Recover the Cargo!", start = "Renn McGill" },
    [156978] = { name = "Cauldron Cracker", quest = "Just a Drop in the Bucket", start = "Betina Bigglezink" },
    [156979] = { name = "Cauldron Dredger", quest = "Just a Drop in the Bucket", start = "Betina Bigglezink" },
    [156982] = { name = "Shadow Hold Dagger", quest = "The Inner Circle", start = "Jessir Moonbow" },
    [156990] = { name = "Crystal-Chipping Mallet", quest = "Venture Company Mining", start = "Skeezy Whillzap" },
    [156991] = { name = "Shredder Arm Extension", quest = "Venture Company Mining", start = "Krazek" },
    [156999] = { name = "Mok'Morokk's Headcracker", quest = "Challenge Overlord Mok'Morokk", start = "Overlord Mok'Morokk" },
    [157000] = { name = "Fuse-Cutter Knife", quest = "The Final Voyage of the Brashtide", start = "Baron Revilgaz" },
    [157001] = { name = "Everstill Hewer", quest = "Lake Everstill Clean Up", start = "Bailiff Conacher" },
    [157002] = { name = "Exorcist's Crossbow", quest = "Roland's Doom", start = "Clerk Daltry" },
    [157003] = { name = "Corpseweed Hewer", quest = "A Deadly Vine", start = "Apprentice Fess" },
    [157007] = { name = "Militia Dagger", quest = "Hidden Treasures", start = "Pamela Redpath" },
    [157009] = { name = "Dark Iron Shank", quest = "They Build a Better Bullet", start = "Mountain-Lord Rendan" },
    [157010] = { name = "Dark Iron Maul", quest = "They Build a Better Bullet", start = "Mountain-Lord Rendan" },
    [157011] = { name = "Envenomed Scorpid Tail", quest = "Stocking Up", start = "John J. Keeshan" },
    [157012] = { name = "Broken Silversnap Bottle", quest = "Drinks on the Rocks", start = "Brono Goodgroove" },
    [157013] = { name = "Ogre Mage Club", quest = "Tides of Darkness", start = "Joanna Blueheart" },
    [157017] = { name = "Deep-Sea Retrieval Hook", quest = "We All Scream for Ice Cream... and then Die!", start = "Brivelthwerp" },
    [157018] = { name = "Oversized Mixing Agitator", quest = "We All Scream for Ice Cream... and then Die!", start = "Brivelthwerp" },
    [157019] = { name = "Lakota's Gavel", quest = "Something to Wear", start = "Lakota Windsong" },
    [157021] = { name = "Staff of Haunted Memory", quest = "Pain of the Blood Elves", start = "Sin'dorei Spirit" },
    [157025] = { name = "Windserpent Fang", quest = "Invoking the Serpent", start = "Lakota Windsong" },
    [157547] = { name = "Keen Marshfang Shanker", quest = "Lines of Communication", start = "Puluu" },
    [157550] = { name = "Vir'naal Cleaver", quest = "Tanotep's Son", start = "Vizier Tanotep" },
    [157551] = { name = "Tombbreaker Gavel", quest = "The Curse of the Tombs", start = "Sun Prophet Tumet" },

    ------------------------------------------------------------
    -- BATTLE FOR AZEROTH (gap2 pass)
    ------------------------------------------------------------
    [155053] = { name = "Scaleterror Slicer", quest = "The Deadliest Catch", start = "Rosaline Madison" },
    [155054] = { name = "Reveler's Edge", quest = "No Party Like a Trogg Party", start = "Lord Aldrius Norwington" },
    [155057] = { name = "Anglepoint Repeater", quest = "The Deadliest Catch", start = "Rosaline Madison" },
    [155058] = { name = "Irontide Gambler's Dagger", quest = "The Irontide Crew", start = "Flynn Fairwind" },
    [155059] = { name = "Sea Priest's Spellblade", quest = "The Deadliest Catch", start = "Rosaline Madison" },
    [155064] = { name = "Wharf-Porter Cudgel", quest = "The Deadliest Catch", start = "Rosaline Madison" },
    [155065] = { name = "Trogg Thumper", quest = "No Party Like a Trogg Party", start = "Lord Aldrius Norwington" },
    [155066] = { name = "Overseer's Authority", quest = "The Irontide Crew", start = "Flynn Fairwind" },
    [155068] = { name = "Grimestone Pounder", quest = "No Party Like a Trogg Party", start = "Lord Aldrius Norwington" },
    [155071] = { name = "Salty Dog's Harpoon", quest = "The Irontide Crew", start = "Flynn Fairwind" },
    [155072] = { name = "Wavetamer Trident", quest = "The Deadliest Catch", start = "Rosaline Madison" },
    [155076] = { name = "Roughneck Rider Handaxe", quest = "No Party Like a Trogg Party", start = "Lord Aldrius Norwington" },
    [155079] = { name = "Thrashneck Gladius", quest = "The Deadliest Catch", start = "Rosaline Madison" },
    [155126] = { name = "Reade's Waraxe", quest = "And Justice For All", start = "Lucille Waycrest" },
    [155130] = { name = "Hag-Hunter Crossbow", quest = "And Justice For All", start = "Lucille Waycrest" },
    [155143] = { name = "Marshal's Halberd", quest = "And Justice For All", start = "Lucille Waycrest" },
    [155198] = { name = "Fort Daelin Handaxe", quest = "From the Depths", start = "Commander Kellam" },
    [155199] = { name = "Great Sea Waraxe", quest = "Rearmament", start = "Taelia" },
    [155200] = { name = "Thornmatron's Vinecaller", quest = "Terror of the Kraul", start = "Sergeant Calvin" },
    [155203] = { name = "Needleshot Repeater", quest = "Terror of the Kraul", start = "Sergeant Calvin" },
    [155204] = { name = "Brineworks Boot Knife", quest = "Rearmament", start = "Taelia" },
    [155205] = { name = "Briarback Thornshaper", quest = "Terror of the Kraul", start = "Sergeant Calvin" },
    [155208] = { name = "Stormfused Striker", quest = "Rearmament", start = "Taelia" },
    [155209] = { name = "Thundershot Rifle", quest = "Rearmament", start = "Taelia" },
    [155210] = { name = "Briarback Warmace", quest = "Terror of the Kraul", start = "Sergeant Calvin" },
    [155211] = { name = "Storm's Wake Truncheon", quest = "From the Depths", start = "Commander Kellam" },
    [155212] = { name = "Zeth'jir Tidemaiden Scepter", quest = "From the Depths", start = "Commander Kellam" },
    [155214] = { name = "Brineworks Hullcracker", quest = "Rearmament", start = "Taelia" },
    [155216] = { name = "Tideguard Harpoon", quest = "Rearmament", start = "Taelia" },
    [155217] = { name = "Proudmoore Battalion Pike", quest = "From the Depths", start = "Commander Kellam" },
    [155218] = { name = "Kraulguard Poleaxe", quest = "Terror of the Kraul", start = "Sergeant Calvin" },
    [155219] = { name = "Zeth'jir Scaleguard Pillar", quest = "From the Depths", start = "Commander Kellam" },
    [155221] = { name = "Stormfused Spire", quest = "Rearmament", start = "Taelia" },
    [155223] = { name = "Kraulguard Longsword", quest = "Terror of the Kraul", start = "Sergeant Calvin" },
    [155224] = { name = "Tideguard Spellblade", quest = "Rearmament", start = "Taelia" },
    [155225] = { name = "Bramblehulk Greatsword", quest = "Terror of the Kraul", start = "Sergeant Calvin" },
    [155226] = { name = "Storm's Wake Baton", quest = "From the Depths", start = "Commander Kellam" },
    [155344] = { name = "Ceremonial Limb Chopper", quest = "Soulbound", start = "Bwonsamdi" },
    [155346] = { name = "Mambo Hex Axe", quest = "Soulbound", start = "Bwonsamdi" },
    [155348] = { name = "Death's Hunter Greatbow", quest = "Soulbound", start = "Bwonsamdi" },
    [155351] = { name = "Strong Juju Bloodletter", quest = "Soulbound", start = "Bwonsamdi" },
    [155417] = { name = "Keeper's Crescent", quest = "The Fall of Emperor Korthek", start = "Vorrik" },
    [155418] = { name = "Spireguard's Waraxe", quest = "The Fall of Emperor Korthek", start = "Vorrik" },
    [155419] = { name = "Sezahjin's Chopper", quest = "Mojambo", start = "Razgaji" },
    [155420] = { name = "Xombo's Prized Greataxe", quest = "Mojambo", start = "Razgaji" },
    [155421] = { name = "Jam'jen's Shortbow", quest = "Zandalari Treasure Trove", start = "Omi" },
    [155423] = { name = "Soulwrenching Shortblade", quest = "Zandalari Treasure Trove", start = "Omi" },
    [155424] = { name = "Mozesha's Hexblade", quest = "Mojambo", start = "Razgaji" },
    [155427] = { name = "Soulwrenching Claws", quest = "Zandalari Treasure Trove", start = "Omi" },
    [155429] = { name = "Sezahjin's Tenderizer", quest = "Mojambo", start = "Razgaji" },
    [155430] = { name = "Trapped Soul Warmace", quest = "Zandalari Treasure Trove", start = "Omi" },
    [155432] = { name = "Soul-Cursed Skullcracker", quest = "Zandalari Treasure Trove", start = "Omi" },
    [155433] = { name = "Soul-Cursed Warmaul", quest = "Zandalari Treasure Trove", start = "Omi" },
    [155434] = { name = "Skycaller's Ceremonial Mace", quest = "The Fall of Emperor Korthek", start = "Vorrik" },
    [155438] = { name = "Trapped Soul Warstaff", quest = "Zandalari Treasure Trove", start = "Omi" },
    [155440] = { name = "Korthek's Greatstaff", quest = "The Fall of Emperor Korthek", start = "Vorrik" },
    [155441] = { name = "Razgaji's Cutter", quest = "Mojambo", start = "Razgaji" },
    [155442] = { name = "Razgaji's Machete", quest = "Mojambo", start = "Razgaji" },
    [155443] = { name = "Sandcaster's Conductive Scimitar", quest = "An Explosive Exit", start = "Reckless Vulpera" },
    [155444] = { name = "Sethraliss-Blessed Greatblade", quest = "The Fall of Emperor Korthek", start = "Vorrik" },
    [155583] = { name = "Hexward Spellblade", quest = "And Justice For All", start = "Lucille Waycrest" },
    [158295] = { name = "Shark-Hunter Glaive", quest = "The Deadliest Catch", start = "Rosaline Madison" },
    [158296] = { name = "Angler's Longstaff", quest = "The Deadliest Catch", start = "Rosaline Madison" },
    [158297] = { name = "Equestrian's Saddle Knife", quest = "No Party Like a Trogg Party", start = "Lord Aldrius Norwington" },
    [158298] = { name = "Fishmonger's Gutter", quest = "The Deadliest Catch", start = "Rosaline Madison" },
    [158639] = { name = "Innkeep's Slyshiv", quest = "Out With the Old Boss", start = "Cesi Loosecannon" },
    [158640] = { name = "Boss o' the Port", quest = "Out With the Old Boss", start = "Cesi Loosecannon" },
    [158642] = { name = "Tornsail Skull Cracker", quest = "Out With the Old Boss", start = "Cesi Loosecannon" },
    [158643] = { name = "Anyport Repeater", quest = "Out With the Old Boss", start = "Cesi Loosecannon" },
    [158644] = { name = "Bilgewater Beatstick", quest = "Out With the Old Boss", start = "Cesi Loosecannon" },
    [158645] = { name = "Smuggler's Pass", quest = "Out With the Old Boss", start = "Cesi Loosecannon" },
    [158648] = { name = "Boss Cesi's Gavel", quest = "Out With the Old Boss", start = "Cesi Loosecannon" },
    [158649] = { name = "Kane's Flayer", quest = "Out With the Old Boss", start = "Cesi Loosecannon" },
    [159081] = { name = "Fallen Nation Carver", quest = "Containment Procedure", start = "Titan Keeper Hezrel" },
    [159082] = { name = "Fallen Nation Recurve", quest = "Containment Procedure", start = "Titan Keeper Hezrel" },
    [159083] = { name = "Degraded Empire Shortblade", quest = "Containment Procedure", start = "Titan Keeper Hezrel" },
    [159084] = { name = "Handscythe of the First City", quest = "Containment Procedure", start = "Titan Keeper Hezrel" },
    [159085] = { name = "Ancient Loa-Blessed Mace", quest = "Containment Procedure", start = "Titan Keeper Hezrel" },
    [159086] = { name = "Corrupted Tribe Headsmasher", quest = "Containment Procedure", start = "Titan Keeper Hezrel" },
    [159087] = { name = "Nazmani Longstaff", quest = "Containment Procedure", start = "Titan Keeper Hezrel" },
    [159088] = { name = "Nazmani Hexblade", quest = "Containment Procedure", start = "Titan Keeper Hezrel" },
    [159089] = { name = "Amaki Scalper", quest = "Off With Her Head", start = "Guard Satao" },
    [159090] = { name = "Crawgmother's Shortbow", quest = "Off With Her Head", start = "Guard Satao" },
    [159091] = { name = "Bloodrite Sticker", quest = "Off With Her Head", start = "Guard Satao" },
    [159092] = { name = "Grim Ritual Mace", quest = "Off With Her Head", start = "Guard Satao" },
    [159093] = { name = "Marrow Drained Bonestaff", quest = "Off With Her Head", start = "Guard Satao" },
    [159094] = { name = "Bloodsinger Wand", quest = "Off With Her Head", start = "Guard Satao" },
    [159095] = { name = "Bloodhunter Greatblade", quest = "Off With Her Head", start = "Guard Satao" },
    [159096] = { name = "Nagla's Headcracker", quest = "Off With Her Head", start = "Guard Satao" },
    [159099] = { name = "Pa'ku Adherent's Talons", quest = "Dire Situation", start = "Wardruid Loti" },
    [159104] = { name = "Crimson Cultist Pummeler", quest = "Dire Situation", start = "Wardruid Loti" },
    [159105] = { name = "Spy Mistress Chopper", quest = "Mistress of Lies", start = "Acolyte Mali" },
    [159106] = { name = "Venom Queen Longbow", quest = "Mistress of Lies", start = "Acolyte Mali" },
    [159108] = { name = "Hexlord's Polearm", quest = "Mistress of Lies", start = "Acolyte Mali" },
    [159109] = { name = "Loa-Defender's Battleaxe", quest = "Mistress of Lies", start = "Acolyte Mali" },
    [159110] = { name = "Fallen Spider Handaxe", quest = "Mistress of Lies", start = "Acolyte Mali" },
    [159111] = { name = "Loa-Defender's Longspear", quest = "Mistress of Lies", start = "Acolyte Mali" },
    [159112] = { name = "Shadra Disciple's Stabber", quest = "Mistress of Lies", start = "Acolyte Mali" },
    [159114] = { name = "Rootway Safari Greatbow", quest = "Headhunter Jo", start = "Hemet Nesingwary" },
    [159116] = { name = "Wildtusk Ivory Cudgel", quest = "Headhunter Jo", start = "Hemet Nesingwary" },
    [159118] = { name = "Rootway Safari Magestaff", quest = "Headhunter Jo", start = "Hemet Nesingwary" },
    [159120] = { name = "Great Hunt Warglaive", quest = "Headhunter Jo", start = "Hemet Nesingwary" },
    [160028] = { name = "Soul-Cursed Warglaive", quest = "Zandalari Treasure Trove", start = "Omi" },
    [160029] = { name = "Mojambo's Stabber", quest = "Mojambo", start = "Razgaji" },
    [160030] = { name = "Sezahjin's Vulture Bow", quest = "Mojambo", start = "Razgaji" },
    [160031] = { name = "Mugjabu's Quarterstaff", quest = "Mojambo", start = "Razgaji" },
    [160032] = { name = "Korthek's Staff", quest = "The Fall of Emperor Korthek", start = "Vorrik" },
    [160033] = { name = "Sethraliss-Blessed Shortblade", quest = "The Fall of Emperor Korthek", start = "Vorrik" },
    [160034] = { name = "Spireguard's Greatbow", quest = "The Fall of Emperor Korthek", start = "Vorrik" },
    [160207] = { name = "Freeport Falchion", quest = "Out With the Old Boss", start = "Cesi Loosecannon" },
    [160519] = { name = "Fort Daelin Speargun", quest = "From the Depths", start = "Commander Kellam" },
    [160520] = { name = "Briarback Thornspike", quest = "Terror of the Kraul", start = "Sergeant Calvin" },
    [160521] = { name = "Kellam's Longknife", quest = "From the Depths", start = "Commander Kellam" },
    [160522] = { name = "Brennadam Vinescythe", quest = "Terror of the Kraul", start = "Sergeant Calvin" },
    [161188] = { name = "Fangcaller's Staff", quest = "An Explosive Exit", start = "Reckless Vulpera" },
    [161189] = { name = "Sethrak Warden's Staff", quest = "An Explosive Exit", start = "Reckless Vulpera" },
    [161190] = { name = "Sandscout's Kris", quest = "An Explosive Exit", start = "Reckless Vulpera" },
    [161191] = { name = "Sethrak Sandscout's Bow", quest = "An Explosive Exit", start = "Reckless Vulpera" },
    [161192] = { name = "Sethrak Warbringer's Scimitar", quest = "An Explosive Exit", start = "Reckless Vulpera" },
    [161193] = { name = "Sethrak Ravager's Claws", quest = "An Explosive Exit", start = "Reckless Vulpera" },
    [161194] = { name = "Sethrak Aggressor's Scimitar", quest = "An Explosive Exit", start = "Reckless Vulpera" },
    [161195] = { name = "Sethrak Warden's Scimitar", quest = "An Explosive Exit", start = "Reckless Vulpera" },
    [163866] = { name = "Honorbound Skullcleaver", quest = "Dark Tides", start = "First Arcanist Thalyssra" },
    [163867] = { name = "Honorbound Longbow", quest = "Dark Tides", start = "First Arcanist Thalyssra" },
    [163868] = { name = "Honorbound Dagger", quest = "Dark Tides", start = "First Arcanist Thalyssra" },
    [163869] = { name = "Honorbound Skullcrusher", quest = "Dark Tides", start = "First Arcanist Thalyssra" },
    [163871] = { name = "Honorbound Pigsticker", quest = "Dark Tides", start = "First Arcanist Thalyssra" },
    [163872] = { name = "Honorbound War Staff", quest = "Dark Tides", start = "First Arcanist Thalyssra" },
    [163874] = { name = "Honorbound Decapitator", quest = "Dark Tides", start = "First Arcanist Thalyssra" },
    [163880] = { name = "Honorbound Gladius", quest = "Dark Tides", start = "First Arcanist Thalyssra" },
    [163881] = { name = "7th Legionnaire's Longbow", quest = "Dark Tides", start = "Sentinel" },
    [163882] = { name = "7th Legionnaire's Dagger", quest = "Dark Tides", start = "Sentinel" },
    [163885] = { name = "7th Legionnaire's Halberd", quest = "Dark Tides", start = "Sentinel" },
    [163886] = { name = "7th Legionnaire's Stave", quest = "Dark Tides", start = "Sentinel" },
    [163887] = { name = "7th Legionnaire's Longsword", quest = "Dark Tides", start = "Sentinel" },
    [163890] = { name = "7th Legionnaire's Claymore", quest = "Dark Tides", start = "Sentinel" },
    [163894] = { name = "7th Legionnaire's Spellhammer", quest = "Dark Tides", start = "Sentinel" },
    [166336] = { name = "7th Legionnaire's Skullcleaver", quest = "Dark Tides", start = "Sentinel" },

    ------------------------------------------------------------
    -- SHADOWLANDS (gap2 pass)
    ------------------------------------------------------------
    [175984] = { name = "Heartwood Dagger", quest = "Toppling the Brute", start = "Ara'lon" },
    [175985] = { name = "Grove Defender's Pummeler", quest = "Toppling the Brute", start = "Ara'lon" },
    [175987] = { name = "Grove Defender's Spear", quest = "Toppling the Brute", start = "Ara'lon" },
    [176277] = { name = "Ruthless Contender's Dagger", quest = "The Ladder", start = "Anzio the Infallible" },
    [176279] = { name = "Ruthless Contender's Staff", quest = "The Ladder", start = "Anzio the Infallible" },
    [176280] = { name = "Ruthless Contender's Sword", quest = "The Ladder", start = "Anzio the Infallible" },
    [176281] = { name = "Ruthless Contender's Crossbow", quest = "The Ladder", start = "Anzio the Infallible" },
    [176282] = { name = "Ruthless Contender's Wand", quest = "The Ladder", start = "Anzio the Infallible" },
    [176286] = { name = "Ruthless Contender's Warglaive", quest = "The Ladder", start = "Anzio the Infallible" },
    [176334] = { name = "Silverchime Longspear", quest = "The Hand of Doubt", start = "Disciple Kosmas" },
    [176336] = { name = "Guidenote Grip", quest = "The Hand of Doubt", start = "Disciple Kosmas" },
    [176337] = { name = "Skytone Quickblade", quest = "The Hand of Doubt", start = "Disciple Kosmas" },
    [176388] = { name = "Guidenote Dagger", quest = "The Hand of Doubt", start = "Disciple Kosmas" },
    [177639] = { name = "Sinfall Guardian's Rapier", quest = "Securing Sinfall", start = "Breakfist" },
    [177642] = { name = "Sinfall Darkblade", quest = "Securing Sinfall", start = "Breakfist" },
    [177644] = { name = "Sinfall Reclaimer's Greatmace", quest = "Securing Sinfall", start = "Breakfist" },
    [177648] = { name = "Honed Dredglaive", quest = "Breaking the Hopebreakers", start = "The Accuser" },
    [178021] = { name = "Culexwood Longbow", quest = "What a Buzzkill", start = "Gormsmith Cavina" },
    [178022] = { name = "Culexwood Knife", quest = "What a Buzzkill", start = "Gormsmith Cavina" },
    [178023] = { name = "Gormhusk Basher", quest = "What a Buzzkill", start = "Gormsmith Cavina" },
    [178024] = { name = "Gormhusk Bludgeon", quest = "What a Buzzkill", start = "Gormsmith Cavina" },
    [178025] = { name = "Gormstinger Spear", quest = "What a Buzzkill", start = "Gormsmith Cavina" },
    [178027] = { name = "Gormstinger Sword", quest = "What a Buzzkill", start = "Gormsmith Cavina" },
    [178054] = { name = "Briarbane Carbine", quest = "It's a Trap", start = "Nadjia the Mistblade" },
    [178059] = { name = "Sacred Morningstar", quest = "It's a Trap", start = "Nadjia the Mistblade" },
    [179500] = { name = "Duskwarder Knife", quest = "Into the Unknown", start = "Marasmius" },
    [179508] = { name = "Duskwarder Warglaive", quest = "Into the Unknown", start = "Marasmius" },
    [179513] = { name = "Duskwarder Scimitar", quest = "A Taste of Tirna Noch", start = "Marasmius" },
    [179517] = { name = "Duskwarder Censer", quest = "Into the Unknown", start = "Marasmius" },
    [179532] = { name = "Duskwarder Scythe", quest = "A Taste of Tirna Noch", start = "Marasmius" },
    [179536] = { name = "Faesworn Warmaul", quest = "The Battle of Ardenweald", start = "Lady Moonberry" },
    [179537] = { name = "Duskwarder Maul", quest = "Go Beyond!", start = "Marasmius" },
    [179546] = { name = "Faesworn Warclub", quest = "The Battle of Ardenweald", start = "Lady Moonberry" },
    [179547] = { name = "Duskwarder Warclub", quest = "Wake The Sleepers", start = "Teendynneetll" },
    [179584] = { name = "Duskwarder Shortbow", quest = "Into the Unknown", start = "Marasmius" },
    [180473] = { name = "Culexwood Spellmace", quest = "What a Buzzkill", start = "Gormsmith Cavina" },
    [180663] = { name = "War Scholar's Bonesaw", quest = "In Death We Are Truly Tested", start = "Alexandros Mograine" },
    [180665] = { name = "Grasping Greatstaff", quest = "In Death We Are Truly Tested", start = "Alexandros Mograine" },
    [180666] = { name = "Bonebender's Warblade", quest = "In Death We Are Truly Tested", start = "Alexandros Mograine" },
    [180667] = { name = "Enlarged Jawbone Crossbow", quest = "In Death We Are Truly Tested", start = "Alexandros Mograine" },
    [181210] = { name = "Dredhollow Boomstick", quest = "Weapons of the Tremaculum", start = "General Draven" },
    [181211] = { name = "Souldrinker's Kris", quest = "Old Habits Never Die", start = "Second Talon Shenraa" },
    [181212] = { name = "Soulcaster's Mace", quest = "Edict of Doom: Devourers", start = "Edict of Doom: Devourers" },
    [181215] = { name = "Darkwing Assassin's Blade", quest = "Edict of Doom: Devourers", start = "Edict of Doom: Devourers" },
    [181216] = { name = "Cinderwall Great Mace", quest = "Old Habits Never Die", start = "Second Talon Shenraa" },
    [181224] = { name = "Avowed Arcanist's Staff", quest = "Big Bag of Creepers", start = "Thinman" },
    [181531] = { name = "Ruthless Contender's Spellblade", quest = "The Ladder", start = "Anzio the Infallible" },
    [181534] = { name = "Ruthless Contender's Rod", quest = "The Ladder", start = "Anzio the Infallible" },
    [181627] = { name = "Lifepath Crossbow", quest = "Manifesting Power", start = "Forgelite Selene" },
    [181628] = { name = "Memoria Glaive", quest = "Encouraging Words", start = "Xandria" },
    [181630] = { name = "Honortoll Spear", quest = "Centurions March!", start = "Mikanikos" },
    [181632] = { name = "Requiem Handscythes", quest = "Where There's a Quill...", start = "Galakamos" },
    [181633] = { name = "Waylight Blade", quest = "Encouraging Words", start = "Xandria" },
    [181634] = { name = "Memoria Greatblade", quest = "Encouraging Words", start = "Xandria" },
    [181635] = { name = "Honortoll Gavel", quest = "A Somber Melody", start = "Forgelite Selene" },
    [181636] = { name = "Memoria Spellblade", quest = "Arms Day", start = "Kofi" },
    [181637] = { name = "Lifepath Hammer", quest = "Manifesting Power", start = "Forgelite Selene" },
    [181687] = { name = "Gorewrought Warglaive", quest = "Rallying Maldraxxus", start = "Secutor Mevix" },
    [181688] = { name = "Gorewrought Stave", quest = "Volatile Reactions", start = "Fixer Bixie" },
    [181689] = { name = "Gorewrought Bonesaw", quest = "Pumped Up", start = "Varzisk Lidless" },
    [181690] = { name = "Gorewrought Crusher", quest = "See With My Eyes", start = "Varzisk Lidless" },
    [181691] = { name = "Gorewrought Greatstaff", quest = "Here's an Axe, Get to Work!", start = "Baroness Draka" },
    [181693] = { name = "Gorewrought Crossbow", quest = "Splash Damage", start = "Plague Deviser Marileth" },
    [181694] = { name = "Gorewrought Greatsword", quest = "Queens And Future Kings", start = "Fixer Bixie" },
    [181695] = { name = "Gorewrought Shortsword", quest = "Splash Damage", start = "Plague Deviser Marileth" },
    [181697] = { name = "Gorewrought Spellblade", quest = "Boared to Death", start = "Fixer Bixie" },
    [181864] = { name = "Plague-Etched Hacker", quest = "Somebody Feed Kevin", start = "Plague Deviser Marileth" },
    [181865] = { name = "Plague-Etched Gorer", quest = "Volatile Reactions", start = "Fixer Bixie" },
    [184194] = { name = "Plague-Etched Hacker", quest = "Queens And Future Kings", start = "Fixer Bixie" },
    [184195] = { name = "Plague-Etched Gorer", quest = "Revenge Is Easy", start = "Cyrin Smirk" },
    [185889] = { name = "Gromit Tendon Longbow", quest = "Observational Records", start = "Ta'nasi" },
    [185890] = { name = "Korthian Caretaker's Kris", quest = "Observational Records", start = "Ta'nasi" },
    [185891] = { name = "Razorwing's Claw", quest = "Sealed Secrets", start = "Xy'lonu" },
    [185893] = { name = "Korthian Protector's Greataxe", quest = "Cryptograms and Keys", start = "Tal-Rahl" },
    [185896] = { name = "Vault Guardian's Cudgel", quest = "Observational Records", start = "Ta'nasi" },
    [185897] = { name = "Korthian Sentinel's Hammer", quest = "Cryptograms and Keys", start = "Tal-Rahl" },
    [185898] = { name = "Korthian Pathfinder's Spire", quest = "Cryptograms and Keys", start = "Tal-Rahl" },
    [185899] = { name = "Korthian Archivist's Gavel", quest = "Cryptograms and Keys", start = "Tal-Rahl" },
    [185900] = { name = "Korthian Caretaker's Rod", quest = "Cryptograms and Keys", start = "Tal-Rahl" },
    [185901] = { name = "Korthian Twinblade", quest = "Cryptograms and Keys", start = "Tal-Rahl" },
    [185944] = { name = "Vault Guardian's Cleaver", quest = "Cryptograms and Keys", start = "Tal-Rahl" },
    [186760] = { name = "Korthian Energy Bow", quest = "Cryptograms and Keys", start = "Tal-Rahl" },
    [186761] = { name = "Korthian Attendant's Blade", quest = "Cryptograms and Keys", start = "Tal-Rahl" },
    [186762] = { name = "Korthian Anima Slicer", quest = "Observational Records", start = "Ta'nasi" },
    [186763] = { name = "Vault Guardian's Decapitator", quest = "Observational Records", start = "Ta'nasi" },
    [186765] = { name = "Vault Patroller's Mace", quest = "Observational Records", start = "Ta'nasi" },
    [186766] = { name = "Vault Patroller's Staff", quest = "Observational Records", start = "Ta'nasi" },
    [186767] = { name = "Korthian Attendant's Scepter", quest = "Observational Records", start = "Ta'nasi" },
    [186768] = { name = "Korthian Attendant's Cane", quest = "Observational Records", start = "Ta'nasi" },
    [186769] = { name = "Vault Guardian's Warglaive", quest = "Observational Records", start = "Ta'nasi" },
    [186771] = { name = "Vault Patroller's Slicer", quest = "Observational Records", start = "Ta'nasi" },
    [188049] = { name = "Transcendant Gavel", quest = "The Forces Gather", start = "Highlord Bolvar Fordragon" },
    [188050] = { name = "Ineffable Spire", quest = "The Forces Gather", start = "Highlord Bolvar Fordragon" },
    [188056] = { name = "Ancient Protector's Pulverizer", quest = "The Forces Gather", start = "Highlord Bolvar Fordragon" },
    [192423] = { name = "Serenading Arbalest", quest = "Hollow Efforts", start = "Firim" },
    [192424] = { name = "Rhapsodic Cleaver", quest = "Hollow Efforts", start = "Firim" },
    [192425] = { name = "Legato Hammer", quest = "Historic Protection", start = "Mai Soh" },
    [192426] = { name = "Waltzing Glaive", quest = "Hollow Efforts", start = "Firim" },
    [192427] = { name = "Senza Spellblade", quest = "Hollow Efforts", start = "Firim" },
    [192429] = { name = "Scepter of Requiem", quest = "Hollow Efforts", start = "Firim" },
    [192430] = { name = "Meno Sword", quest = "Historic Protection", start = "Mai Soh" },
    [192440] = { name = "Tempo Smasher", quest = "Hollow Efforts", start = "Firim" },
    [192449] = { name = "Overture's Shiv", quest = "Historic Protection", start = "Mai Soh" },
    [192450] = { name = "Choral Staff", quest = "Hollow Efforts", start = "Firim" },
    [192451] = { name = "Lamenting Blade", quest = "Historic Protection", start = "Mai Soh" },
}
