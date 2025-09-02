execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.2
tellraw @s "Retired hermits references are included."
scoreboard players set $dungeon do2.config.wc.replaceRetiredHermits 0
