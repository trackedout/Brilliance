# - Start Log -
execute as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Testing for OTHER mobs ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§rIncludes:\n - §oSheep that never touched ground§r\n - §oDifficulty Lamp Blocker§r\n - §oAxolotls§r\n - §oHidden Witch§r"}]}},{"text":")"}]
# - End Log -

# Axolotls
execute unless entity @e[type=minecraft:axolotl,tag=AXO_1] run summon minecraft:axolotl -507 11 1993 {Tags: ["AXO_1","do2.manually_spawned"], CustomName: '{"text":"Lawrence Fletcher"}', Fire: -1s, Invulnerable: 1b, PersistenceRequired: 1b, FromBucket: 1b, Health: 14.0f, Variant: 2}
execute unless entity @e[type=minecraft:axolotl,tag=AXO_2] run summon minecraft:axolotl -512 11 1992 {Tags: ["AXO_2","do2.manually_spawned"], CustomName: '{"text":"Linda Flynn-Fletcher"}', Fire: -1s, Invulnerable: 1b, PersistenceRequired: 1b, FromBucket: 1b, Health: 14.0f, Variant: 0}
execute unless entity @e[type=minecraft:axolotl,tag=AXO_3] run summon minecraft:axolotl -509 11 1992 {Tags: ["AXO_3","do2.manually_spawned"], CustomName: '{"text":"Perry"}', Fire: -1s, Invulnerable: 1b, PersistenceRequired: 1b, FromBucket: 1b, Health: 14.0f, Variant: 1}
execute unless entity @e[type=minecraft:axolotl,tag=AXO_4] run summon minecraft:axolotl -510 12 1990 {Tags: ["AXO_4","do2.manually_spawned"], CustomName: '{"text":"Candace"}', Fire: -1s, Invulnerable: 1b, PersistenceRequired: 1b, FromBucket: 1b, Health: 14.0f, Variant: 0}

# Sheep that never touched ground
execute unless entity @e[type=minecraft:sheep,tag=NO_TOUCH] run summon minecraft:sheep -600 137 1938 {Tags: ["NO_TOUCH"], Invulnerable: 1b, FallDistance: 1.0f, PersistenceRequired: 1b,  Age: 0, Leash: {X: -600, Y: 145, Z: 1938}, Health: 8.0f, Color: 6b, Air: 300s, OnGround: 0b, Fire: -1s}

# Witch named One-Eyed-Willy
execute unless entity @e[type=minecraft:witch,tag=OneEyed] run summon minecraft:witch -571 14 1962 {Tags: ["OneEyed","do2.manually_spawned"], CustomName: '{"text":"One-Eyed-Willy"}', Invulnerable: 1b, FallDistance: 1.0f, PersistenceRequired: 1b,  Age: 0, Health: 26.0f, Fire: -1s}

# Prevent blocks placed on difficulty lamps.
summon minecraft:interaction -559 113.95 1987.50 {width: 5.1, height: 1.1, Tags:["lamp_blocker"]}

# Prevent animation armor stands from being edited.
summon minecraft:interaction -545 113 1980 {width: 1, height: 2, Tags:["as_blocker"]}
summon minecraft:interaction -544 113 1980 {width: 1, height: 2, Tags:["as_blocker"]}


# TangoCam (just in case)
execute unless entity @e[type=minecraft:player,name=tangocam] unless entity @e[type=minecraft:player,name=TangoCam] run function do2:dungeon_setup/summon/summon_tangocam
