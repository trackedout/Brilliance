# Test for dripstone IF player is on L2
execute if entity @a[scores={do2.utility.dungeonLocation=10}] run function do2:dungeon_setup/test_for_cove_dripstone


# Silence wardens when player is out of range
scoreboard objectives add do2.tests.silenceL3Wardens dummy
scoreboard objectives add do2.tests.silenceL4Wardens dummy
scoreboard players set $dungeon do2.tests.silenceL3Wardens 1
scoreboard players set $dungeon do2.tests.silenceL4Wardens 1

# Unmute ALL wardens unless a player wants us to silence them.
execute as @a[team=do2.players] if entity @s[scores={do2.config.silenceWardens=0}] run scoreboard players set $dungeon do2.tests.silenceL3Wardens 0
execute as @a[team=do2.players] if entity @s[scores={do2.config.silenceWardens=0}] run scoreboard players set $dungeon do2.tests.silenceL4Wardens 0


# Unmute ALL wardens, when players are at special locations.
execute as @a[team=do2.players] if entity @s[scores={do2.utility.dungeonLocation=0}] run scoreboard players set $dungeon do2.tests.silenceL3Wardens 0
execute as @a[team=do2.players] if entity @s[scores={do2.utility.dungeonLocation=0}] run scoreboard players set $dungeon do2.tests.silenceL4Wardens 0
execute as @a[team=do2.players] if entity @s[scores={do2.utility.dungeonLocation=1}] run scoreboard players set $dungeon do2.tests.silenceL3Wardens 0
execute as @a[team=do2.players] if entity @s[scores={do2.utility.dungeonLocation=1}] run scoreboard players set $dungeon do2.tests.silenceL4Wardens 0
execute as @a[team=do2.players] if entity @s[scores={do2.utility.dungeonLocation=2}] run scoreboard players set $dungeon do2.tests.silenceL3Wardens 0
execute as @a[team=do2.players] if entity @s[scores={do2.utility.dungeonLocation=2}] run scoreboard players set $dungeon do2.tests.silenceL4Wardens 0
execute as @a[team=do2.players] if entity @s[scores={do2.utility.dungeonLocation=3}] run scoreboard players set $dungeon do2.tests.silenceL3Wardens 0
execute as @a[team=do2.players] if entity @s[scores={do2.utility.dungeonLocation=3}] run scoreboard players set $dungeon do2.tests.silenceL4Wardens 0
execute as @a[team=do2.players] if entity @s[scores={do2.utility.dungeonLocation=4}] run scoreboard players set $dungeon do2.tests.silenceL3Wardens 0
execute as @a[team=do2.players] if entity @s[scores={do2.utility.dungeonLocation=4}] run scoreboard players set $dungeon do2.tests.silenceL4Wardens 0
execute as @a[team=do2.players] if entity @s[scores={do2.utility.dungeonLocation=5}] run scoreboard players set $dungeon do2.tests.silenceL3Wardens 0
execute as @a[team=do2.players] if entity @s[scores={do2.utility.dungeonLocation=5}] run scoreboard players set $dungeon do2.tests.silenceL4Wardens 0
# Unmute L4 wardens when player is on L4
execute as @a[team=do2.players] if entity @s[scores={do2.utility.dungeonLocation=12}] run scoreboard players set $dungeon do2.tests.silenceL4Wardens 0
# Unmute L3 wardens when player is at Stairs (L2 & L3)
# Unmute L3 wardens when player is at Passage (L4 -> L3)
# Unmute L3 wardens when player is on L3
execute as @a[team=do2.players] if entity @s[scores={do2.utility.dungeonLocation=7}] run scoreboard players set $dungeon do2.tests.silenceL3Wardens 0
execute as @a[team=do2.players] if entity @s[scores={do2.utility.dungeonLocation=8}] run scoreboard players set $dungeon do2.tests.silenceL3Wardens 0
execute as @a[team=do2.players] if entity @s[scores={do2.utility.dungeonLocation=11}] run scoreboard players set $dungeon do2.tests.silenceL3Wardens 0

