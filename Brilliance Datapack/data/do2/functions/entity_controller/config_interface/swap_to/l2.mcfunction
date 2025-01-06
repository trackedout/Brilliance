# - Start Log -
execute as @a[scores={do2.logs.entity_controller=3..}] run tellraw @s ["",{"text":"[§9B§r]: Swapping [§aEC§r] display to: §6Level 2§r."}]
# - End Log -

function do2:entity_controller/config_interface/swap_to/setup
setblock -521 116 1939 minecraft:redstone_lamp[lit=true]
scoreboard players set $dungeon do2.config.ec.levelEditing 20

# Place Template
execute if score $dungeon do2.config.ec.level2Zones matches 0 run place template do2:config.ec.l2_no_zones -531 113 1939 none none 1
execute if score $dungeon do2.config.ec.level2Zones matches 1 run place template do2:config.ec.l2_has_zones -531 113 1939 none none 1

# Load Storage
execute if score $dungeon do2.config.ec.level2Zones matches 0 run clone -526 126 1942 -526 125 1946 -530 114 1942
execute if score $dungeon do2.config.ec.level2Zones matches 1 run clone -526 123 1942 -526 122 1946 -530 114 1942
