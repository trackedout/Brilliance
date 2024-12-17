function do2:mob_controller/swap_to/setup
setblock -520 116 1939 minecraft:redstone_lamp[lit=true]
scoreboard players set $dungeon do2.config.mc.levelEditing 21

# Place Template
place template do2:config.mc.l2_other -531 113 1939 none none 1

# Load Storage
clone -524 123 1942 -524 122 1946 -530 114 1942
