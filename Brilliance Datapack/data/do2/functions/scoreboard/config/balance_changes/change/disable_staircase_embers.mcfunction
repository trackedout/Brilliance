execute at @s run playsound minecraft:ui.button.click player @s ~ ~ ~ 1
scoreboard players set $dungeon do2.config.bc.staircaseEmbers 0

setblock -601 -24 1916 minecraft:glass
setblock -601 8 1941 minecraft:glass
setblock -601 18 1968 minecraft:glass

tellraw @s {"text":"Setting §u§lStaircase Embers§r to: §cDISABLED"}
