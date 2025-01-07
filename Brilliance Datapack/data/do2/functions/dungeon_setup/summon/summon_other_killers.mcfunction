# - Start Log -
execute as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"§f[§9B§r]: Summoning 'other' killers ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§rIncludes:\n - §oOne Eyed Willie§r\n - §oDavey Bones§r\n - §oEndermites§r\n - §oEvokers§r"}]}},{"text":")"}]
# - End Log -

# One Eyed Willie
execute at @e[type=marker,tag=L2WILLIE,limit=1,sort=random] run summon minecraft:drowned ~ ~ ~ {PersistenceRequired:1b, Invulnerable: 1b, Tags: ["L2WILLIE"], HandDropChances: [0.0f, 0.0f], Health: 20.0f, HandItems: [{id: "minecraft:trident", Count: 1b}, {}], CustomName: '{"text":"One Eyed Willie"}'}
# Training Room Drowned
summon minecraft:drowned -516 132 2028 {PersistenceRequired:1b, Invulnerable: 1b, Tags: ["L0Z2"], HandDropChances: [0.0f, 0.0f], Health: 20.0f, HandItems: [{id: "minecraft:trident", Count: 1b}, {}], CustomName: '{"text":"The Worst!!!"}'}

# Davey Bones
summon minecraft:minecart -576 13 1984 {Invulnerable:1b, Passengers:[{PersistenceRequired:1b, Invulnerable:1b, Tags: ["L2DAVY"], id: "minecraft:stray", Health: 20.0f, Silent: 1b, CustomName: '{"text":"Davey Bones"}',HandItems:[{id: "minecraft:bow", Count: 1b, tag:{Damage: 0, Enchantments:[{lvl: 1s, id: "minecraft:unbreaking"},{lvl: 1s, id: "minecraft:power"}]}},{}]}]}

# - Evokers -
# Level 1
summon minecraft:minecart -550 52 1977 {Invulnerable:1b, Passengers:[{PersistenceRequired:1b, Tags: ["evoker_spot","L1E1"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}]}
summon minecraft:evoker -545 45 1958 {PersistenceRequired:1b, Tags: ["evoker_spot","L1E2"], Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}
summon minecraft:evoker -608 44 1979 {PersistenceRequired:1b, Tags: ["evoker_spot","L1E3"], Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}
summon minecraft:evoker -579 46 1984 {PersistenceRequired:1b, Tags: ["evoker_spot","L1E4"], Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}
summon minecraft:evoker -597 43 2015 {PersistenceRequired:1b, Tags: ["evoker_spot","L1E5"], Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}
summon minecraft:evoker -619 43 2005 {PersistenceRequired:1b, Tags: ["evoker_spot","L1E6"], Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}
summon minecraft:evoker -613 43 2027 {PersistenceRequired:1b, Tags: ["evoker_spot","L1E7"], Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}
summon minecraft:evoker -562 47 2027 {PersistenceRequired:1b, Tags: ["evoker_spot","L1E8"], Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}
summon minecraft:evoker -511 46 2025 {PersistenceRequired:1b, Tags: ["evoker_spot","L1E9"], Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}
summon minecraft:minecart -503 52 1984 {Invulnerable:1b, Passengers:[{PersistenceRequired:1b, Tags: ["evoker_spot","L1E10"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}]}
summon minecraft:minecart -509 52 1997 {Invulnerable:1b, Passengers:[{PersistenceRequired:1b, Tags: ["evoker_spot","L1E11"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}]}
summon minecraft:minecart -528 52 1996 {Invulnerable:1b, Passengers:[{PersistenceRequired:1b, Tags: ["evoker_spot","L1E12"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}]}
# Level 2
summon minecraft:evoker -578 13 1974 {PersistenceRequired:1b, Tags: ["evoker_spot","L2E1"], Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}
summon minecraft:minecart -537 17 1957 {Invulnerable:1b, Passengers:[{PersistenceRequired:1b, Tags: ["evoker_spot","L2E2"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}]}
summon minecraft:minecart -565 10 1949 {Invulnerable:1b, Passengers:[{PersistenceRequired:1b, Tags: ["evoker_spot","L2E3"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}]}
summon minecraft:minecart -496 17 1991 {Invulnerable:1b, Passengers:[{PersistenceRequired:1b, Tags: ["evoker_spot","L2E4"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}]}
summon minecraft:minecart -492 19 2024 {Invulnerable:1b, Passengers:[{PersistenceRequired:1b, Tags: ["evoker_spot","L2E5"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}]}
summon minecraft:minecart -511 13 2015 {Invulnerable:1b, Passengers:[{PersistenceRequired:1b, Tags: ["evoker_spot","L2E6"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}]}
summon minecraft:minecart -459 23 2017 {Invulnerable:1b, Passengers:[{PersistenceRequired:1b, Tags: ["evoker_spot","L2E7"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}]}
summon minecraft:minecart -459 20 1978 {Invulnerable:1b, Passengers:[{PersistenceRequired:1b, Tags: ["evoker_spot","L2E8"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}]}
summon minecraft:minecart -464 20 1961 {Invulnerable:1b, Passengers:[{PersistenceRequired:1b, Tags: ["evoker_spot","L2E9"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}]}
summon minecraft:minecart -566 11 2021 {Invulnerable:1b, Passengers:[{PersistenceRequired:1b, Tags: ["evoker_spot","L2E10"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}]}

# New
# Level 1
summon minecraft:minecart -527 52 2008 {Invulnerable:1b, Passengers:[{PersistenceRequired:1b, Tags: ["evoker_spot","L1E13"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}]}
summon minecraft:minecart -520 52 1973 {Invulnerable:1b, Passengers:[{PersistenceRequired:1b, Tags: ["evoker_spot","L1E14"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}]}
summon minecraft:evoker -536 56 1967 {PersistenceRequired:1b, Tags: ["evoker_spot","L1E15"], Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}
summon minecraft:evoker -543 53 1979 {PersistenceRequired:1b, Tags: ["evoker_spot","L1E16"], Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}
summon minecraft:evoker -587 46 2006 {PersistenceRequired:1b, Tags: ["evoker_spot","L1E17"], Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}
summon minecraft:evoker -599 44 2037 {PersistenceRequired:1b, Tags: ["evoker_spot","L1E18"], Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}

# Level 2
summon minecraft:minecart -597 13 1955 {Invulnerable:1b, Passengers:[{PersistenceRequired:1b, Tags: ["evoker_spot","L2E11"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}]}
summon minecraft:evoker -589 14 1985 {PersistenceRequired:1b, Tags: ["evoker_spot","L2E12"], Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}
summon minecraft:minecart -528 13 1970 {Invulnerable:1b, Passengers:[{PersistenceRequired:1b, Tags: ["evoker_spot","L2E13"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}]}
summon minecraft:evoker -502 26 1967 {PersistenceRequired:1b, Tags: ["evoker_spot","L2E14"], Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}
summon minecraft:evoker -510 25 1958 {PersistenceRequired:1b, Tags: ["evoker_spot","L2E15"], Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}
summon minecraft:evoker -463 26 2008 {PersistenceRequired:1b, Tags: ["evoker_spot","L2E16"], Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}
summon minecraft:minecart -451 19 1957 {Invulnerable:1b, Passengers:[{PersistenceRequired:1b, Tags: ["evoker_spot","L2E17"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}]}