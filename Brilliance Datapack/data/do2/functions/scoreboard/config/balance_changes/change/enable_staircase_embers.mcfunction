execute at @s run playsound minecraft:ui.button.click player @s ~ ~ ~ 1
scoreboard players set $dungeon do2.config.bc.staircaseEmbers 1

setblock -601 -24 1916 minecraft:calcite
setblock -601 8 1941 minecraft:calcite
setblock -601 18 1968 minecraft:calcite

tellraw @s {"text":"Setting §u§lStaircase Embers§r to: §aENABLED"}
