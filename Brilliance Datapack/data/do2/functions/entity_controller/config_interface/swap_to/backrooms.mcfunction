# - Start Log -
execute as @a[scores={do2.logs.entity_controller=3..}] run tellraw @s ["",{"text":"[§9B§r]: Swapping [§aEC§r] display to: §6Backrooms§r."}]
# - End Log -

# Setup lamps
fill -521 115 1940 -517 115 1940 minecraft:bamboo_button[powered=false,facing=south]
fill -521 116 1939 -517 116 1939 minecraft:redstone_lamp[lit=false]
setblock -517 116 1939 minecraft:redstone_lamp[lit=true]
scoreboard players set $dungeon do2.config.ec.levelEditing 0

fill -525 115 1944 -525 116 1944 air replace
fill -529 118 1946 -529 116 1942 air replace
fill -530 115 1946 -530 114 1942 air replace
place template do2:config.ec.backrooms -531 113 1939 none none 1

# Load Storage
clone -518 123 1942 -518 122 1946 -530 114 1942
