# - Start Log -
execute as @a[scores={do2.logs.dungeon_setup=4..}] run tellraw @s ["",{"text":"§f[§9B§r]: Testing for 'other' killers ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§rIncludes:\n - §oOne Eyed Willie§r\n - §oDavey Bones§r\n - §oEndermites§r\n - §oEvokers§r"}]}},{"text":")"}]
# - End Log -




# Need to check if ONE killer is not existing. Best way I could do this:
scoreboard objectives add do2.tests.all_killers_alive dummy
scoreboard players set $dungeon do2.tests.all_killers_alive 0

# Check for One Eyed Willie
execute unless entity @e[type=minecraft:drowned,tag=L2WILLIE] run scoreboard players set $dungeon do2.tests.all_killers_alive 1
# Check for Training Room Drowned
execute unless entity @e[type=minecraft:drowned,tag=L0Z2] run scoreboard players set $dungeon do2.tests.all_killers_alive 2
# Check for Davey Bones
execute unless entity @e[type=minecraft:stray,tag=L2DAVY] run scoreboard players set $dungeon do2.tests.all_killers_alive 3
# Check for Evokers
function do2:entity_controller/generate_entities/evokers/test_for_all_evokers

# New
execute unless entity @e[type=minecraft:evoker,tag=L1E13] run scoreboard players set $dungeon do2.tests.all_killers_alive 26
execute unless entity @e[type=minecraft:evoker,tag=L1E14] run scoreboard players set $dungeon do2.tests.all_killers_alive 27
execute unless entity @e[type=minecraft:evoker,tag=L1E15] run scoreboard players set $dungeon do2.tests.all_killers_alive 28
execute unless entity @e[type=minecraft:evoker,tag=L1E16] run scoreboard players set $dungeon do2.tests.all_killers_alive 29
execute unless entity @e[type=minecraft:evoker,tag=L1E17] run scoreboard players set $dungeon do2.tests.all_killers_alive 30
execute unless entity @e[type=minecraft:evoker,tag=L1E18] run scoreboard players set $dungeon do2.tests.all_killers_alive 31

execute unless entity @e[type=minecraft:evoker,tag=L2E11] run scoreboard players set $dungeon do2.tests.all_killers_alive 32
execute unless entity @e[type=minecraft:evoker,tag=L2E12] run scoreboard players set $dungeon do2.tests.all_killers_alive 33
execute unless entity @e[type=minecraft:evoker,tag=L2E13] run scoreboard players set $dungeon do2.tests.all_killers_alive 34
execute unless entity @e[type=minecraft:evoker,tag=L2E14] run scoreboard players set $dungeon do2.tests.all_killers_alive 35
execute unless entity @e[type=minecraft:evoker,tag=L2E15] run scoreboard players set $dungeon do2.tests.all_killers_alive 36
execute unless entity @e[type=minecraft:evoker,tag=L2E16] run scoreboard players set $dungeon do2.tests.all_killers_alive 37
execute unless entity @e[type=minecraft:evoker,tag=L2E17] run scoreboard players set $dungeon do2.tests.all_killers_alive 38


execute unless score $dungeon do2.tests.all_killers_alive matches 0 as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"§f[§9B§r]: Missing 'Other' Killer §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_killers_alive"}}]
execute unless score $dungeon do2.tests.all_killers_alive matches 0 run function do2:dungeon_setup/legacy/summon/other_killers
scoreboard objectives remove do2.tests.all_killers_alive
