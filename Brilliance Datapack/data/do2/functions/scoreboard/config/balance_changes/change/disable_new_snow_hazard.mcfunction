execute at @s run playsound minecraft:ui.button.click player @s ~ ~ ~ 1
scoreboard players set $dungeon do2.config.bc.snowHazard 0
setblock -587 43 1975 minecraft:glass

tellraw @s {"text":"Setting §u§lSnow Hazard§r to: §cDISABLED"}
