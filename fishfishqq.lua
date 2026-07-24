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
        ["Auto Friend Request"] = false,

	    ["Auto Egg Exchange"] = false,

        ["Teleport"] = true,
        ["Auto Roll Ability"] = false,
        ["Equip Ability"] = "",
    },
    ["Auto Trade"] = {
        ["Enabled"] = true,
        ["Whitelist Username"] = {"petanimaximal04", "petanimaximal05","petanimaximal06","petanimaximal07","petanimaximal08","petanimaximal09","petanimaximal04","aquamaxpro2019","petanimaximal10","petanimaximal11","petanimaximal12","petanimaximal13","petanimaximal14","petanimaximal15","petanimaximal16","petanimaximal17","petanimaximal18","petanimaximal19","petanimaximal20","petanimaruk001","petanimaruk002","petanimaruk003","petanimaruk004","petanimaruk005","petanimaruk005","petanimaruk006","petanimaruk007","petanimaruk008","petanimaruk009","petanimaruk0010","petanimaruk0011","petanimaruk0012","petanimaruk0013","petanimaruk0014","petanimaruk0015","petanimaruk0016","petanimaruk0017","petanimaruk0018","petanimaruk0019","petanimaruk0020","aquawraith200885"},
        ["Category Fish"] = {
            -- {Tier = "Mythic", Variant = "Stone"}, -- Tier + Variant
        },
        ["Fish Name"] = {
            -- {Name = "Ruby", Variant = "Gemstone"},
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
        ["Auto Sell Every"] = 50,
    },
    ["Doing Quest"] = {
        ["Auto Ghostfinn Rod"] = true,
        ["Auto Element Rod"] = true,
        ["Auto Element Rod 2"] = false,
        ["Auto Diamond Rod"] = false,
        ["Auto Aetherion Bait"] = false,
        ["Auto Divine Power"] = false,
        ["Unlock Ancient Ruin"] = false,
        ["Allowed Sacrifice"] = {
            "Ghost Shark",
            "Cryoshade Glider",
            "Panther Eel",
            "Queen Crab",
            "King Crab",
            "Giant Squid",
            "Blob Shark",
            "Gladiator Shark",
            "Elshark Gran Maja",
        },
        ["FARM_LOC_SECRET_SACRIFICE"] = "Sewers",

        ["Minimum Rod"] = "Astral Rod",
    },
    ["WebHook"] = {
        ["Auto Sending"] = true,
        ["Category"] = {
            {Name = "Ruby", Variant = "Gemstone"},
        },
        ["Item Name"] = {"SAMBO"},
        ["Link Webhook"] = "https://discord.com/api/webhooks/1491133041299689677/gLJSCFrnjwnu_G1o0xnxtRCMDCT9hw0lFxPdT1NLwthFeUvfSJN7lSNCso2h-TwkPB7-",
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
        ["Minimum Rod"] = "Ghostfinn Rod",
    },
    ["Totems"] = {
        ["Auto Use"] = true,
        ["Minimum Rod"] = "Ghostfinn Rod",
        ["Buy List"] = {
            ["Mutation Totem"] = 5,
        },
    },
    ["Event"] = {
        ["Start Farm"] = true,
        ["Minimum Rod"] = "Ghostfinn Rod",
        ["Event List"] = {
            ["Megalodon Hunt"] = true,
            ["Ancient Lochness Monster"] = false,
            "Megalodon Hunt",
        },
    },
    ["Enchant"] = {
        ["Auto Enchant"] = false,
        ["Roll Enchant"] = false,
        ["Evolved Roll Enchant"] = false,
        ["Enchant After X Stone"] = 30,
        ["Enchant List"] = {
            "SECRET Hunter",
        },
        ["Second Enchant"] = false,
        ["Allowed Sacrifice"] = {
            "Ghost Shark",
            "Cryoshade Glider",
            "Panther Eel",
            "Queen Crab",
            "King Crab",
            "Giant Squid",
            "Blob Shark",
            "Gladiator Shark",
            "Elshark Gran Maja",
            "Mosasaur Shark",
        },
        ["Second Enchant List"] = {
            "Cursed I",
        },
        ["Minimum Rod"] = "Ghostfinn Rod",
    },
    ["Bait List"] = {
        ["Auto Buying"] = true,
        ["Buy List"] = {
            "Corrupt Bait",
            "Singularity Bait",
        },
        ["Endgame"] = "Singularity Bait",
    },
    ["Rod List"] = {
        ["Auto Buying"] = true,
        ["Buy List"] = {
            "Grass Rod",
            "Midnight Rod",
            "Astral Rod",
        },
        ["Location Rods"] = {
            ["Sisyphus Statue"] = {"Starter Rod", "Luck Rod", "Grass Rod"},
            ["Underwater City"] = {"Midnight Rod", "Astral Rod", "Angler Rod", "Ares Rod", "Ghostfinn Rod", "Element Rod"},
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
