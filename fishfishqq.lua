_G.FishItConfig = _G.FishItConfig or {
    ["Fishing"] = {
        ["Auto Perfect"] = false,
        ["Random Result"] = false,
 
        ["Auto Favorite"] = true,
        ["Auto Unfavorite"] = false,
        ["Fish Name"] = {
            "Sacred Guardian Squid",
            {Name = "Ruby", Variant = "Gemstone"},
            -- {Variant = "Leviathan Rage"}, -- Variant Only
            -- {Tier = "Secret", Variant = "Leviathan Rage"},  -- Tier + Variant
        },
 
        ["Auto Accept Trade"] = true,
        ["Auto Friend Request"] = true,
    },
    ["Auto Trade"] = {
        ["Enabled"] = true,
        ["Whitelist Username"] = {"petanimaximal04", "petanimaximal05","petanimaximal06","petanimaximal07","petanimaximal08","petanimaximal09","petanimaximal04","aquamaxpro2019","petanimaximal10","petanimaximal11","petanimaximal12","petanimaximal13","petanimaximal14","petanimaximal15","petanimaximal16","petanimaximal17","petanimaximal18","petanimaximal19","petanimaximal20","aquawraith200885"},
        ["Category Fish"] = {
            "Secret",
            -- {Tier = "Mythic", Variant = "Stone"}, -- Tier + Variant
        },
        ["Fish Name"] = {
            -- "Sacred Guardian Squid",
            {Name = "Ruby", Variant = "Gemstone"},
            -- {Variant = "Leviathan Rage"}, -- Variant Only
        },
        ["Item Name"] = {
            "Evolved Enchant Stone", "Candy Enchant Stone",
        },
    },
    ["Farm Coin Only"] = {
        ["Enabled"] = false, -- Farm coins only [ cant buy rod, bait, enchant, weather ]
        ["Target"] = 190000,
    },
    ["Selling"] = {
        ["Auto Sell"] = true,
        ["Auto Sell Threshold"] = "Mythic",
        ["Auto Sell Every"] = 20,
    },
    ["Doing Quest"] = {
        ["Auto Ghostfinn Rod"] = true,
        ["Unlock Ancient Ruin"] = true,
        ["Auto Element Rod"] = true,
        ["Auto Diamond Rod"] = true,
        ["Allowed Sacrifice"] = {
            "Ghost Shark",
            "Cryoshade Glider",
            "Panther Eel",
            "Queen Crab",
            "King Crab",
            "Giant Squid",
            "Blob Shark",
            "Ghost Shark",
            "King Jelly", 
            "Mosasaur Shark",
            "Elshark Gran Maja", 
            "Bone Whale", 
            "Gladiator Shark", 
            "Frostborn Shark", 
        },
        ["FARM_LOC_SECRET_SACRIFICE"] = "Ocean",
 
        ["Minimum Rod"] = "Astral Rod",
    },
    ["WebHook"] = {
        ["Link Webhook"] = "https://discord.com/api/webhooks/1491133041299689677/gLJSCFrnjwnu_G1o0xnxtRCMDCT9hw0lFxPdT1NLwthFeUvfSJN7lSNCso2h-TwkPB7-",
        ["Auto Sending"] = true,
        ["Category"] = {"Secret"},
 
        ["Link Webhook Quest Complete"] = "https://discord.com/api/webhooks/1491133041299689677/gLJSCFrnjwnu_G1o0xnxtRCMDCT9hw0lFxPdT1NLwthFeUvfSJN7lSNCso2h-TwkPB7-",
    },
    ["Weather"] = {
        ["Auto Buying"] = true,
        ["Minimum Rod"] = "Ghostfinn Rod",
        ["Weather List"] = {
            "Cloudy",
            "Wind",
            "Snow",
            "Storm",
            "Shark Hunt",
            "Radiant",
        },
    },
    ["Potions"] = {
        ["Auto Use"] = true,
        ["Minimum Rod"] = "Astral Rod",
    },
    ["Totems"] = {
        ["Auto Use"] = true,
        ["Minimum Rod"] = "Ghostfinn Rod",
        ["Buy List"] = {
            ["Luck Totem"] = 20,
            "Mutation Totem",
            "Shiny Totem",
        },
    },
    ["Event"] = {
        ["Start Farm"] = true,
        ["Minimum Rod"] = "Ghostfinn Rod",
        ["Event List"] = {
            ["Megalodon Hunt"] = true,
            ["Ancient Lochness Monster"] = false,
        },
    },
    ["Enchant"] = {
        ["Auto Enchant"] = false,
        ["Roll Enchant"] = false,
        ["Evolved Roll Enchant"] = false,
        ["Enchant List"] = {
            "Reeler II",
            "Reeler I",
            "Cursed I,",
            "SECRET Hunter",
        },
        ["Second Enchant"] = true,
        ["Allowed Sacrifice"] = {
            "Giant Squid",
            "Cryoshade Glider",
            "Gladiator Shark",
            "Panther Eel",
        },
        ["Second Enchant List"] = {
            "Reeler I",
            "Perfection",
            "Cursed I,",
            "Mutation Hunter II",
        },
        ["Minimum Rod"] = "Ghostfinn Rod",
    },
    ["Bait List"] = {
        ["Auto Buying"] = true,
        ["Buy List"] = {
            "Midnight Bait",
            "Chroma Bait",
            "Corrupt Bait",
            "Aether Bait",
        },
        ["Endgame"] = "",
    },
    ["Rod List"] = {
        ["Auto Buying"] = true,
        ["Buy List"] = {
            "Grass Rod",
            "Midnight Rod",
            "Astral Rod",
            "Ares Rod",
            "Angler Rod",
        },
        ["Location Rods"] = {
            ["Fisherman Island"] = {"Starter Rod"},
            ["Kohana Volcano"] = {"Grass Rod"},
            ["Esoteric Depths"] = {"Astral Rod", "Midnight Rod"},
            ["Ancient Ruin"] = {"Element Rod", "Ghostfinn Rod", "Diamond Rod", "Ares Rod"},
        },
        ["Endgame"] = "Diamond Rod",
    },
 
    ["ExtremeFpsBoost"] = false,
    ["UltimatePerformance"] = false,
    ["Disable3DRender"] = false,
    ["AutoRemovePlayer"] = false,
 
    ["AutoReconnect"] = false,
    ["HideGUI"] = false,
    ["EXIT_MAP_IF_DISCONNECT"] = false,
}
