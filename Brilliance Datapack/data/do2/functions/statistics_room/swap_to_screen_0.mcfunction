fill -498 126 1985 -494 126 1985 minecraft:redstone_lamp replace minecraft:redstone_lamp
setblock -498 126 1985 minecraft:redstone_lamp[lit=true]

scoreboard players set $dungeon do2.utility.statsScreen 0
execute positioned -498 125 1986 run playsound minecraft:ui.loom.take_result block @a[distance=..10] -498 125 1986 2 1.5 1
