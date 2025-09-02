# - Leaderboard -
place template do2:world_setup/leaderboard_default -534 113 1965
# - Adventure Pig -
setblock -524 110 2010 oak_fence
summon minecraft:leash_knot -523.5 110.375 2010.5
summon pig -523.4 110 2011.9 {Invulnerable: 1b, Tags: ["NO_TOUCH"], Leash: {X: -524, Y: 110, Z: 2010}, Health: 10.0f, CustomName: '{"text":"Adventure PIG!"}',}
# - Remember Impulse -
setblock -513 114 1987 minecraft:player_head[rotation=0]{SkullOwner: {Id: [I; -151117312, 1620922342, -2001317219, 1508793201], Properties: {textures: [{Signature: "pZTtN4kuZ0VriYPTFlvOWtxhIbITtR9//u0FnOcShB3BZc1DSjq8r0bS8cpivaIoO5D91Q+7HCYgyWMWoQ4Zq8r+Ar89q0fvKm/OIq7pPhPDKd24C/lsio3UmiLNsIqCTTR4/zk/GaYKo5DSu6dhoO0A7FwXw83UTiBOMuaQbPVenM5KIpTSDA0suDQf36mYH1b5xmomJI+j2FQ6lNllnG4ptx068ZdPrwcUnNqTKhrj+BcTWKYSqC66lfvHfKUlV1nTiBORuiRrMBfGfeag2+ai8snBwDHX8WkfVU1bnSskVJMGILvVOinR23AwitJVeF3wn/DnLmYzFDS9CFRkVkTH53sNelSI1TzihCc7lCXULLTSuR0IRGObca1KlRxA2mth8UV2CBvYw6zV/VkiF5+QL7p1EKwAeHh/lOcxB+YBDwNSkyrcePabtRDXyHf95UW++v8W1aBf+yYz7fYVS8hASBD8U8HvbsNao4BUkHA0DUN9ufrrctrKCUxcHIVJeXIiyUgZNaMc7Y3WkhGaborfJD+yBzqW2KWhej10LQrSDrBK+i49sBofCi2e6nKOOQA4r8Ec4wdDUtCihFbHcHOcp3GH6bR/sayVhppGGEWblWaA1DAPxBBYkTW2Z72UbH7RVZCxFmRfHexFQgluBPmLsQJ2pZAj6UHbYSqZ8ms=", Value: "ewogICJ0aW1lc3RhbXAiIDogMTY5ODQyMjQwMjA0OSwKICAicHJvZmlsZUlkIiA6ICJmNmZlMjIwMDYwOWQ0ZmU2ODhiNjUyOWQ1OWVlNWI3MSIsCiAgInByb2ZpbGVOYW1lIiA6ICJpbXB1bHNlU1YiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTczY2NlNGQzZDI4NTU2ZDU0NGQ3NTViYzYzYjMxNzkxMmQ3MWYxZjQ5MjE2MTdkNDBmN2M1ZTUzOGY1YzBhMyIKICAgIH0KICB9Cn0="}]}, Name: "impulseSV"}, x: -513, y: 114, z: 1987, id: "minecraft:skull"}
setblock -513 114 1986 minecraft:black_stained_glass
setblock -513 115 1985 minecraft:spruce_wall_sign[facing=north]{back_text:{color:"black",has_glowing_text:0b,messages:['{"text":"Did you know?"}','{"text":"You can write"}','{"text":"on the back of"}','{"text":"wallmounted signs"}']},front_text:{color:"orange",has_glowing_text:1b,messages:['{"text":"In remembrance"}','{"text":"ImpulseSV"}','{"text":"Gone, but not"}','{"text":"forgotten"}']},is_waxed:0b}
# - Soup Station Ad-
setblock -515 114 1986 minecraft:acacia_wall_sign[facing=north]{back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"cyan",has_glowing_text:1b,messages:['{"text":"Find the historic"}','{"text":"soup station at"}','{"text":"the Hermitsonian"}','{"text":"Museum!"}']},is_waxed:0b}
setblock -516 114 1986 minecraft:acacia_wall_sign[facing=north]{back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"cyan",has_glowing_text:1b,messages:['{"text":"Find the historic"}','{"text":"soup station at"}','{"text":"the Hermitsonian"}','{"text":"Museum!"}']},is_waxed:0b}
# - Blast Furnace Items -
data merge block -524 112 1980 {Items:[{Count:64b,Slot:0b,id:"minecraft:chicken"},{Count:1b,Slot:1b,id:"minecraft:chest"}]}
data merge block -508 112 1980 {Items:[{Count:64b,Slot:0b,id:"minecraft:chicken"}]}
data merge block -504 112 1980 {Items:[{Count:64b,Slot:0b,id:"minecraft:chicken"}]}
data merge block -500 112 1980 {Items:[{Count:64b,Slot:0b,id:"minecraft:chicken"}]}
data merge block -496 112 1980 {Items:[{Count:3b,Slot:0b,id:"minecraft:cooked_chicken"}]}
data merge block -496 112 1984 {Items:[{Count:64b,Slot:0b,id:"minecraft:feather"}]}
data merge block -492 112 1980 {Items:[{Count:64b,Slot:0b,id:"minecraft:feather"}]}
data merge block -500 112 1984 {Items:[{Count:64b,Slot:0b,id:"minecraft:feather"}]}
data merge block -504 112 1984 {Items:[{Count:64b,Slot:0b,id:"minecraft:feather"}]}
data merge block -480 109 2020 {Items:[{Count:2b,Slot:0b,id:"minecraft:iron_nugget",tag:{CustomModelData:2,CustomRoleplayData:1b,RepairCost:0,display:{Name:'{"text":"❄☠ Decked Out Crown ☠❄"}'}}}]}
data merge block -564 109 2012 {Items:[{Count:1b,Slot:0b,id:"minecraft:golden_carrot",tag:{CustomModelData:9,CustomRoleplayData:1b,RepairCost:0,display:{Name:'{"text":"Pancake"}'}}}]}
data merge block -568 109 2008 {Items:[{Count:1b,Slot:0b,id:"minecraft:golden_carrot",tag:{CustomModelData:9,CustomRoleplayData:1b,RepairCost:0,display:{Name:'{"text":"Pancake"}'}}}]}
data merge block -556 109 2004 {Items:[{Count:1b,Slot:0b,id:"minecraft:golden_carrot",tag:{CustomModelData:9,CustomRoleplayData:1b,RepairCost:0,display:{Name:'{"text":"Pancake"}'}}}]}
data merge block -556 109 2000 {Items:[{Count:1b,Slot:0b,id:"minecraft:golden_carrot",tag:{CustomModelData:9,CustomRoleplayData:1b,RepairCost:0,display:{Name:'{"text":"Pancake"}'}}}]}
data merge block -544 109 2000 {Items:[{Count:2b,Slot:0b,id:"minecraft:iron_nugget",tag:{CustomModelData:2,display:{Name:'{"text":"❄☠ Decked Out Crown ☠❄"}'},tracked:1b}}]}
data merge block -528 109 2020 {Items:[{Count:8b,Slot:0b,id:"minecraft:iron_nugget",tag:{CustomModelData:2,display:{Name:'{"text":"❄☠ Decked Out Crown ☠❄"}'},tracked:1b}}]}
data merge block -488 108 2006 {Items:[{Count:1b,Slot:13b,id:"minecraft:cookie"}]}
# - Dungeon Door area -
setblock -533 114 1985 minecraft:spruce_wall_sign[facing=north,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"black",has_glowing_text:1b,messages:['{"text":"The Q:"}','{"text":"1."}','{"text":"2."}','{"text":"3."}']},is_waxed:0b}
summon minecraft:glow_item_frame -532.50 115.50 1985.97 {Motion: [0.0d, 0.0d, 0.0d], Facing: 2b, ItemRotation: 0b, Invulnerable: 0b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [180.0f, 0.0f], FallDistance: 0.0f, Item: {id: "minecraft:clock", Count: 1b, tag: {RepairCost: 0, display: {Name: '{"text":"Omega SpeedMaster"}'}}}, ItemDropChance: 1.0f, Fire: -1s, TileY: 115, TileX: -533, Invisible: 0b, TileZ: 1985, Fixed: 0b}
setblock -530 113 1985 minecraft:cyan_bed[facing=west,occupied=false,part=foot]{}
setblock -531 113 1985 minecraft:cyan_bed[facing=west,occupied=false,part=head]{}
setblock -536 113 1985 minecraft:crafting_table
summon minecraft:glow_item_frame -535.50 114.50 1985.97 {Motion: [0.0d, 0.0d, 0.0d], Facing: 2b, ItemRotation: 0b, Invulnerable: 0b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [180.0f, 0.0f], FallDistance: 0.0f, Item: {id: "minecraft:diamond_pickaxe", Count: 1b, tag: {Damage: 740, RepairCost: 0, display: {Name: '{"text":"Pick of Shame"}'}}}, ItemDropChance: 1.0f, Fire: -1s, TileY: 114, TileX: -536, Invisible: 0b, TileZ: 1985, Fixed: 0b}
data merge block -537 114 1975 {back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"white",has_glowing_text:1b,messages:['{"text":""}','{"text":"Resetti"}','{"text":"Spaghetti"}','{"text":""}']},is_waxed:0b}
data merge block -537 115 1975 {back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"white",has_glowing_text:1b,messages:['{"text":""}','{"text":"In Use"}','{"text":"Caboose"}','{"text":""}']},is_waxed:0b}
data merge block -537 116 1975 {back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"white",has_glowing_text:1b,messages:['{"text":""}','{"text":"Available"}','{"text":"Inhaleable"}','{"text":""}']},is_waxed:0b}
# - Scar Lackey -
setblock -498 114 1971 minecraft:player_wall_head[facing=south]{SkullOwner:{Id:[I;-890677940,834553826,-1171567736,1739435205],Name:"GoodTimeWithScar",Properties:{textures:[{Signature:"sl5RXEaa2oHYV6BE4jXLOPMdtgEMB962x3up5fATu+P84MocqgYBYCVenhfVcgDLcBjbFWoeXiod0El+Sy2Fo1onc2LCSF/52l077peC+Esy+Z6hcMUsh2W22W+dtyETgWcLcMr5sVMWq54dgSuFDYn6ZmcvVa/0ERFFUceGM+JYRTS4+t+iX2zw8Dc2q/ZQCVwxoIuH0Ln567ZOQ+WosaORh9vQDg1TBOl7WYJcOCFlouBJtcJ8BQSIlRitWHcwp3+XeXnO+RU0F/vSaU1pqr3dWcBpg3mP9iRKChKGy/alooDNfXFmRTjfmxesQxt7F3ZzK2C6knj9PSot3wLuUvSqVTgY3QmbAzXuIWFZejWMAxb+MpbiGMZwCUHl6/3EuogTwz8Ft03FCPWBM9dMx+dVcF+DQrTXzRNqGUk99PvtnR+Ww1qaNo8OiLr6jeKYwYu4LZMQEzyg8u/hyJ+x7IJWwBN1sXsWoBjDi59bJGuaVcMboyugG+TgbRGW18RtGkbD+tRtusB0LbZUgD8M8tp/K1zwahPCl/ldO5cdEvjtL5r2okw2pSEO0cXuKor+6wZEHS6V8Z0g2YW5I9N7eUZx1p3ZU/rVZVJt+iSMrLXoTBQ701A9f83S8Y6PhHouvW6ikI5r2gpGkvwwPk7q4cSE4gUYBi6WHi9VVmiAjHw=",Value:"ewogICJ0aW1lc3RhbXAiIDogMTY5OTA1NDk5NjI4OCwKICAicHJvZmlsZUlkIiA6ICJjYWU5NTU0YzMxYmU0N2UyYmEyYjRiODg2N2FkYWNjNSIsCiAgInByb2ZpbGVOYW1lIiA6ICJHb29kVGltZVdpdGhTY2FyIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2I5YWYwMWNiMDg2YzA0YzdjN2JkOWM2OGYyNjcxNjVhOWY1YTc1Y2FkMmYzMTJjYThlYjQ2NTliNmIxOGE4NjYiCiAgICB9CiAgfQp9"}]}}}
setblock -498 115 1972 minecraft:warped_wall_sign[facing=south,waterlogged=false]
data merge block -498 115 1972 {back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"black",has_glowing_text:1b,messages:['{"text":"Scar Lackey"}','{"text":"I\'ll pay you"}','{"text":"to come along"}','{"text":"8 Crowns"}']},is_waxed:0b}
# - Etho's afk hut -
fill -516 124 1992 -517 122 1992 spruce_planks
setblock -517 124 1992 minecraft:crafting_table
setblock -517 123 1991 minecraft:spruce_wall_sign[facing=north,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"white",has_glowing_text:1b,messages:['{"text":"Etho\'s historic"}','{"text":"AFK room"}','{"text":"(Property of"}','{"text":"Hermitsonian Mus.)"}']},is_waxed:0b}
setblock -516 122 1992 minecraft:oak_door[facing=south,half=lower,hinge=right,open=false,powered=false]
setblock -516 123 1992 minecraft:oak_door[facing=south,half=upper,hinge=right,open=false,powered=false]
setblock -517 122 1993 air