# Mute all L3 wardens who are unmuted & should be muted.
execute if score $dungeon do2.tests.silenceL3Wardens matches 1 as @e[type=warden,tag=L3Z1,tag=!do2.muted] run data modify entity @s Silent set value 1b
execute if score $dungeon do2.tests.silenceL3Wardens matches 1 as @e[type=warden,tag=L3Z2,tag=!do2.muted] run data modify entity @s Silent set value 1b
execute if score $dungeon do2.tests.silenceL3Wardens matches 1 as @e[type=warden,tag=L3Z3,tag=!do2.muted] run data modify entity @s Silent set value 1b
# Note that the L3 wardens are muted.
execute if score $dungeon do2.tests.silenceL3Wardens matches 1 as @e[type=warden,tag=L3Z1,tag=!do2.muted] run tag @s add do2.muted
execute if score $dungeon do2.tests.silenceL3Wardens matches 1 as @e[type=warden,tag=L3Z2,tag=!do2.muted] run tag @s add do2.muted
execute if score $dungeon do2.tests.silenceL3Wardens matches 1 as @e[type=warden,tag=L3Z3,tag=!do2.muted] run tag @s add do2.muted
# Unmute all L3 wardens who are muted and should be unmuted.
execute if score $dungeon do2.tests.silenceL3Wardens matches 0 as @e[type=warden,tag=L3Z1,tag=do2.muted] run data modify entity @s Silent set value 0b
execute if score $dungeon do2.tests.silenceL3Wardens matches 0 as @e[type=warden,tag=L3Z2,tag=do2.muted] run data modify entity @s Silent set value 0b
execute if score $dungeon do2.tests.silenceL3Wardens matches 0 as @e[type=warden,tag=L3Z3,tag=do2.muted] run data modify entity @s Silent set value 0b
# Note that the L3 wardens are unmuted.
execute if score $dungeon do2.tests.silenceL3Wardens matches 0 as @e[type=warden,tag=L3Z1,tag=do2.muted] run tag @s remove do2.muted
execute if score $dungeon do2.tests.silenceL3Wardens matches 0 as @e[type=warden,tag=L3Z2,tag=do2.muted] run tag @s remove do2.muted
execute if score $dungeon do2.tests.silenceL3Wardens matches 0 as @e[type=warden,tag=L3Z3,tag=do2.muted] run tag @s remove do2.muted

# Mute all L4 wardens who are unmuted & should be muted.
execute if score $dungeon do2.tests.silenceL4Wardens matches 1 as @e[type=warden,tag=L4Z1,tag=!do2.muted] run data modify entity @s Silent set value 1b
execute if score $dungeon do2.tests.silenceL4Wardens matches 1 as @e[type=warden,tag=L4Z2,tag=!do2.muted] run data modify entity @s Silent set value 1b
execute if score $dungeon do2.tests.silenceL4Wardens matches 1 as @e[type=warden,tag=L4Z3,tag=!do2.muted] run data modify entity @s Silent set value 1b
# Note that the L4 wardens are muted.
execute if score $dungeon do2.tests.silenceL4Wardens matches 1 as @e[type=warden,tag=L4Z1,tag=!do2.muted] run tag @s add do2.muted
execute if score $dungeon do2.tests.silenceL4Wardens matches 1 as @e[type=warden,tag=L4Z2,tag=!do2.muted] run tag @s add do2.muted
execute if score $dungeon do2.tests.silenceL4Wardens matches 1 as @e[type=warden,tag=L4Z3,tag=!do2.muted] run tag @s add do2.muted
# Unmute all L4 wardens who are muted and should be unmuted.
execute if score $dungeon do2.tests.silenceL4Wardens matches 0 as @e[type=warden,tag=L4Z1,tag=do2.muted] run data modify entity @s Silent set value 0b
execute if score $dungeon do2.tests.silenceL4Wardens matches 0 as @e[type=warden,tag=L4Z2,tag=do2.muted] run data modify entity @s Silent set value 0b
execute if score $dungeon do2.tests.silenceL4Wardens matches 0 as @e[type=warden,tag=L4Z3,tag=do2.muted] run data modify entity @s Silent set value 0b
# Note that the L4 wardens are unmuted.
execute if score $dungeon do2.tests.silenceL4Wardens matches 0 as @e[type=warden,tag=L4Z1,tag=do2.muted] run tag @s remove do2.muted
execute if score $dungeon do2.tests.silenceL4Wardens matches 0 as @e[type=warden,tag=L4Z2,tag=do2.muted] run tag @s remove do2.muted
execute if score $dungeon do2.tests.silenceL4Wardens matches 0 as @e[type=warden,tag=L4Z3,tag=do2.muted] run tag @s remove do2.muted


