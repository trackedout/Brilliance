execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.2
tellraw @s "Queue returned."
scoreboard players set $dungeon do2.config.wc.queueExists 1

