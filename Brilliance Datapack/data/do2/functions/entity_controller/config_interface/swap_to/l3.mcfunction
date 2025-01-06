# - Start Log -
execute as @a[scores={do2.logs.entity_controller=3..}] run tellraw @s ["",{"text":"[§9B§r]: Swapping [§aEC§r] display to: §6Level 3§r."}]
# - End Log -

function do2:entity_controller/config_interface/swap_to/setup
setblock -519 116 1939 minecraft:redstone_lamp[lit=true]
scoreboard players set $dungeon do2.config.ec.levelEditing 30

# Place Template
place template do2:config.ec.l3 -531 113 1939 none none 1

# Load Storage
clone -522 123 1942 -522 122 1946 -530 114 1942
