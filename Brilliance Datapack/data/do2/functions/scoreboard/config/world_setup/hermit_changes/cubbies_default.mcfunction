execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.2
tellraw @s "Hermit Cubbies placed"
scoreboard players set $dungeon do2.config.wc.hermitChangesExists 1
