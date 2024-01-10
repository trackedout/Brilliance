kill @e[type=minecraft:armor_stand,tag=zone_marker,tag=L2Z2]
execute as @e[type=minecraft:area_effect_cloud,tag=zone_marker,tag=frustrated_visible,tag=L2Z2] run tag @s remove frustrated_visible
team remove L2Z2
