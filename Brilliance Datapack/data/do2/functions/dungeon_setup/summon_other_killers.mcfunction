
# One Eyed Willy
kill @e[type=minecraft:drowned]
execute at @e[type=area_effect_cloud,tag=L2WILLY,limit=1,sort=random] run summon minecraft:drowned ~ ~ ~ {Invulnerable: 1b, Tags: ["L2WILLY"], HandDropChances: [0.0f, 0.0f], Health: 20.0f, HandItems: [{id: "minecraft:trident", Count: 1b}, {}], CustomName: '{"text":"One Eyed Willie"}',}

# Davy Bones
execute positioned -575.00 14.52 1984.51 kill @e[type=minecart,distance=..2]
kill @e[type=minecraft:stray]
summon minecraft:minecart -576 13 1984 {Invulnerable:1b, Passengers:[{Invulnerable:1b, Tags: ["L2DAVY"], id: "minecraft:stray", Health: 20.0f, Silent: 1b, CustomName: '{"text":"Davey Bones"}',HandItems:[{id: "minecraft:bow", Count: 1b, tag:{Damage: 0, Enchantments:[{lvl: 1s, id: "minecraft:unbreaking"},{lvl: 1s, id: "minecraft:power"}]}}]}]}


# - Evokers -
execute as @e[type=minecraft:evoker] at @s run kill @e[type=minecart,distance=..2]
kill @e[type=minecraft:evoker]
# Level 1
summon minecraft:minecart -550 52 1977 {Invulnerable:1b, Passengers:[{Tags: ["evoker_spot","L1E1"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Evoker"}', CanPickUpLoot: 0b}]}
summon minecraft:evoker -545 45 1958 {Tags: ["evoker_spot","L1E2"], Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Evoker"}', CanPickUpLoot: 0b}
summon minecraft:evoker -608 44 1979 {Tags: ["evoker_spot","L1E3"], Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Evoker"}', CanPickUpLoot: 0b}
summon minecraft:evoker -579 46 1984 {Tags: ["evoker_spot","L1E4"], Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Evoker"}', CanPickUpLoot: 0b}
summon minecraft:evoker -597 43 2015 {Tags: ["evoker_spot","L1E5"], Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Evoker"}', CanPickUpLoot: 0b}
summon minecraft:evoker -619 43 2005 {Tags: ["evoker_spot","L1E6"], Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Evoker"}', CanPickUpLoot: 0b}
summon minecraft:evoker -613 43 2027 {Tags: ["evoker_spot","L1E7"], Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Evoker"}', CanPickUpLoot: 0b}
summon minecraft:evoker -562 47 2027 {Tags: ["evoker_spot","L1E8"], Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Evoker"}', CanPickUpLoot: 0b}
summon minecraft:evoker -511 46 2025 {Tags: ["evoker_spot","L1E9"], Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Evoker"}', CanPickUpLoot: 0b}
summon minecraft:minecart -503 52 1984 {Invulnerable:1b, Passengers:[{Tags: ["evoker_spot","L1E10"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Evoker"}', CanPickUpLoot: 0b}]}
summon minecraft:minecart -509 52 1997 {Invulnerable:1b, Passengers:[{Tags: ["evoker_spot","L1E11"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Evoker"}', CanPickUpLoot: 0b}]}
summon minecraft:minecart -528 52 1996 {Invulnerable:1b, Passengers:[{Tags: ["evoker_spot","L1E12"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Evoker"}', CanPickUpLoot: 0b}]}
# Level 2
summon minecraft:evoker -578 12 1974 {Tags: ["evoker_spot","L2E1"], Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Evoker"}', CanPickUpLoot: 0b}
summon minecraft:minecart -537 17 1957 {Invulnerable:1b, Passengers:[{Tags: ["evoker_spot","L2E2"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Evoker"}', CanPickUpLoot: 0b}]}
summon minecraft:minecart -565 10 1949 {Invulnerable:1b, Passengers:[{Tags: ["evoker_spot","L2E3"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Evoker"}', CanPickUpLoot: 0b}]}
summon minecraft:minecart -496 17 1991 {Invulnerable:1b, Passengers:[{Tags: ["evoker_spot","L2E4"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Evoker"}', CanPickUpLoot: 0b}]}
summon minecraft:minecart -492 19 2024 {Invulnerable:1b, Passengers:[{Tags: ["evoker_spot","L2E5"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Evoker"}', CanPickUpLoot: 0b}]}
summon minecraft:minecart -511 13 2015 {Invulnerable:1b, Passengers:[{Tags: ["evoker_spot","L2E6"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Evoker"}', CanPickUpLoot: 0b}]}
summon minecraft:minecart -459 23 2017 {Invulnerable:1b, Passengers:[{Tags: ["evoker_spot","L2E7"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Evoker"}', CanPickUpLoot: 0b}]}
summon minecraft:minecart -459 20 1978 {Invulnerable:1b, Passengers:[{Tags: ["evoker_spot","L2E8"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Evoker"}', CanPickUpLoot: 0b}]}
summon minecraft:minecart -464 20 1961 {Invulnerable:1b, Passengers:[{Tags: ["evoker_spot","L2E9"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Evoker"}', CanPickUpLoot: 0b}]}
summon minecraft:minecart -566 11 2021 {Invulnerable:1b, Passengers:[{Tags: ["evoker_spot","L2E10"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Evoker"}', CanPickUpLoot: 0b}]}

