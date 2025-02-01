tag @s add do2.tags.gui.enabled
tag @s remove do2.tags.gui.level1
tag @s remove do2.tags.gui.level2
tag @s remove do2.tags.gui.level3
tag @s add do2.tags.gui.level4
playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.7
tellraw @s ["§rSet §8GUI map§r scale to: §3[ SCALE x0.5 ]"]
