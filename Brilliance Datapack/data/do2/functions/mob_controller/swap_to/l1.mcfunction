# Setup lamps
function do2:mob_controller/swap_to/setup
setblock -522 116 1939 minecraft:redstone_lamp[lit=true]
scoreboard players set $dungeon do2.config.mc.levelEditing 10

# Place Template
execute if score $dungeon do2.config.mc.level1Zones matches 0 run place template do2:config.mc.l1_no_zones -531 113 1939 none none 1
execute if score $dungeon do2.config.mc.level1Zones matches 1 run place template do2:config.mc.l1_has_zones -531 113 1939 none none 1

# Load Storage
execute if score $dungeon do2.config.mc.level1Zones matches 0 run clone -528 126 1942 -528 125 1946 -530 114 1942
execute if score $dungeon do2.config.mc.level1Zones matches 1 run clone -528 123 1942 -528 122 1946 -530 114 1942
