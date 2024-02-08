kill @e[type=minecraft:armor_stand,tag=fish_marker]
execute as @e[type=minecraft:marker,tag=frustrated_visible,tag=fish_marker] run tag @s remove frustrated_visible
team remove fish_marker
