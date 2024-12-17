function do2:mob_controller/swap_to/setup
setblock -518 116 1939 minecraft:redstone_lamp[lit=true]
scoreboard players set $dungeon do2.config.mc.levelEditing 40

# Place Template
execute if score $dungeon do2.config.mc.level4Zones matches 0 run place template do2:config.mc.l4_no_zones -531 113 1939 none none 1
execute if score $dungeon do2.config.mc.level4Zones matches 1 run place template do2:config.mc.l4_has_zones -531 113 1939 none none 1

# Load Storage
execute if score $dungeon do2.config.mc.level4Zones matches 0 run clone -520 126 1942 -520 125 1946 -530 114 1942
execute if score $dungeon do2.config.mc.level4Zones matches 1 run clone -520 123 1942 -520 122 1946 -530 114 1942
