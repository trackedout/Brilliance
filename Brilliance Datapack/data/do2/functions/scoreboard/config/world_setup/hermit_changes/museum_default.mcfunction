execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.2
tellraw @s "Returned museum"
scoreboard players set $dungeon do2.config.wc.museumExists 1
