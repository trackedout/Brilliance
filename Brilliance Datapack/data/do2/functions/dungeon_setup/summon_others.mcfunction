# - Start Log -
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: Testing for OTHER mobs ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§rIncludes:\n - §oSheep that never touched ground§r\n - §oDifficulty Lamp Blocker§r\n - §oAxolotls§r"}]}},{"text":")"}]
# - End Log -

# Axolotls
execute unless entity @e[type=minecraft:axolotl,tag=AXO_1] run summon minecraft:axolotl -507 11 1993 {Tags: ["AXO_1"], CustomName: '{"text":"Lawrence Fletcher"}', Fire: -1s, Invulnerable: 1b, PersistenceRequired: 1b, FromBucket: 1b, Health: 14.0f, Variant: 2}
execute unless entity @e[type=minecraft:axolotl,tag=AXO_2] run summon minecraft:axolotl -512 11 1992 {Tags: ["AXO_2"], CustomName: '{"text":"Linda Flynn-Fletcher"}', Fire: -1s, Invulnerable: 1b, PersistenceRequired: 1b, FromBucket: 1b, Health: 14.0f, Variant: 0}
execute unless entity @e[type=minecraft:axolotl,tag=AXO_3] run summon minecraft:axolotl -509 11 1992 {Tags: ["AXO_3"], CustomName: '{"text":"Perry"}', Fire: -1s, Invulnerable: 1b, PersistenceRequired: 1b, FromBucket: 1b, Health: 14.0f, Variant: 1}
execute unless entity @e[type=minecraft:axolotl,tag=AXO_4] run summon minecraft:axolotl -510 12 1990 {Tags: ["AXO_4"], CustomName: '{"text":"Candace"}', Fire: -1s, Invulnerable: 1b, PersistenceRequired: 1b, FromBucket: 1b, Health: 14.0f, Variant: 0}

# Sheep that never touched ground
execute unless entity @e[type=minecraft:sheep,tag=NO_TOUCH] run summon minecraft:sheep -600 137 1938 {Tags: ["NO_TOUCH"], Invulnerable: 1b, FallDistance: 1.0f, PersistenceRequired: 1b,  Age: 0, Leash: {X: -600, Y: 145, Z: 1938}, Health: 8.0f, Color: 6b,Air: 300s, OnGround: 0b, Fire: -1s}

# Prevent blocks placed on difficulty lamps.
kill @e[type=minecraft:interaction,tag=lamp_blocker]
summon minecraft:interaction -559 113.95 1987.50 {width: 5.1, height: 1.1, Tags:["lamp_blocker"]}

# TangoCam (just in case)
scoreboard objectives add do2.temp.doesTangoCamExist dummy
execute if entity @a[name=tangocam] run scoreboard players set $dungeon do2.temp.doesTangoCamExist 1
execute if entity @a[name=TangoCam] run scoreboard players set $dungeon do2.temp.doesTangoCamExist 1
execute unless score $dungeon do2.temp.doesTangoCamExist matches 1 run function do2:dungeon_setup/summon_tangocam
scoreboard objectives remove do2.temp.doesTangoCamExist
