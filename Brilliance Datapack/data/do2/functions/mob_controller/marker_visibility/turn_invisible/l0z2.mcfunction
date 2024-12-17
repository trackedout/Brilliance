kill @e[type=minecraft:armor_stand,tag=zone_marker,tag=L0Z2]
execute as @e[type=minecraft:marker,tag=zone_marker,tag=marker_visible,tag=L0Z2] run tag @s remove marker_visible
team remove L0Z2
