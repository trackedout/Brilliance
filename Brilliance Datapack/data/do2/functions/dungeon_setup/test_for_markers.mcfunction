# Need to check if ONE marker is not existing. Best way I could do this:
scoreboard objectives add do2.tests.all_markers_alive dummy
scoreboard players set $dungeon do2.tests.all_markers_alive 1

# Level 1 markers
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L1Z1] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L1Z2] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L1Z3] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L1Z4] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L1Z5] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
# Level 2 markers
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L2Z1] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L2Z2] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L2Z3] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L2Z4] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L2Z5] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L2WILLY] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
# Level 3 markers
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L3Z1] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L3Z2] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L3Z3] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
# Level 4 markers
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L4Z1] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L4Z2] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L4Z3] run scoreboard players set $dungeon do2.tests.all_markers_alive 0

execute unless score $dungeon do2.tests.all_markers_alive matches 1 run function do2:dungeon_setup/summon_markers
scoreboard objectives remove do2.tests.all_markers_alive

