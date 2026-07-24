_G.FishItConfig = _G.FishItConfig or {
    ["Fishing"] = {
        ["Auto Perfect"] = true,
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
	    ["Trade Timeout"] = 50,
        ["Auto Friend Request"] = true,

	    ["Auto Egg Exchange"] = false,

        ["Teleport"] = true,
        ["Auto Roll Ability"] = false,
        ["Equip Ability"] = "",
    },
    ["Auto Trade"] = {
        ["Enabled"] = true,
        ["Whitelist Username"] = {"petanimaximal04", "petanimaximal05","petanimaximal06","petanimaximal07","petanimaximal08","petanimaximal09","petanimaximal04","aquamaxpro2019","petanimaximal10","petanimaximal11","petanimaximal12","petanimaximal13","petanimaximal14","petanimaximal15","petanimaximal16","petanimaximal17","petanimaximal18","petanimaximal19","petanimaximal20","petanimaruk001","petanimaruk002","petanimaruk003","petanimaruk004","petanimaruk005","petanimaruk005","petanimaruk006","petanimaruk007","petanimaruk008","petanimaruk009","petanimaruk0010","petanimaruk0011","petanimaruk0012","petanimaruk0013","petanimaruk0014","petanimaruk0015","petanimaruk0016","petanimaruk0017","petanimaruk0018","petanimaruk0019","petanimaruk0020","aquawraith200885"},
            "X",
            -- {Tier = "Mythic", Variant = "Stone"}, -- Tier + Variant
        },
        ["Fish Name"] = {
            "Sacred Guardian Squid",
            {Name = "Ruby", Variant = "Gemstone"},
            -- {Variant = "Leviathan Rage"}, -- Variant Only
        },
        ["Item Name"] = {
            "Runic Enchant Stone",
        },

    },
    ["Farm Coin Only"] = {
        ["Enabled"] = false, -- Farm coins only [ cant buy rod, bait, enchant, weather ]
        ["Target"] = 190000,
    },
    ["Selling"] = {
        ["Auto Sell"] = true,
        ["Auto Sell Threshold"] = "Mythic",
        ["Auto Sell Every"] = 100,
    },
    ["Doing Quest"] = {
        ["Auto Ghostfinn Rod"] = true,
        ["Unlock Ancient Ruin"] = true,
        ["Auto Element Rod"] = true,
        ["Auto Diamond Rod"] = false,
        ["Allowed Sacrifice"] = {
            "Ghost Shark",
            "Cryoshade Glider",
            "Panther Eel",
            "Queen Crab",
            "King Crab",
            "Giant Squid",
            "Blob Shark",
            "Skeleton Narwhal",
            "Ghost Shark",
            "King Jelly", 
            "Mosasaur Shark",
            "Elshark Gran Maja", 
            "Bone Whale", 
            "Worm Fish", 
            "Gladiator Shark", 
            "Gladiator Shark", 
            "Ghost Shark", 
        },
        ["FARM_LOC_SECRET_SACRIFICE"] = "Sewers",
 
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
            ["Mutation Totem"] = 5,
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
        ["Auto Enchant"] = true,
        ["Roll Enchant"] = true,
        ["Evolved Roll Enchant"] = true,
        ["Farm Until Enchant"] = true,
        ["Enchant List"] = {
            "SECRET Hunter",
        },
        ["Second Enchant"] = true,
        ["Allowed Sacrifice"] = {
            "Ghost Shark",
            "Cryoshade Glider",
            "Panther Eel",
            "Queen Crab",
            "King Crab",
            "Giant Squid",
            "Blob Shark",
            "Mosasaur Shark",
            "Viridis Lurker",
            "Deepsea Monster Axolotl",
            "Skeleton Narwhal",
            "Ghost Shark",
            "King Jelly", 
            "Mosasaur Shark",
            "Elshark Gran Maja", 
            "Bone Whale", 
            "Worm Fish", 
            "Gladiator Shark", 
            "Ghost Shark", 
        },
        ["Second Enchant List"] = {
            "Cursed I",
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
            ["Underwater City"] = {"Element Rod", "Ghostfinn Rod", "Diamond Rod", "Ares Rod"},
        },
        ["Endgame"] = "Element Rod",
    },
 
    ["ExtremeFpsBoost"] = false,
    ["UltimatePerformance"] = false,
    ["Disable3DRender"] = false,
    ["AutoRemovePlayer"] = false,
 
    ["AutoReconnect"] = false,
    ["HideGUI"] = false,
    ["EXIT_MAP_IF_DISCONNECT"] = false,
}
