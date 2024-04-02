execute if score $dungeon do2.config.mc.level1Zones matches 0 if block -525 115 1944 lever[powered=true] run function do2:scoreboard/config/mob_controller/swap_to/change_zones
execute if score $dungeon do2.config.mc.level1Zones matches 1 if block -525 115 1944 lever[powered=false] run function do2:scoreboard/config/mob_controller/swap_to/change_zones


# - TURN VISIBLE -

# With Zones Levers
execute if score $dungeon do2.config.mc.level1Zones matches 1 if block -528 117 1946 lever[powered=true] as @e[type=marker,tag=L1Z1] unless entity @s[tag=frustrated_visible] at @s run function do2:dev/markers/turn_visible/l1z1
execute if score $dungeon do2.config.mc.level1Zones matches 1 if block -528 117 1945 lever[powered=true] as @e[type=marker,tag=L1Z2] unless entity @s[tag=frustrated_visible] at @s run function do2:dev/markers/turn_visible/l1z2
execute if score $dungeon do2.config.mc.level1Zones matches 1 if block -528 117 1944 lever[powered=true] as @e[type=marker,tag=L1Z3] unless entity @s[tag=frustrated_visible] at @s run function do2:dev/markers/turn_visible/l1z3
execute if score $dungeon do2.config.mc.level1Zones matches 1 if block -528 117 1943 lever[powered=true] as @e[type=marker,tag=L1Z4] unless entity @s[tag=frustrated_visible] at @s run function do2:dev/markers/turn_visible/l1z4
execute if score $dungeon do2.config.mc.level1Zones matches 1 if block -528 117 1942 lever[powered=true] as @e[type=marker,tag=L1Z5] unless entity @s[tag=frustrated_visible] at @s run function do2:dev/markers/turn_visible/l1z5

# No Zones Levers
execute if score $dungeon do2.config.mc.level1Zones matches 0 if block -528 117 1945 lever[powered=true] as @e[type=marker,tag=L1Z1] unless entity @s[tag=frustrated_visible] at @s run function do2:dev/markers/turn_visible/l1z1
execute if score $dungeon do2.config.mc.level1Zones matches 0 if block -528 117 1944 lever[powered=true] as @e[type=marker,tag=L1Z2] unless entity @s[tag=frustrated_visible] at @s run function do2:dev/markers/turn_visible/l1z2
execute if score $dungeon do2.config.mc.level1Zones matches 0 if block -528 117 1943 lever[powered=true] as @e[type=marker,tag=L1Z3] unless entity @s[tag=frustrated_visible] at @s run function do2:dev/markers/turn_visible/l1z3


# - TURN INVISIBLE -

# With Zones Levers
execute if score $dungeon do2.config.mc.level1Zones matches 1 if block -528 117 1946 minecraft:lever[powered=false] if entity @e[tag=frustrated_visible,tag=L1Z1] run function do2:dev/markers/turn_invisible/l1z1
execute if score $dungeon do2.config.mc.level1Zones matches 1 if block -528 117 1945 minecraft:lever[powered=false] if entity @e[tag=frustrated_visible,tag=L1Z2] run function do2:dev/markers/turn_invisible/l1z2
execute if score $dungeon do2.config.mc.level1Zones matches 1 if block -528 117 1944 minecraft:lever[powered=false] if entity @e[tag=frustrated_visible,tag=L1Z3] run function do2:dev/markers/turn_invisible/l1z3
execute if score $dungeon do2.config.mc.level1Zones matches 1 if block -528 117 1943 minecraft:lever[powered=false] if entity @e[tag=frustrated_visible,tag=L1Z4] run function do2:dev/markers/turn_invisible/l1z4
execute if score $dungeon do2.config.mc.level1Zones matches 1 if block -528 117 1942 minecraft:lever[powered=false] if entity @e[tag=frustrated_visible,tag=L1Z5] run function do2:dev/markers/turn_invisible/l1z5

# No Zones Levers
execute if score $dungeon do2.config.mc.level1Zones matches 0 if block -528 117 1945 minecraft:lever[powered=false] if entity @e[tag=frustrated_visible,tag=L1Z1] run function do2:dev/markers/turn_invisible/l1z1
execute if score $dungeon do2.config.mc.level1Zones matches 0 if block -528 117 1944 minecraft:lever[powered=false] if entity @e[tag=frustrated_visible,tag=L1Z2] run function do2:dev/markers/turn_invisible/l1z2
execute if score $dungeon do2.config.mc.level1Zones matches 0 if block -528 117 1943 minecraft:lever[powered=false] if entity @e[tag=frustrated_visible,tag=L1Z3] run function do2:dev/markers/turn_invisible/l1z3
