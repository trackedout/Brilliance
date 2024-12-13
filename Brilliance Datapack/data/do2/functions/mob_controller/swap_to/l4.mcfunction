# Setup lamps
fill -521 115 1940 -517 115 1940 minecraft:bamboo_button[powered=false,facing=south]
fill -521 116 1939 -517 116 1939 minecraft:redstone_lamp[lit=false]
setblock -518 116 1939 minecraft:redstone_lamp[lit=true]
scoreboard players set $dungeon do2.config.mc.levelEditing 4

fill -528 118 1946 -528 116 1942 air replace
fill -529 115 1946 -529 114 1942 air replace
execute if score $dungeon do2.config.mc.level4Zones matches 0 run place template do2:config.mc.l4_no_zones -530 113 1939 none none 1
execute if score $dungeon do2.config.mc.level4Zones matches 1 run place template do2:config.mc.l4_has_zones -530 113 1939 none none 1

# Load Storage
execute if score $dungeon do2.config.mc.level4Zones matches 0 run clone -521 126 1942 -521 125 1946 -529 114 1942
execute if score $dungeon do2.config.mc.level4Zones matches 1 run clone -521 123 1942 -521 122 1946 -529 114 1942
