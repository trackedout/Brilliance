fill -498 126 1985 -494 126 1985 minecraft:redstone_lamp replace minecraft:redstone_lamp
setblock -494 126 1985 minecraft:redstone_lamp[lit=true]
scoreboard players set $dungeon do2.utility.statsScreen 2
execute positioned -494 125 1986 run playsound minecraft:block.amethyst_cluster.hit block @a[distance=..10] -494 125 1986 2 1.5 1
