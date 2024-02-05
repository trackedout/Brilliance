execute unless score @s do2.trigger.gui matches 124 run return 0
tag @s add do2.tags.gui.enable
tag @s add do2.tags.gui.level4
tag @s remove do2.tags.gui.level1
tag @s remove do2.tags.gui.level2
tag @s remove do2.tags.gui.level3
tellraw @s "Enabled GUI for yourself. [GUI Scale: 4]" 
tellraw @s "Map will be displayed only when you have actual map in your inventory. (but not necessary in the offhand or hotbar)" 

