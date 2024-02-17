# - Start Log -
execute as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Testing for Wardens."}]
# - End Log -

# Warden named 'Pain' should be tagged with L3Z1
# Warden named 'Panic' should be tagged with L3Z2
# Warden named 'Pancakes' should be tagged with L3Z3

# Warden named 'Blinky' should be tagged with L3Z1
# Warden named 'Inky' should be tagged with L3Z2
# Warden named 'Pinky' should be tagged with L3Z3


# Need to check if ONE warden is not existing. Best way I could do this:
scoreboard objectives add do2.tests.all_wardens_alive dummy
scoreboard players set $dungeon do2.tests.all_wardens_alive 0

# Level 3 Wardens
execute unless entity @e[type=minecraft:warden,tag=L3Z1] run scoreboard players set $dungeon do2.tests.all_wardens_alive 1
execute unless entity @e[type=minecraft:warden,tag=L3Z2] run scoreboard players set $dungeon do2.tests.all_wardens_alive 2
execute unless entity @e[type=minecraft:warden,tag=L3Z3] run scoreboard players set $dungeon do2.tests.all_wardens_alive 3
# Level 4 wardens
execute unless entity @e[type=minecraft:warden,tag=L4Z1] run scoreboard players set $dungeon do2.tests.all_wardens_alive 4
execute unless entity @e[type=minecraft:warden,tag=L4Z2] run scoreboard players set $dungeon do2.tests.all_wardens_alive 5
execute unless entity @e[type=minecraft:warden,tag=L4Z3] run scoreboard players set $dungeon do2.tests.all_wardens_alive 6

execute unless score $dungeon do2.tests.all_wardens_alive matches 0 as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Missing Warden §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_wardens_alive"}}]
execute unless score $dungeon do2.tests.all_wardens_alive matches 0 run function do2:dungeon_setup/summon/wardens
scoreboard objectives remove do2.tests.all_wardens_alive

