function do2:mob_controller/swap_to/setup
setblock -519 116 1939 minecraft:redstone_lamp[lit=true]
scoreboard players set $dungeon do2.config.mc.levelEditing 30

# Place Template
place template do2:config.mc.l3 -531 113 1939 none none 1

# Load Storage
clone -522 123 1942 -522 122 1946 -530 114 1942
