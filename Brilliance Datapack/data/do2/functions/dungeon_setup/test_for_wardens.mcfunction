# - Start Log -
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: Testing for Wardens."}]
# - End Log -

# Warden named 'Pain' should be tagged with L3Z1
# Warden named 'Panic' should be tagged with L3Z2
# Warden named 'Pancakes' should be tagged with L3Z3

# Warden named 'Blinky' should be tagged with L3Z1
# Warden named 'Inky' should be tagged with L3Z2
# Warden named 'Pinky' should be tagged with L3Z3


# Need to check if ONE warden is not existing. Best way I could do this:
scoreboard objectives add do2.tests.all_wardens_alive dummy
scoreboard players set $dungeon do2.tests.all_wardens_alive 1

# Level 3 Wardens
execute unless entity @e[type=minecraft:warden,tag=L3Z1] run scoreboard players set $dungeon do2.tests.all_wardens_alive 0
execute unless entity @e[type=minecraft:warden,tag=L3Z2] run scoreboard players set $dungeon do2.tests.all_wardens_alive 0
execute unless entity @e[type=minecraft:warden,tag=L3Z3] run scoreboard players set $dungeon do2.tests.all_wardens_alive 0
# Level 4 wardens
execute unless entity @e[type=minecraft:warden,tag=L4Z1] run scoreboard players set $dungeon do2.tests.all_wardens_alive 0
execute unless entity @e[type=minecraft:warden,tag=L4Z2] run scoreboard players set $dungeon do2.tests.all_wardens_alive 0
execute unless entity @e[type=minecraft:warden,tag=L4Z3] run scoreboard players set $dungeon do2.tests.all_wardens_alive 0

execute unless score $dungeon do2.tests.all_wardens_alive matches 1 run function do2:dungeon_setup/summon_wardens
scoreboard objectives remove do2.tests.all_wardens_alive

