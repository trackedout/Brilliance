execute if block -528 117 1943 minecraft:lever[powered=true] as @e[type=marker,tag=L2WILLY] unless entity @s[tag=frustrated_visible] at @s run function do2:dev/markers/turn_visible/l2willy
execute if block -528 117 1943 minecraft:lever[powered=false] if entity @e[tag=frustrated_visible,tag=L2WILLY] run function do2:dev/markers/turn_invisible/l2willy

execute if block -528 117 1942 minecraft:lever[powered=true] as @e[type=marker,tag=fish_marker] unless entity @s[tag=frustrated_visible] at @s run function do2:dev/markers/turn_visible/fish_marker
execute if block -528 117 1942 minecraft:lever[powered=false] if entity @e[tag=frustrated_visible,tag=fish_marker] run function do2:dev/markers/turn_invisible/fish_marker
