execute unless score @s do2.trigger.gui matches 112 run return 0
tag @s remove do2.tags.gui.enable
tag @s remove do2.tags.gui.level1
tag @s remove do2.tags.gui.level2
tag @s remove do2.tags.gui.level3
tag @s remove do2.tags.gui.level4
tellraw @s "Disabled GUI for yourself." 

