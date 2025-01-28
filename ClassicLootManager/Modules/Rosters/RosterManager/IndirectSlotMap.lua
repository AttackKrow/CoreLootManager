local _, CLM = ...

local IndirectMap = {
    slot = {
        --- WOTLK P1 ---
        [44577] = "INVTYPE_NECK",       -- Heroic Key to the Focusing Iris
        [40618] = "INVTYPE_HEAD",       -- Helm of the Lost Vanquisher
        [40612] = "INVTYPE_CHEST",      -- Chestguard of the Lost Vanquisher
        [40621] = "INVTYPE_LEGS",       -- Leggings of the Lost Vanquisher
        [40624] = "INVTYPE_SHOULDER",   -- Spaulders of the Lost Vanquisher
        [40615] = "INVTYPE_HAND",       -- Gloves of the Lost Vanquisher
        [40616] = "INVTYPE_HEAD",       -- Helm of the Lost Conqueror
        [40610] = "INVTYPE_CHEST",      -- Chestguard of the Lost Conqueror
        [40619] = "INVTYPE_LEGS",       -- Leggings of the Lost Conqueror
        [40622] = "INVTYPE_SHOULDER",   -- Spaulders of the Lost Conqueror
        [40613] = "INVTYPE_HAND",       -- Gloves of the Lost Conqueror
        [40617] = "INVTYPE_HEAD",       -- Helm of the Lost Protector
        [40611] = "INVTYPE_CHEST",      -- Chestguard of the Lost Protector
        [40620] = "INVTYPE_LEGS",       -- Leggings of the Lost Protector
        [40623] = "INVTYPE_SHOULDER",   -- Spaulders of the Lost Protector
        [40614] = "INVTYPE_HAND",       -- Gloves of the Lost Protector
        [40630] = "INVTYPE_HAND",       -- Gauntlets of the Lost Vanquisher
        [40633] = "INVTYPE_HEAD",       -- Crown of the Lost Vanquisher
        [40636] = "INVTYPE_LEGS",       -- Legplates of the Lost Vanquisher
        [40627] = "INVTYPE_CHEST",      -- Breastplate of the Lost Vanquisher
        [40639] = "INVTYPE_SHOULDER",   -- Mantle of the Lost Vanquisher
        [40628] = "INVTYPE_HAND",       -- Gauntlets of the Lost Conqueror
        [40631] = "INVTYPE_HEAD",       -- Crown of the Lost Conqueror
        [40634] = "INVTYPE_LEGS",       -- Legplates of the Lost Conqueror
        [40625] = "INVTYPE_CHEST",      -- Breastplate of the Lost Conqueror
        [40637] = "INVTYPE_SHOULDER",   -- Mantle of the Lost Conqueror
        [40626] = "INVTYPE_CHEST",      -- Breastplate of the Lost Protector
        [40629] = "INVTYPE_HAND",       -- Gauntlets of the Lost Protector
        [40632] = "INVTYPE_HEAD",       -- Crown of the Lost Protector
        [40635] = "INVTYPE_LEGS",       -- Legplates of the Lost Protector
        [40638] = "INVTYPE_SHOULDER",   -- Mantle of the Lost Protector
        --- WOTLK P2 ---
        [45637] = "INVTYPE_CHEST",      -- Chestguard of the Wayward Vanquisher
        [45649] = "INVTYPE_HEAD",       -- Helm of the Wayward Vanquisher
        [45646] = "INVTYPE_HAND",       -- Gloves of the Wayward Vanquisher
        [45652] = "INVTYPE_LEGS",       -- Leggings of the Wayward Vanquisher
        [45661] = "INVTYPE_SHOULDER",   -- Spaulders of the Wayward Vanquisher
        [45645] = "INVTYPE_HAND",       -- Gloves of the Wayward Protector
        [45648] = "INVTYPE_HEAD",       -- Helm of the Wayward Protector
        [45651] = "INVTYPE_LEGS",       -- Leggings of the Wayward Protector
        [45660] = "INVTYPE_SHOULDER",   -- Spaulders of the Wayward Protector
        [45636] = "INVTYPE_CHEST",      -- Chestguard of the Wayward Protector
        [45644] = "INVTYPE_HAND",       -- Gloves of the Wayward Conqueror
        [45650] = "INVTYPE_LEGS",       -- Leggings of the Wayward Conqueror
        [45647] = "INVTYPE_HEAD",       -- Helm of the Wayward Conqueror
        [45659] = "INVTYPE_SHOULDER",   -- Spaulders of the Wayward Conqueror
        [45635] = "INVTYPE_CHEST",      -- Chestguard of the Wayward Conqueror
        [45634] = "INVTYPE_CHEST",      -- Breastplate of the Wayward Vanquisher
        [45643] = "INVTYPE_HAND",       -- Gauntlets of the Wayward Vanquisher
        [45640] = "INVTYPE_HEAD",       -- Crown of the Wayward Vanquisher
        [45655] = "INVTYPE_LEGS",       -- Legplates of the Wayward Vanquisher
        [45658] = "INVTYPE_SHOULDER",   -- Mantle of the Wayward Vanquisher
        [45641] = "INVTYPE_HAND",       -- Gauntlets of the Wayward Conqueror
        [45656] = "INVTYPE_SHOULDER",   -- Mantle of the Wayward Conqueror
        [45632] = "INVTYPE_CHEST",      -- Breastplate of the Wayward Conqueror
        [45653] = "INVTYPE_LEGS",       -- Legplates of the Wayward Conqueror
        [45638] = "INVTYPE_HEAD",       -- Crown of the Wayward Conqueror
        [45633] = "INVTYPE_CHEST",      -- Breastplate of the Wayward Protector
        [45642] = "INVTYPE_HAND",       -- Gauntlets of the Wayward Protector
        [45639] = "INVTYPE_HEAD",       -- Crown of the Wayward Protector
        [45654] = "INVTYPE_LEGS",       -- Legplates of the Wayward Protector
        [45657] = "INVTYPE_SHOULDER",   -- Mantle of the Wayward Protector
        --- SOD P3 ---
        [220636] = "INVTYPE_NON_EQUIP", -- Atal'ai Blood Icon
        [220637] = "INVTYPE_NON_EQUIP", -- Atal'ai Ritual Token
        --- SOD P4 ---
        [227532] = "INVTYPE_HEAD",      -- Incandescent Hood
        [227537] = "INVTYPE_SHOULDER",  -- Incandescent Shoulderpads
        [227535] = "INVTYPE_CHEST",     -- Incandescent Robe
        [227534] = "INVTYPE_LEGS",      -- Incandescent Leggings
        [227531] = "INVTYPE_WRIST",     -- Incandescent Bindings
        [227536] = "INVTYPE_FEET",      -- Incandescent Boots
        [227530] = "INVTYPE_WAIST",     -- Incandescent Belt
        [227533] = "INVTYPE_HAND",      -- Incandescent Gloves
        [227764] = "INVTYPE_HEAD",      -- Scorched Core Helm
        [227762] = "INVTYPE_SHOULDER",  -- Scorched Core Shoulderpads
        [227766] = "INVTYPE_CHEST",     -- Scorched Core Chest
        [227763] = "INVTYPE_LEGS",      -- Scorched Core Leggings
        [227760] = "INVTYPE_WRIST",     -- Scorched Core Bindings
        [227765] = "INVTYPE_FEET",      -- Scorched Core Boots
        [227761] = "INVTYPE_WAIST",     -- Scorched Core Belt
        [227759] = "INVTYPE_HAND",      -- Scorched Core Gloves
        [227755] = "INVTYPE_HEAD",      -- Molten Scaled Helm
        [227752] = "INVTYPE_SHOULDER",  -- Molten Scaled Shoulderpads
        [227758] = "INVTYPE_CHEST",     -- Molten Scaled Chest
        [227754] = "INVTYPE_LEGS",      -- Molten Scaled Leggings
        [227750] = "INVTYPE_WRIST",     -- Molten Scaled Bindings
        [227757] = "INVTYPE_FEET",      -- Molten Scaled Boots
        [227751] = "INVTYPE_WAIST",     -- Molten Scaled Belt
        [227756] = "INVTYPE_HAND",      -- Molten Scaled Gloves
        [18703] = "INVTYPE_RANGED",     -- Ancient Petrified Leaf
        [228129] = "INVTYPE_WEAPON",    -- Shadowflame Skull
        --- SOD P5 ---
        [231711] = "INVTYPE_HEAD",      -- Draconic Hood
        [231709] = "INVTYPE_SHOULDER",  -- Draconic Shoulderpads
        [231714] = "INVTYPE_CHEST",     -- Draconic Robe
        [231710] = "INVTYPE_LEGS",      -- Draconic Leggings
        [231707] = "INVTYPE_WRIST",     -- Draconic Bindings
        [231713] = "INVTYPE_FEET",      -- Draconic Boots
        [231708] = "INVTYPE_WAIST",     -- Draconic Belt
        [231712] = "INVTYPE_HAND",      -- Draconic Gloves
        [231719] = "INVTYPE_HEAD",      -- Primeval Helm
        [231717] = "INVTYPE_SHOULDER",  -- Primeval Shoulderpads
        [231723] = "INVTYPE_CHEST",     -- Primeval Chest
        [231718] = "INVTYPE_LEGS",      -- Primeval Leggings
        [231715] = "INVTYPE_WRIST",     -- Primeval Bindings
        [231721] = "INVTYPE_FEET",      -- Primeval Boots
        [231716] = "INVTYPE_WAIST",     -- Primeval Belt
        [231720] = "INVTYPE_HAND",      -- Primeval Gloves
        [231728] = "INVTYPE_HEAD",      -- Ancient Helm
        [231726] = "INVTYPE_SHOULDER",  -- Ancient Shoulderpads
        [231731] = "INVTYPE_CHEST",     -- Ancient Chest
        [231727] = "INVTYPE_LEGS",      -- Ancient Leggings
        [231724] = "INVTYPE_WRIST",     -- Ancient Bindings
        [231730] = "INVTYPE_FEET",      -- Ancient Boots
        [231725] = "INVTYPE_WAIST",     -- Ancient Belt
        [231729] = "INVTYPE_HAND",      -- Ancient Gloves
        [231722] = "INVTYPE_2HWEAPON",  -- Depleted Scythe of Chaos
        [229352] = "INVTYPE_WEAPON",    -- Intelligence Findings
        [230904] = "INVTYPE_2HWEAPON",  -- Scroll: SEENECS FO RIEF
        [231378] = "INVTYPE_SHIELD",    -- Shimmering Golden Disk
        [231882] = "INVTYPE_2HWEAPON",  -- Suppression Device Receipt
        [231995] = "INVTYPE_SHIELD",    -- Hardened Elementium Slag
        [231814] = "INVTYPE_2HWEAPON",  -- Chromatic Heart
        --- SOD P6 ---
        [233369] = "INVTYPE_FEET",      -- Qiraji Bindings of Dominance
        [233370] = "INVTYPE_FEET",      -- Qiraji Bindings of Command
        [233371] = "INVTYPE_FEET",      -- Qiraji Bindings of Sovereignty
        [20883]  = "INVTYPE_HEAD",      -- Qiraji Glyphed Jewel
        [20887]  = "INVTYPE_HEAD",      -- Qiraji Engraved Jewel
        [235045] = "INVTYPE_2HWEAPON",  -- Imperial Qiraji Regalia
        [235046] = "INVTYPE_WEAPON",    -- Imperial Qiraji Armaments
        [233365] = "INVTYPE_LEGS",      -- Intact Viscera
        [233367] = "INVTYPE_LEGS",      -- Imperial Peritoneum
        [233368] = "INVTYPE_LEGS",      -- Imperial Entrails
        [233362] = "INVTYPE_CHEST",     -- Husk of the Old God
        [233363] = "INVTYPE_CHEST",     -- Carapace of the Old God
        [233364] = "INVTYPE_CHEST",     -- Skin of the Old God
        [21221]  = "INVTYPE_NECK",      -- Eye of C'thun
        --- AGNI ADDITIONS
        --- Mounts
        -- Usable Outside
        [233351] = "INVTYPE_NON_EQUIP", -- Light Green Qiraji Resonating Crystal
        [233352] = "INVTYPE_NON_EQUIP", -- Dark Blue Qiraji Resonating Crystal
        [233353] = "INVTYPE_NON_EQUIP", -- Light Blue Qiraji Resonating Crystal
        [235511] = "INVTYPE_NON_EQUIP", -- Flawless Yellow Qiraji Resonating Crystal
        [235512] = "INVTYPE_NON_EQUIP", -- Flawless Green Qiraji Resonating Crystal
        [235513] = "INVTYPE_NON_EQUIP", -- Flawless Blue Qiraji Resonating Crystal
        [235514] = "INVTYPE_NON_EQUIP", -- Flawless Red Qiraji Resonating Crystal
        -- Inside Only
        [21218] = "INVTYPE_NON_EQUIP",  -- Blue Qiraji Resonating Crystal
        [21324] = "INVTYPE_NON_EQUIP",  -- Yellow Qiraji Resonating Crystal
        [21323] = "INVTYPE_NON_EQUIP",  -- Green Qiraji Resonating Crystal
        [21321] = "INVTYPE_NON_EQUIP",  -- Red Qiraji Resonating Crystal
        --- Cosmetics
        [234614] = "INVTYPE_NON_EQUIP", -- Void-Touched Emblem
        --- SOD P7 ---
        [237381] = "INVTYPE_FINGER",    -- Desecrated Ring
        [236241] = "INVTYPE_HEAD",      -- Desecrated Circlet
        [236246] = "INVTYPE_LEGS",      -- Desecrated Leggings
        [236238] = "INVTYPE_LEGS",      -- Desecrated Legplates
        [236254] = "INVTYPE_SHOULDER",  -- Desecrated Spaulders
        [236247] = "INVTYPE_WRIST",     -- Desecrated Wristguards
        [236249] = "INVTYPE_HEAD",      -- Desecrated Headpiece
        [236248] = "INVTYPE_FEET",      -- Desecrated Boots
        [236245] = "INVTYPE_WRIST",     -- Desecrated Bindings
        [236250] = "INVTYPE_HAND",      -- Desecrated Handguards
        [236236] = "INVTYPE_HEAD",      -- Desecrated Helmet
        [236251] = "INVTYPE_CHEST",     -- Desecrated Tunic
        [236232] = "INVTYPE_WAIST",     -- Desecrated Waistguard
        [236239] = "INVTYPE_FEET",      -- Desecrated Sandals
        [236240] = "INVTYPE_SHOULDER",  -- Desecrated Shoulderpads
        [236237] = "INVTYPE_SHOULDER",  -- Desecrated Pauldrons
        [236252] = "INVTYPE_WAIST",     -- Desecrated Girdle
        [236253] = "INVTYPE_LEGS",      -- Desecrated Legguards
        [236231] = "INVTYPE_CHEST",     -- Desecrated Breastplate
        [236235] = "INVTYPE_WRIST",     -- Desecrated Bracers
        [236242] = "INVTYPE_CHEST",     -- Desecrated Robe
        [236244] = "INVTYPE_WAIST",     -- Desecrated Belt
        [236233] = "INVTYPE_HAND",      -- Desecrated Gauntlets
        [236234] = "INVTYPE_FEET",      -- Desecrated Sabatons
        [236243] = "INVTYPE_HAND",      -- Desecrated Gloves
        [236350] = "INVTYPE_TRINKET",   -- The Phylactery of Kel'Thuzad
        --- AGNI ADDITIONS
        --- Mounts
        [236662] = "INVTYPE_NON_EQUIP", -- Reins of War
        [236663] = "INVTYPE_NON_EQUIP", -- Reins of Conquest
        [236664] = "INVTYPE_NON_EQUIP", -- Reins of Death
        [236665] = "INVTYPE_NON_EQUIP", -- Reins of Famine
        --- Enchants
        [236326] = "INVTYPE_NON_EQUIP", -- Might of the Scourge
        [236324] = "INVTYPE_NON_EQUIP", -- Power of the Scourge
        [236323] = "INVTYPE_NON_EQUIP", -- Resilience of the Scourge
        [236325] = "INVTYPE_NON_EQUIP", -- Fortitude of the Scourge
        --- Cataclysm P1 Normal ---
        [63682] = "INVTYPE_HEAD",       -- Helm of the Forlorn Vanquisher
        [63684] = "INVTYPE_HEAD",       -- Helm of the Forlorn Protector
        [63683] = "INVTYPE_HEAD",       -- Helm of the Forlorn Conqueror
        [64314] = "INVTYPE_SHOULDER",   -- Mantle of the Forlorn Vanquisher
        [64316] = "INVTYPE_SHOULDER",   -- Mantle of the Forlorn Protector
        [64315] = "INVTYPE_SHOULDER",   -- Mantle of the Forlorn Conqueror
        --- Cataclysm P1 Heroic ---
        [66998] = "INVTYPE_NON_EQUIP",  -- Essence of the Forlorn
        [65002] = "INVTYPE_HEAD",       -- Crown of the Forlorn Vanquisher
        [65000] = "INVTYPE_HEAD",       -- Crown of the Forlorn Protector
        [65001] = "INVTYPE_HEAD",       -- Crown of the Forlorn Conqueror
        [65089] = "INVTYPE_SHOULDER",   -- Shoulders of the Forlorn Vanquisher
        [65087] = "INVTYPE_SHOULDER",   -- Shoulders of the Forlorn Protector
        [65088] = "INVTYPE_SHOULDER",   -- Shoulders of the Forlorn Conqueror
        [67426] = "INVTYPE_LEGS",       -- Leggings of the Forlorn Vanquisher
        [67427] = "INVTYPE_LEGS",       -- Leggings of the Forlorn Protector
        [67428] = "INVTYPE_LEGS",       -- Leggings of the Forlorn Conqueror
        [67431] = "INVTYPE_HAND",       -- Gauntlets of the Forlorn Vanquisher
        [67430] = "INVTYPE_HAND",       -- Gauntlets of the Forlorn Protector
        [67429] = "INVTYPE_HAND",       -- Gauntlets of the Forlorn Conqueror
        [67425] = "INVTYPE_CHEST",      -- Chest of the Forlorn Vanquisher
        [67424] = "INVTYPE_CHEST",      -- Chest of the Forlorn Protector
        [67423] = "INVTYPE_CHEST",      -- Chest of the Forlorn Conqueror
    },
    ilvl = {
        --- WOTLK P1 ---
        [44577] = 226,  -- Heroic Key to the Focusing Iris
        [40618] = 200,  -- Helm of the Lost Vanquisher
        [40612] = 200,  -- Chestguard of the Lost Vanquisher
        [40621] = 200,  -- Leggings of the Lost Vanquisher
        [40624] = 200,  -- Spaulders of the Lost Vanquisher
        [40615] = 200,  -- Gloves of the Lost Vanquisher
        [40616] = 200,  -- Helm of the Lost Conqueror
        [40610] = 200,  -- Chestguard of the Lost Conqueror
        [40619] = 200,  -- Leggings of the Lost Conqueror
        [40622] = 200,  -- Spaulders of the Lost Conqueror
        [40613] = 200,  -- Gloves of the Lost Conqueror
        [40617] = 200,  -- Helm of the Lost Protector
        [40611] = 200,  -- Chestguard of the Lost Protector
        [40620] = 200,  -- Leggings of the Lost Protector
        [40623] = 200,  -- Spaulders of the Lost Protector
        [40614] = 200,  -- Gloves of the Lost Protector
        [40630] = 213,  -- Gauntlets of the Lost Vanquisher
        [40633] = 213,  -- Crown of the Lost Vanquisher
        [40636] = 213,  -- Legplates of the Lost Vanquisher
        [40627] = 213,  -- Breastplate of the Lost Vanquisher
        [40639] = 213,  -- Mantle of the Lost Vanquisher
        [40628] = 213,  -- Gauntlets of the Lost Conqueror
        [40631] = 213,  -- Crown of the Lost Conqueror
        [40634] = 213,  -- Legplates of the Lost Conqueror
        [40625] = 213,  -- Breastplate of the Lost Conqueror
        [40637] = 213,  -- Mantle of the Lost Conqueror
        [40626] = 213,  -- Breastplate of the Lost Protector
        [40629] = 213,  -- Gauntlets of the Lost Protector
        [40632] = 213,  -- Crown of the Lost Protector
        [40635] = 213,  -- Legplates of the Lost Protector
        [40638] = 213,  -- Mantle of the Lost Protector
        --- WOTLK P2 ---
        [45637] = 225,  -- Chestguard of the Wayward Vanquisher
        [45649] = 225,  -- Helm of the Wayward Vanquisher
        [45646] = 225,  -- Gloves of the Wayward Vanquisher
        [45652] = 225,  -- Leggings of the Wayward Vanquisher
        [45661] = 225,  -- Spaulders of the Wayward Vanquisher
        [45645] = 225,  -- Gloves of the Wayward Protector
        [45648] = 225,  -- Helm of the Wayward Protector
        [45651] = 225,  -- Leggings of the Wayward Protector
        [45660] = 225,  -- Spaulders of the Wayward Protector
        [45636] = 225,  -- Chestguard of the Wayward Protector
        [45644] = 225,  -- Gloves of the Wayward Conqueror
        [45650] = 225,  -- Leggings of the Wayward Conqueror
        [45647] = 225,  -- Helm of the Wayward Conqueror
        [45659] = 225,  -- Spaulders of the Wayward Conqueror
        [45635] = 225,  -- Chestguard of the Wayward Conqueror
        [45634] = 232,  -- Breastplate of the Wayward Vanquisher
        [45643] = 232,  -- Gauntlets of the Wayward Vanquisher
        [45640] = 232,  -- Crown of the Wayward Vanquisher
        [45655] = 232,  -- Legplates of the Wayward Vanquisher
        [45658] = 232,  -- Mantle of the Wayward Vanquisher
        [45641] = 232,  -- Gauntlets of the Wayward Conqueror
        [45656] = 232,  -- Mantle of the Wayward Conqueror
        [45632] = 232,  -- Breastplate of the Wayward Conqueror
        [45653] = 232,  -- Legplates of the Wayward Conqueror
        [45638] = 232,  -- Crown of the Wayward Conqueror
        [45633] = 232,  -- Breastplate of the Wayward Protector
        [45642] = 232,  -- Gauntlets of the Wayward Protector
        [45639] = 232,  -- Crown of the Wayward Protector
        [45654] = 232,  -- Legplates of the Wayward Protector
        [45657] = 232,  -- Mantle of the Wayward Protector
        --- WOTLK P3 ---
        [47242] = 245,  -- Trophy of the Crusade
        [47557] = 258,  -- Regalia of the Grand Conqueror
        [47558] = 258,  -- Regalia of the Grand Protector
        [47559] = 258,  -- Regalia of the Grand Vanquisher
        --- WOTLK P4 ---
        [52025] = 264,  -- Vanquisher's Mark of Sanctification
        [52026] = 264,  -- Protector's Mark of Sanctification
        [52027] = 264,  -- Conqueror's Mark of Sanctification
        [52028] = 277,  -- Vanquisher's Mark of Sanctification (Heroic)
        [52029] = 277,  -- Protector's Mark of Sanctification (Heroic)
        [52030] = 277,  -- Conqueror's Mark of Sanctification (Heroic)
        --- SOD P3 ---
        [220636] = 55,  -- Atal'ai Blood Icon
        [220637] = 55,  -- Atal'ai Ritual Token
        --- SOD P4 ---
        [227532] = 66,  -- Incandescent Hood
        [227537] = 66,  -- Incandescent Shoulderpads
        [227535] = 66,  -- Incandescent Robe
        [227534] = 66,  -- Incandescent Leggings
        [227531] = 66,  -- Incandescent Bindings
        [227536] = 66,  -- Incandescent Boots
        [227530] = 66,  -- Incandescent Belt
        [227533] = 66,  -- Incandescent Gloves
        [227764] = 66,  -- Scorched Core Helm
        [227762] = 66,  -- Scorched Core Shoulderpads
        [227766] = 66,  -- Scorched Core Chest
        [227763] = 66,  -- Scorched Core Leggings
        [227760] = 66,  -- Scorched Core Bindings
        [227765] = 66,  -- Scorched Core Boots
        [227761] = 66,  -- Scorched Core Belt
        [227759] = 66,  -- Scorched Core Gloves
        [227755] = 66,  -- Molten Scaled Helm
        [227752] = 66,  -- Molten Scaled Shoulderpads
        [227758] = 66,  -- Molten Scaled Chest
        [227754] = 66,  -- Molten Scaled Leggings
        [227750] = 66,  -- Molten Scaled Bindings
        [227757] = 66,  -- Molten Scaled Boots
        [227751] = 66,  -- Molten Scaled Belt
        [227756] = 66,  -- Molten Scaled Gloves
        [18703]  = 75,  -- Ancient Petrified Leaf
        [228129] = 71,  -- Shadowflame Skull
        --- SOD P5 ---
        [231711] = 76, -- Draconic Hood
        [231709] = 76, -- Draconic Shoulderpads
        [231714] = 76, -- Draconic Robe
        [231710] = 76, -- Draconic Leggings
        [231707] = 76, -- Draconic Bindings
        [231713] = 76, -- Draconic Boots
        [231708] = 76, -- Draconic Belt
        [231712] = 76, -- Draconic Gloves
        [231719] = 76, -- Primeval Helm
        [231717] = 76, -- Primeval Shoulderpads
        [231723] = 76, -- Primeval Chest
        [231718] = 76, -- Primeval Leggings
        [231715] = 76, -- Primeval Bindings
        [231721] = 76, -- Primeval Boots
        [231716] = 76, -- Primeval Belt
        [231720] = 76, -- Primeval Gloves
        [231728] = 76, -- Ancient Helm
        [231726] = 76, -- Ancient Shoulderpads
        [231731] = 76, -- Ancient Chest
        [231727] = 76, -- Ancient Leggings
        [231724] = 76, -- Ancient Bindings
        [231730] = 76, -- Ancient Boots
        [231725] = 76, -- Ancient Belt
        [231729] = 76, -- Ancient Gloves
        [231722] = 79, -- Depleted Scythe of Chaos
        [229352] = 79, -- Intelligence Findings
        [230904] = 79, -- Scroll: SEENECS FO RIEF
        [231378] = 79, -- Shimmering Golden Disk
        [231882] = 79, -- Suppression Device Receipt
        [231995] = 79, -- Hardened Elementium Slag
        [231814] = 79, -- Chromatic Heart
        --- SOD P6 ---
        [233369] = 78,  -- Qiraji Bindings of Dominance
        [233370] = 78,  -- Qiraji Bindings of Command
        [233371] = 78,  -- Qiraji Bindings of Sovereignty
        [20883]  = 81,  -- Qiraji Glyphed Jewel
        [20887]  = 81,  -- Qiraji Engraved Jewel
        [235045] = 79,  -- Imperial Qiraji Regalia
        [235046] = 79,  -- Imperial Qiraji Armaments
        [233365] = 81,  -- Intact Viscera
        [233367] = 81,  -- Imperial Peritoneum
        [233368] = 81,  -- Imperial Entrails
        [233362] = 88,  -- Husk of the Old God
        [233363] = 88,  -- Carapace of the Old God
        [233364] = 88,  -- Skin of the Old God
        [21221]  = 88,  -- Eye of C'thun
        --- AGNI ADDITIONS
        --- Mounts
        -- Usable Outside
        [233351] = 71.717,  -- Light Green Qiraji Resonating Crystal
        [233352] = 71.717,  -- Dark Blue Qiraji Resonating Crystal
        [233353] = 71.717,  -- Light Blue Qiraji Resonating Crystal
        [235511] = 71.717,  -- Flawless Yellow Qiraji Resonating Crystal
        [235512] = 71.717,  -- Flawless Green Qiraji Resonating Crystal
        [235513] = 71.717,  -- Flawless Blue Qiraji Resonating Crystal
        [235514] = 71.717,  -- Flawless Red Qiraji Resonating Crystal
        -- Inside Only
        [21218] = 81.31,  -- Blue Qiraji Resonating Crystal
        [21324] = 81.31,  -- Yellow Qiraji Resonating Crystal
        [21323] = 81.31,  -- Green Qiraji Resonating Crystal
        [21321] = 81.31,  -- Red Qiraji Resonating Crystal
        --- Cosmetics
        [234614] = 81.31,    -- Void-Touched Emblem
        --- SOD P7 ---
        [237381] = 92,  -- Desecrated Ring
        [236241] = 88,  -- Desecrated Circlet
        [236246] = 88,  -- Desecrated Leggings
        [236238] = 88,  -- Desecrated Legplates
        [236254] = 86,  -- Desecrated Spaulders
        [236247] = 88,  -- Desecrated Wristguards
        [236249] = 88,  -- Desecrated Headpiece
        [236248] = 86,  -- Desecrated Boots
        [236245] = 88,  -- Desecrated Bindings
        [236250] = 88,  -- Desecrated Handguards
        [236236] = 88,  -- Desecrated Helmet
        [236251] = 92,  -- Desecrated Tunic
        [236232] = 88,  -- Desecrated Waistguard
        [236239] = 86,  -- Desecrated Sandals
        [236240] = 86,  -- Desecrated Shoulderpads
        [236237] = 86,  -- Desecrated Pauldrons
        [236252] = 88,  -- Desecrated Girdle
        [236253] = 88,  -- Desecrated Legguards
        [236231] = 92,  -- Desecrated Breastplate
        [236235] = 88,  -- Desecrated Bracers
        [236242] = 92,  -- Desecrated Robe
        [236244] = 88,  -- Desecrated Belt
        [236233] = 88,  -- Desecrated Gauntlets
        [236234] = 86,  -- Desecrated Sabatons
        [236243] = 88,  -- Desecrated Gloves
        [236350] = 90,  -- The Phylactery of Kel'Thuzad
        --- AGNI ADDITIONS
        --- Mounts
        [236662] = 71.717,   -- Reins of War
        [236663] = 71.717,   -- Reins of Conquest
        [236664] = 71.717,   -- Reins of Death
        [236665] = 71.717,   -- Reins of Famine
        --- Enchants
        [236326] = 71.717,  -- Might of the Scourge
        [236324] = 71.717,  -- Power of the Scourge
        [236323] = 71.717,  -- Resilience of the Scourge
        [236325] = 71.717,  -- Fortitude of the Scourge
        --- Cataclysm P1 Normal ---
        [63682] = 359, -- Helm of the Forlorn Vanquisher
        [63684] = 359, -- Helm of the Forlorn Protector
        [63683] = 359, -- Helm of the Forlorn Conqueror
        [64314] = 359, -- Mantle of the Forlorn Vanquisher
        [64316] = 359, -- Mantle of the Forlorn Protector
        [64315] = 359, -- Mantle of the Forlorn Conqueror
        --- Cataclysm P1 Heroic ---
        [66998] = 372, -- Essence of the Forlorn
        [65002] = 372, -- Crown of the Forlorn Vanquisher
        [65000] = 372, -- Crown of the Forlorn Protector
        [65001] = 372, -- Crown of the Forlorn Conqueror
        [65089] = 372, -- Shoulders of the Forlorn Vanquisher
        [65087] = 372, -- Shoulders of the Forlorn Protector
        [65088] = 372, -- Shoulders of the Forlorn Conqueror
        [67426] = 372, -- Leggings of the Forlorn Vanquisher
        [67427] = 372, -- Leggings of the Forlorn Protector
        [67428] = 372, -- Leggings of the Forlorn Conqueror
        [67431] = 372, -- Gauntlets of the Forlorn Vanquisher
        [67430] = 372, -- Gauntlets of the Forlorn Protector
        [67429] = 372, -- Gauntlets of the Forlorn Conqueror
        [67425] = 372, -- Chest of the Forlorn Vanquisher
        [67424] = 372, -- Chest of the Forlorn Protector
        [67423] = 372, -- Chest of the Forlorn Conqueror
    }
}
CLM.IndirectMap = IndirectMap
