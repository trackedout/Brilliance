# - Start Log -
execute as @a[scores={do2.logs.entity_controller=3..}] run tellraw @s ["",{"text":"[§9B§r]: Swapping [§aEC§r] display to: §6Level 1§r."}]
# - End Log -

# Setup lamps
function do2:entity_controller/config_interface/swap_to/setup
setblock -522 116 1939 minecraft:redstone_lamp[lit=true]
scoreboard players set $dungeon do2.config.ec.levelEditing 10

# Place Template
execute if score $dungeon do2.config.ec.level1Zones matches 0 run place template do2:config.ec.l1_no_zones -531 113 1939 none none 1
execute if score $dungeon do2.config.ec.level1Zones matches 1 run place template do2:config.ec.l1_has_zones -531 113 1939 none none 1

# Load Storage
execute if score $dungeon do2.config.ec.level1Zones matches 0 run clone -528 126 1942 -528 125 1946 -530 114 1942
execute if score $dungeon do2.config.ec.level1Zones matches 1 run clone -528 123 1942 -528 122 1946 -530 114 1942
