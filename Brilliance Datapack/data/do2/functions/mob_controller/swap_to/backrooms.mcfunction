# Setup lamps
fill -521 115 1940 -517 115 1940 minecraft:bamboo_button[powered=false,facing=south]
fill -521 116 1939 -517 116 1939 minecraft:redstone_lamp[lit=false]
setblock -517 116 1939 minecraft:redstone_lamp[lit=true]
scoreboard players set $dungeon do2.config.mc.levelEditing 0

fill -525 115 1944 -525 116 1944 air replace
fill -528 118 1946 -528 116 1942 air replace
fill -529 115 1946 -529 114 1942 air replace
place template do2:config.mc.backrooms_no_zones -530 113 1939 none none 1

# Load Storage
clone -519 123 1942 -519 122 1946 -529 114 1942