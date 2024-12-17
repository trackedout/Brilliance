# Turn Visible
execute if block -529 117 1946 lever[powered=true] as @e[type=marker,tag=L0Z1] unless entity @s[tag=marker_visible] at @s run function do2:mob_controller/marker_visibility/turn_visible/l0z1
execute if block -529 117 1945 lever[powered=true] as @e[type=marker,tag=L0Z2] unless entity @s[tag=marker_visible] at @s run function do2:mob_controller/marker_visibility/turn_visible/l0z2
execute if block -529 117 1943 lever[powered=true] as @e[type=marker,tag=fish_marker] unless entity @s[tag=marker_visible] at @s run function do2:mob_controller/marker_visibility/turn_visible/fish_marker
# Turn Invisible
execute if block -529 117 1946 minecraft:lever[powered=false] if entity @e[tag=marker_visible,tag=L0Z1] run function do2:mob_controller/marker_visibility/turn_invisible/l0z1
execute if block -529 117 1945 minecraft:lever[powered=false] if entity @e[tag=marker_visible,tag=L0Z2] run function do2:mob_controller/marker_visibility/turn_invisible/l0z2
execute if block -529 117 1943 minecraft:lever[powered=false] if entity @e[tag=marker_visible,tag=fish_marker] run function do2:mob_controller/marker_visibility/turn_invisible/fish_marker
