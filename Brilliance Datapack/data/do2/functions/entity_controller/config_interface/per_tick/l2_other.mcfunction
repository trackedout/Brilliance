# Turn Visible
execute if block -529 117 1945 lever[powered=true] as @e[type=marker,tag=L2GHOST] unless entity @s[tag=marker_visible] at @s run function do2:entity_controller/config_interface/marker_visibility/turn_visible/l2ghost
execute if block -529 117 1944 lever[powered=true] as @e[type=marker,tag=L2WILLIE] unless entity @s[tag=marker_visible] at @s run function do2:entity_controller/config_interface/marker_visibility/turn_visible/l2willie
execute if block -529 117 1943 lever[powered=true] as @e[type=marker,tag=L2MITES] unless entity @s[tag=marker_visible] at @s run function do2:entity_controller/config_interface/marker_visibility/turn_visible/l2mites
# Turn Invisible
execute if block -529 117 1945 minecraft:lever[powered=false] if entity @e[tag=marker_visible,tag=L2GHOST] run function do2:entity_controller/config_interface/marker_visibility/turn_invisible/l2ghost
execute if block -529 117 1944 minecraft:lever[powered=false] if entity @e[tag=marker_visible,tag=L2WILLIE] run function do2:entity_controller/config_interface/marker_visibility/turn_invisible/l2willie
execute if block -529 117 1943 minecraft:lever[powered=false] if entity @e[tag=marker_visible,tag=L2MITES] run function do2:entity_controller/config_interface/marker_visibility/turn_invisible/l2mites
