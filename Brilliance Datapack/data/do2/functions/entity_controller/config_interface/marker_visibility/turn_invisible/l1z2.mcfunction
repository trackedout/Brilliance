kill @e[type=minecraft:armor_stand,tag=zone_marker,tag=L1Z2]
execute as @e[type=minecraft:marker,tag=zone_marker,tag=marker_visible,tag=L1Z2] run tag @s remove marker_visible
team remove L1Z2
