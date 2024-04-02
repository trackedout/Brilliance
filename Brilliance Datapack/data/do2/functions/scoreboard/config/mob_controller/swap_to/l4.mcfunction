# Setup lamps
fill -521 115 1940 -517 115 1940 minecraft:bamboo_button[powered=false,facing=south]
fill -521 116 1939 -517 116 1939 minecraft:redstone_lamp[lit=false]
setblock -518 116 1939 minecraft:redstone_lamp[lit=true]
scoreboard players set $dungeon do2.config.mc.levelEditing 4

execute if score $dungeon do2.config.mc.level4Zones matches 0 run setblock -530 120 1939 minecraft:structure_block[mode=load]{z:1939,x:-530,y:120,name:"minecraft:config.mc.l4_no_zones",sizeX:8,sizeY:8,sizeZ:11,posZ:0,posX:0,posY:-7,powered:0b,mode:"LOAD"}
execute if score $dungeon do2.config.mc.level4Zones matches 1 run setblock -530 120 1939 minecraft:structure_block[mode=load]{z:1939,x:-530,y:120,name:"minecraft:config.mc.l4_has_zones",sizeX:8,sizeY:8,sizeZ:11,posZ:0,posX:0,posY:-7,powered:0b,mode:"LOAD"}
setblock -529 120 1939 minecraft:redstone_block


