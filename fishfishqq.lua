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
        ["Whitelist Username"] = {"Arik6lG9", "Arik6S8","Arik736737","petanimaximal01","petanimaximal02","petanimaximal03","petanimaximal04","aquamaxpro2019","RealNoraEditsOfficia","MiniAvacreatesstudi0","JaxellaGaming22","pandaezraskates91","Minin0racraftsHQ55","Theech0ethanOfficial","owennova2003yt","cyberduckstealth2016","zoecraft58","abigailmaxecho2015","toxicfusionsonic91","aquawraith200885"},
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
        ["Auto Element Rod 2"] = false,
        ["Unlock Ancient Ruin"] = true,
        ["Allowed Sacrifice"] = {
            "Ghost Shark",
            "Cryoshade Glider",
            "Panther Eel",
            "Queen Crab",
            "King Crab",
            "Giant Squid",
            "Blob Shark",
            "Ghost Shark",
        },
        ["FARM_LOC_SECRET_SACRIFICE"] = "Treasure Room",
 
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
        ["Minimum Rod"] = "Midnight Rod",
        ["Weather List"] = {
            "Wind", "Storm", "Cloudy",
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
            ["Luck Totem"] = 5,
        },
    },
    ["Event"] = {
        ["Start Farm"] = false,
        ["Minimum Rod"] = "Ghostfinn Rod",
        ["Event List"] = {
            "Megalodon Hunt",
            "Ghost Shark Hunt",
            "Shark Hunt",
            -- ["Ancient Lochness Monster"] = true,
        },
    },
    ["Enchant"] = {
        ["Auto Enchant"] = true,
        ["Roll Enchant"] = false,
        ["Evolved Roll Enchant"] = false,
        ["Enchant List"] = {
            "Reeler II",
            "SECRET Hunter",
            "Shark Hunter",
            "Reeler I",
            "Leprechaun II",
            "Mutation Hunter II",
            "Prismatic I",
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
            "Prismatic I",
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
            ["Ancient Ruin"] = {"Element Rod", "Ghostfinn Rod", "Angler Rod", "Ares Rod"},
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
