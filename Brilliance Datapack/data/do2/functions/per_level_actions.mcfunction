# Test for dripstone IF player is on L2
execute if entity @a[scores={do2.utility.dungeonLocation=10}] run function do2:dungeon_setup/test_for_cove_dripstone


# Silence wardens when player is out of range
scoreboard objectives add do2.tests.shouldKeepWardensQuiet dummy
scoreboard players set $dungeon do2.tests.shouldKeepWardensQuiet 1
execute as @e[type=warden,tag=L3Z1] run tag @s add do2.checkSilenceL3
execute as @e[type=warden,tag=L3Z2] run tag @s add do2.checkSilenceL3
execute as @e[type=warden,tag=L3Z3] run tag @s add do2.checkSilenceL3
execute as @e[type=warden,tag=L4Z1] run tag @s add do2.checkSilenceL4
execute as @e[type=warden,tag=L4Z2] run tag @s add do2.checkSilenceL4
execute as @e[type=warden,tag=L4Z3] run tag @s add do2.checkSilenceL4


# Only allow silencing wardens when a player wants them to.
execute as @a[team=do2.players] if entity @s[scores={do2.config.silenceWardens=0..}] as @e[type=warden,tag=do2.checkSilenceL3] run data modify entity @s Silent set value 0b
execute as @a[team=do2.players] if entity @s[scores={do2.config.silenceWardens=0..}] as @e[type=warden,tag=do2.checkSilenceL4] run data modify entity @s Silent set value 0b
execute as @a[team=do2.players] unless entity @s[scores={do2.config.silenceWardens=1..}] run return 0

# Start them silenced, and remove silence them when ANY player are on certain areas
execute as @e[type=warden,tag=do2.checkSilenceL3] run data modify entity @s Silent set value 1b
execute as @e[type=warden,tag=do2.checkSilenceL4] run data modify entity @s Silent set value 1b

# Unmute ALL wardens, when players are at special locations.
execute as @a[team=do2.players] if entity @s[scores={do2.utility.dungeonLocation=0}] run scoreboard players set $dungeon do2.tests.shouldKeepWardensQuiet 0
execute as @a[team=do2.players] if entity @s[scores={do2.utility.dungeonLocation=1}] run scoreboard players set $dungeon do2.tests.shouldKeepWardensQuiet 0
execute as @a[team=do2.players] if entity @s[scores={do2.utility.dungeonLocation=2}] run scoreboard players set $dungeon do2.tests.shouldKeepWardensQuiet 0
execute as @a[team=do2.players] if entity @s[scores={do2.utility.dungeonLocation=3}] run scoreboard players set $dungeon do2.tests.shouldKeepWardensQuiet 0
execute as @a[team=do2.players] if entity @s[scores={do2.utility.dungeonLocation=4}] run scoreboard players set $dungeon do2.tests.shouldKeepWardensQuiet 0
execute as @a[team=do2.players] if entity @s[scores={do2.utility.dungeonLocation=5}] run scoreboard players set $dungeon do2.tests.shouldKeepWardensQuiet 0
execute if score $dungeon do2.tests.shouldKeepWardensQuiet matches 0 as @e[type=warden,tag=do2.checkSilenceL3] run data modify entity @s Silent set value 0b
execute if score $dungeon do2.tests.shouldKeepWardensQuiet matches 0 as @e[type=warden,tag=do2.checkSilenceL4] run data modify entity @s Silent set value 0b

# Unmute L4 wardens when player is on L4
execute as @a[team=do2.players] if entity @s[scores={do2.utility.dungeonLocation=12}] as @e[type=warden,tag=do2.checkSilenceL4] run data modify entity @s Silent set value 0b

# Unmute L3 wardens when player is at Stairs (L2 & L3)
# Unmute L3 wardens when player is at Passage (L4 -> L3)
# Unmute L3 wardens when player is on L3
execute as @a[team=do2.players] if entity @s[scores={do2.utility.dungeonLocation=7}] as @e[type=warden,tag=do2.checkSilenceL3] run data modify entity @s Silent set value 0b
execute as @a[team=do2.players] if entity @s[scores={do2.utility.dungeonLocation=8}] as @e[type=warden,tag=do2.checkSilenceL3] run data modify entity @s Silent set value 0b
execute as @a[team=do2.players] if entity @s[scores={do2.utility.dungeonLocation=11}] as @e[type=warden,tag=do2.checkSilenceL3] run data modify entity @s Silent set value 0b

