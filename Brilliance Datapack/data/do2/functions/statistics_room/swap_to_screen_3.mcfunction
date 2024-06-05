fill -498 126 1985 -494 126 1985 minecraft:redstone_lamp replace minecraft:redstone_lamp
fill -494 126 1995 -498 126 1995 minecraft:redstone_lamp replace minecraft:redstone_lamp
setblock -498 126 1995 minecraft:redstone_lamp[lit=true]

scoreboard players set $dungeon do2.utility.statsScreen 3
execute if entity @a[tag=do2.inStatsRoom] positioned -498 126 1995 run playsound minecraft:item.lodestone_compass.lock voice @a[distance=..10] -498 126 1995 2 0.5 1
