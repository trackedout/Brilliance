execute at @s run playsound minecraft:ui.button.click player @s ~ ~ ~ 1
scoreboard players set $dungeon do2.config.bc.snowHazard 1
setblock -587 43 1975 minecraft:powered_rail[shape=north_south]

tellraw @s {"text":"Setting §u§lSnow Hazard§r to: §aENABLED"}
