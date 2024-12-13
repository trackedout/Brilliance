# Turn Visible
execute if block -528 117 1945 lever[powered=true] as @e[type=marker,tag=L3Z1] unless entity @s[tag=frustrated_visible] at @s run function do2:dev/markers/turn_visible/l3z1
execute if block -528 117 1944 lever[powered=true] as @e[type=marker,tag=L3Z2] unless entity @s[tag=frustrated_visible] at @s run function do2:dev/markers/turn_visible/l3z2
execute if block -528 117 1943 lever[powered=true] as @e[type=marker,tag=L3Z3] unless entity @s[tag=frustrated_visible] at @s run function do2:dev/markers/turn_visible/l3z3
# Turn Invisible
execute if block -528 117 1945 minecraft:lever[powered=false] if entity @e[tag=frustrated_visible,tag=L3Z1] run function do2:dev/markers/turn_invisible/l3z1
execute if block -528 117 1944 minecraft:lever[powered=false] if entity @e[tag=frustrated_visible,tag=L3Z2] run function do2:dev/markers/turn_invisible/l3z2
execute if block -528 117 1943 minecraft:lever[powered=false] if entity @e[tag=frustrated_visible,tag=L3Z3] run function do2:dev/markers/turn_invisible/l3z3
