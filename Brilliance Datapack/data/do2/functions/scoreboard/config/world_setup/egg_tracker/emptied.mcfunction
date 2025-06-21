execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.2
tellraw @s "Easter Egg's display and lock is removed."
scoreboard players set $dungeon do2.config.wc.easter_eggs 0
