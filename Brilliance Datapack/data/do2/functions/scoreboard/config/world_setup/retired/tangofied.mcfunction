execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.2
tellraw @s "Retired hermits have now been Tangofied.\n§o§lNote§r: only ensured to work on fresh world downloads."
scoreboard players set $dungeon do2.config.wc.replaceRetiredHermits 1
