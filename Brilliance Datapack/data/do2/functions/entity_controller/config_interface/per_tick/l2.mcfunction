execute if score $dungeon do2.config.ec.level2Zones matches 0 if block -525 115 1944 lever[powered=true] run function do2:entity_controller/config_interface/swap_to/change_zones
execute if score $dungeon do2.config.ec.level2Zones matches 1 if block -525 115 1944 lever[powered=false] run function do2:entity_controller/config_interface/swap_to/change_zones

# - TURN VISIBLE -

# No Zones Levers
execute if score $dungeon do2.config.ec.level2Zones matches 0 if block -529 117 1946 lever[powered=true] as @e[type=marker,tag=L2Z1] unless entity @s[tag=marker_visible] at @s run function do2:entity_controller/config_interface/marker_visibility/turn_visible/l2z1
execute if score $dungeon do2.config.ec.level2Zones matches 0 if block -529 117 1945 lever[powered=true] as @e[type=marker,tag=L2Z2] unless entity @s[tag=marker_visible] at @s run function do2:entity_controller/config_interface/marker_visibility/turn_visible/l2z2
execute if score $dungeon do2.config.ec.level2Zones matches 0 if block -529 117 1944 lever[powered=true] as @e[type=marker,tag=L2Z3] unless entity @s[tag=marker_visible] at @s run function do2:entity_controller/config_interface/marker_visibility/turn_visible/l2z3
execute if score $dungeon do2.config.ec.level2Zones matches 0 if block -529 117 1943 lever[powered=true] as @e[type=marker,tag=L2Z4] unless entity @s[tag=marker_visible] at @s run function do2:entity_controller/config_interface/marker_visibility/turn_visible/l2z4
execute if score $dungeon do2.config.ec.level2Zones matches 0 if block -529 117 1942 lever[powered=true] as @e[type=marker,tag=L2Z5] unless entity @s[tag=marker_visible] at @s run function do2:entity_controller/config_interface/marker_visibility/turn_visible/l2z5

# With Zones Levers
execute if score $dungeon do2.config.ec.level2Zones matches 1 if block -529 117 1945 lever[powered=true] as @e[type=marker,tag=L2Z1] unless entity @s[tag=marker_visible] at @s run function do2:entity_controller/config_interface/marker_visibility/turn_visible/l2z1
execute if score $dungeon do2.config.ec.level2Zones matches 1 if block -529 117 1944 lever[powered=true] as @e[type=marker,tag=L2Z2] unless entity @s[tag=marker_visible] at @s run function do2:entity_controller/config_interface/marker_visibility/turn_visible/l2z2
execute if score $dungeon do2.config.ec.level2Zones matches 1 if block -529 117 1943 lever[powered=true] as @e[type=marker,tag=L2Z3] unless entity @s[tag=marker_visible] at @s run function do2:entity_controller/config_interface/marker_visibility/turn_visible/l2z3


# - TURN INVISIBLE -

# No Zones Levers
execute if score $dungeon do2.config.ec.level2Zones matches 0 if block -529 117 1946 minecraft:lever[powered=false] if entity @e[tag=marker_visible,tag=L2Z1] run function do2:entity_controller/config_interface/marker_visibility/turn_invisible/l2z1
execute if score $dungeon do2.config.ec.level2Zones matches 0 if block -529 117 1945 minecraft:lever[powered=false] if entity @e[tag=marker_visible,tag=L2Z2] run function do2:entity_controller/config_interface/marker_visibility/turn_invisible/l2z2
execute if score $dungeon do2.config.ec.level2Zones matches 0 if block -529 117 1944 minecraft:lever[powered=false] if entity @e[tag=marker_visible,tag=L2Z3] run function do2:entity_controller/config_interface/marker_visibility/turn_invisible/l2z3
execute if score $dungeon do2.config.ec.level2Zones matches 0 if block -529 117 1943 minecraft:lever[powered=false] if entity @e[tag=marker_visible,tag=L2Z4] run function do2:entity_controller/config_interface/marker_visibility/turn_invisible/l2z4
execute if score $dungeon do2.config.ec.level2Zones matches 0 if block -529 117 1942 minecraft:lever[powered=false] if entity @e[tag=marker_visible,tag=L2Z5] run function do2:entity_controller/config_interface/marker_visibility/turn_invisible/l2z5

# With Zones Levers
execute if score $dungeon do2.config.ec.level2Zones matches 1 if block -529 117 1945 minecraft:lever[powered=false] if entity @e[tag=marker_visible,tag=L2Z1] run function do2:entity_controller/config_interface/marker_visibility/turn_invisible/l2z1
execute if score $dungeon do2.config.ec.level2Zones matches 1 if block -529 117 1944 minecraft:lever[powered=false] if entity @e[tag=marker_visible,tag=L2Z2] run function do2:entity_controller/config_interface/marker_visibility/turn_invisible/l2z2
execute if score $dungeon do2.config.ec.level2Zones matches 1 if block -529 117 1943 minecraft:lever[powered=false] if entity @e[tag=marker_visible,tag=L2Z3] run function do2:entity_controller/config_interface/marker_visibility/turn_invisible/l2z3
