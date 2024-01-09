# Need to check if ONE marker is not existing. Best way I could do this:
scoreboard objectives add do2.tests.all_killers_alive dummy
scoreboard players set $dungeon do2.tests.all_killers_alive 1

execute unless entity @e[type=minecraft:drowned,tag=L2WILLY] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:stray,tag=L2DAVY] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L1E1] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L1E2] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L1E3] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L1E4] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L1E5] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L1E6] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L1E7] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L1E8] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L1E9] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L1E10] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L1E11] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L1E12] run scoreboard players set $dungeon do2.tests.all_killers_alive 0

execute unless entity @e[type=minecraft:evoker,tag=L2E1] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L2E2] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L2E3] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L2E4] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L2E5] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L2E6] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L2E7] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L2E8] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L2E9] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L2E10] run scoreboard players set $dungeon do2.tests.all_killers_alive 0

execute unless score $dungeon do2.tests.all_killers_alive matches 1 run function do2:dungeon_setup/summon_other_killers
scoreboard objectives remove do2.tests.all_killers_alive
