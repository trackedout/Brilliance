fill -498 126 1985 -494 126 1985 minecraft:redstone_lamp replace minecraft:redstone_lamp
setblock -496 126 1985 minecraft:redstone_lamp[lit=true]
scoreboard players set $dungeon do2.utility.statsScreen 1
playsound minecraft:entity.player.levelup block @a[distance=..10] -496 125 1986 2 1.5 1
