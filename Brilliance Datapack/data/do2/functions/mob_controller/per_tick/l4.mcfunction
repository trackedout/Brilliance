execute if score $dungeon do2.config.mc.level4Zones matches 0 if block -525 115 1944 lever[powered=true] run function do2:mob_controller/swap_to/change_zones
execute if score $dungeon do2.config.mc.level4Zones matches 1 if block -525 115 1944 lever[powered=false] run function do2:mob_controller/swap_to/change_zones

# - TURN VISIBLE -

# With Zones Levers
execute if score $dungeon do2.config.mc.level4Zones matches 1 if block -528 117 1945 lever[powered=true] as @e[type=marker,tag=L4Z1] unless entity @s[tag=frustrated_visible] at @s run function do2:dev/markers/turn_visible/l4z1
execute if score $dungeon do2.config.mc.level4Zones matches 1 if block -528 117 1944 lever[powered=true] as @e[type=marker,tag=L4Z2] unless entity @s[tag=frustrated_visible] at @s run function do2:dev/markers/turn_visible/l4z2
execute if score $dungeon do2.config.mc.level4Zones matches 1 if block -528 117 1943 lever[powered=true] as @e[type=marker,tag=L4Z3] unless entity @s[tag=frustrated_visible] at @s run function do2:dev/markers/turn_visible/l4z3

# No Zones Levers
execute if score $dungeon do2.config.mc.level4Zones matches 0 if block -528 117 1945 lever[powered=true] as @e[type=marker,tag=L4Z1] unless entity @s[tag=frustrated_visible] at @s run function do2:dev/markers/turn_visible/l4z1
execute if score $dungeon do2.config.mc.level4Zones matches 0 if block -528 117 1944 lever[powered=true] as @e[type=marker,tag=L4Z2] unless entity @s[tag=frustrated_visible] at @s run function do2:dev/markers/turn_visible/l4z2
execute if score $dungeon do2.config.mc.level4Zones matches 0 if block -528 117 1943 lever[powered=true] as @e[type=marker,tag=L4Z3] unless entity @s[tag=frustrated_visible] at @s run function do2:dev/markers/turn_visible/l4z3


# - TURN INVISIBLE -

# With Zones Levers
execute if score $dungeon do2.config.mc.level4Zones matches 1 if block -528 117 1945 minecraft:lever[powered=false] if entity @e[tag=frustrated_visible,tag=L4Z1] run function do2:dev/markers/turn_invisible/l4z1
execute if score $dungeon do2.config.mc.level4Zones matches 1 if block -528 117 1944 minecraft:lever[powered=false] if entity @e[tag=frustrated_visible,tag=L4Z2] run function do2:dev/markers/turn_invisible/l4z2
execute if score $dungeon do2.config.mc.level4Zones matches 1 if block -528 117 1943 minecraft:lever[powered=false] if entity @e[tag=frustrated_visible,tag=L4Z3] run function do2:dev/markers/turn_invisible/l4z3

# No Zones Levers
execute if score $dungeon do2.config.mc.level4Zones matches 0 if block -528 117 1945 minecraft:lever[powered=false] if entity @e[tag=frustrated_visible,tag=L4Z1] run function do2:dev/markers/turn_invisible/l4z1
execute if score $dungeon do2.config.mc.level4Zones matches 0 if block -528 117 1944 minecraft:lever[powered=false] if entity @e[tag=frustrated_visible,tag=L4Z2] run function do2:dev/markers/turn_invisible/l4z2
execute if score $dungeon do2.config.mc.level4Zones matches 0 if block -528 117 1943 minecraft:lever[powered=false] if entity @e[tag=frustrated_visible,tag=L4Z3] run function do2:dev/markers/turn_invisible/l4z3
