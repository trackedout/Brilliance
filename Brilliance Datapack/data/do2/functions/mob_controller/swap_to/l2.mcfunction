function do2:mob_controller/swap_to/setup
setblock -521 116 1939 minecraft:redstone_lamp[lit=true]
scoreboard players set $dungeon do2.config.mc.levelEditing 20

# Place Template
execute if score $dungeon do2.config.mc.level2Zones matches 0 run place template do2:config.mc.l2_no_zones -531 113 1939 none none 1
execute if score $dungeon do2.config.mc.level2Zones matches 1 run place template do2:config.mc.l2_has_zones -531 113 1939 none none 1

# Load Storage
execute if score $dungeon do2.config.mc.level2Zones matches 0 run clone -526 126 1942 -526 125 1946 -530 114 1942
execute if score $dungeon do2.config.mc.level2Zones matches 1 run clone -526 123 1942 -526 122 1946 -530 114 1942
