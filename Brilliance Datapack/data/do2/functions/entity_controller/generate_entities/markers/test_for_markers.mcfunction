# - Start Log -
execute as @a[scores={do2.logs.entity_testing=2..}] run tellraw @s ["",{"text":"[§9B§r]: Testing for teleport Markers."}]
# - End Log -


scoreboard objectives add do2.tests.all_markers_alive dummy

# Store amount of markers each zone carries
scoreboard players set $l0z1 do2.tests.all_markers_alive 17
scoreboard players set $l0z2 do2.tests.all_markers_alive 9
scoreboard players set $l1z1_zoneless do2.tests.all_markers_alive 30
scoreboard players set $l1z2_zoneless do2.tests.all_markers_alive 45
scoreboard players set $l1z3_zoneless do2.tests.all_markers_alive 29
scoreboard players set $l1z4_zoneless do2.tests.all_markers_alive 36
scoreboard players set $l1z5_zoneless do2.tests.all_markers_alive 36
scoreboard players set $l1z1_zones do2.tests.all_markers_alive 73
scoreboard players set $l1z2_zones do2.tests.all_markers_alive 80
scoreboard players set $l1z3_zones do2.tests.all_markers_alive 38
scoreboard players set $l2_ghost do2.tests.all_markers_alive 1
scoreboard players set $l2_mites do2.tests.all_markers_alive 5
scoreboard players set $l2_willie do2.tests.all_markers_alive 112
scoreboard players set $l2z1_zoneless do2.tests.all_markers_alive 49
scoreboard players set $l2z2_zoneless do2.tests.all_markers_alive 42
scoreboard players set $l2z3_zoneless do2.tests.all_markers_alive 41
scoreboard players set $l2z4_zoneless do2.tests.all_markers_alive 52
scoreboard players set $l2z5_zoneless do2.tests.all_markers_alive 35
scoreboard players set $l2z1_zones do2.tests.all_markers_alive 48
scoreboard players set $l2z2_zones do2.tests.all_markers_alive 54
scoreboard players set $l2z3_zones do2.tests.all_markers_alive 21
scoreboard players set $l3z1 do2.tests.all_markers_alive 56
scoreboard players set $l3z2 do2.tests.all_markers_alive 62
scoreboard players set $l3z3 do2.tests.all_markers_alive 79
scoreboard players set $l4z1_zoneless do2.tests.all_markers_alive 71
scoreboard players set $l4z2_zoneless do2.tests.all_markers_alive 37
scoreboard players set $l4z3_zoneless do2.tests.all_markers_alive 51
scoreboard players set $l4z1_zones do2.tests.all_markers_alive 107
scoreboard players set $l4z2_zones do2.tests.all_markers_alive 100
scoreboard players set $l4z3_zones do2.tests.all_markers_alive 89


# Need to check if even ONE marker is not existing. Best way I could do this:

# L0Z1
scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute as @e[type=minecraft:marker,tag=L0Z1,tag=no-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute unless score $dungeon do2.tests.all_markers_alive = $l0z1 do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L0Z1 marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l0z1","objective":"do2.tests.all_markers_alive"}}]
execute unless score $dungeon do2.tests.all_markers_alive = $l0z1 do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l0z1

# L0Z2
scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute as @e[type=minecraft:marker,tag=L0Z2,tag=no-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute unless score $dungeon do2.tests.all_markers_alive = $l0z2 do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L0Z2 marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l0z2","objective":"do2.tests.all_markers_alive"}}]
execute unless score $dungeon do2.tests.all_markers_alive = $l0z2 do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l0z2

# L1Z1
scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute if score $dungeon do2.config.ec.level1Zones matches 1 as @e[type=minecraft:marker,tag=L1Z1,tag=with-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute if score $dungeon do2.config.ec.level1Zones matches 1 unless score $dungeon do2.tests.all_markers_alive = $l1z1_zones do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L1Z1 marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l1z1_zones","objective":"do2.tests.all_markers_alive"}}]
execute if score $dungeon do2.config.ec.level1Zones matches 1 unless score $dungeon do2.tests.all_markers_alive = $l1z1_zones do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l1z1_zones
execute if score $dungeon do2.config.ec.level1Zones matches 0 as @e[type=minecraft:marker,tag=L1Z1,tag=no-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute if score $dungeon do2.config.ec.level1Zones matches 0 unless score $dungeon do2.tests.all_markers_alive = $l1z1_zoneless do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L1Z1 marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l1z1_zoneless","objective":"do2.tests.all_markers_alive"}}]
execute if score $dungeon do2.config.ec.level1Zones matches 0 unless score $dungeon do2.tests.all_markers_alive = $l1z1_zoneless do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l1z1_zoneless

# L1Z2
scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute if score $dungeon do2.config.ec.level1Zones matches 1 as @e[type=minecraft:marker,tag=L1Z2,tag=with-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute if score $dungeon do2.config.ec.level1Zones matches 1 unless score $dungeon do2.tests.all_markers_alive = $l1z2_zones do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L1Z2 marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l1z2_zones","objective":"do2.tests.all_markers_alive"}}]
execute if score $dungeon do2.config.ec.level1Zones matches 1 unless score $dungeon do2.tests.all_markers_alive = $l1z2_zones do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l1z2_zones
execute if score $dungeon do2.config.ec.level1Zones matches 0 as @e[type=minecraft:marker,tag=L1Z2,tag=no-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute if score $dungeon do2.config.ec.level1Zones matches 0 unless score $dungeon do2.tests.all_markers_alive = $l1z2_zoneless do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L1Z2 marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l1z2_zoneless","objective":"do2.tests.all_markers_alive"}}]
execute if score $dungeon do2.config.ec.level1Zones matches 0 unless score $dungeon do2.tests.all_markers_alive = $l1z2_zoneless do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l1z2_zoneless

# L1Z3
scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute if score $dungeon do2.config.ec.level1Zones matches 1 as @e[type=minecraft:marker,tag=L1Z3,tag=with-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute if score $dungeon do2.config.ec.level1Zones matches 1 unless score $dungeon do2.tests.all_markers_alive = $l1z3_zones do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L1Z3 marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l1z3_zones","objective":"do2.tests.all_markers_alive"}}]
execute if score $dungeon do2.config.ec.level1Zones matches 1 unless score $dungeon do2.tests.all_markers_alive = $l1z3_zones do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l1z3_zones
execute if score $dungeon do2.config.ec.level1Zones matches 0 as @e[type=minecraft:marker,tag=L1Z3,tag=no-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute if score $dungeon do2.config.ec.level1Zones matches 0 unless score $dungeon do2.tests.all_markers_alive = $l1z3_zoneless do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L1Z3 marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l1z3_zoneless","objective":"do2.tests.all_markers_alive"}}]
execute if score $dungeon do2.config.ec.level1Zones matches 0 unless score $dungeon do2.tests.all_markers_alive = $l1z3_zoneless do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l1z3_zoneless

# L1Z4
scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute if score $dungeon do2.config.ec.level1Zones matches 0 as @e[type=minecraft:marker,tag=L1Z4,tag=no-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute if score $dungeon do2.config.ec.level1Zones matches 0 unless score $dungeon do2.tests.all_markers_alive = $l1z4_zoneless do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L1Z4 marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l1z4_zoneless","objective":"do2.tests.all_markers_alive"}}]
execute if score $dungeon do2.config.ec.level1Zones matches 0 unless score $dungeon do2.tests.all_markers_alive = $l1z4_zoneless do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l1z4_zoneless

# L1Z5
scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute if score $dungeon do2.config.ec.level1Zones matches 0 as @e[type=minecraft:marker,tag=L1Z5,tag=no-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute if score $dungeon do2.config.ec.level1Zones matches 0 unless score $dungeon do2.tests.all_markers_alive = $l1z5_zoneless do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L1Z5 marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l1z5_zoneless","objective":"do2.tests.all_markers_alive"}}]
execute if score $dungeon do2.config.ec.level1Zones matches 0 unless score $dungeon do2.tests.all_markers_alive = $l1z5_zoneless do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l1z5_zoneless

# L2WILLIE
scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute as @e[type=minecraft:marker,tag=L2WILLIE,tag=no-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute unless score $dungeon do2.tests.all_markers_alive = $l2_willie do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L2WILLIE marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l2_willie","objective":"do2.tests.all_markers_alive"}}]
execute unless score $dungeon do2.tests.all_markers_alive = $l2_willie do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l2_willie

# L2MITES
scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute as @e[type=minecraft:marker,tag=L2MITES,tag=no-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute unless score $dungeon do2.tests.all_markers_alive = $l2_mites do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L2MITES marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l2_mites","objective":"do2.tests.all_markers_alive"}}]
execute unless score $dungeon do2.tests.all_markers_alive = $l2_mites do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l2_mites

# L2GHOST
scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute as @e[type=minecraft:marker,tag=L2GHOST,tag=no-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute unless score $dungeon do2.tests.all_markers_alive = $l2_ghost do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L2GHOST marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l2_ghost","objective":"do2.tests.all_markers_alive"}}]
execute unless score $dungeon do2.tests.all_markers_alive = $l2_ghost do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l2_ghost

# L2Z1
scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute if score $dungeon do2.config.ec.level2Zones matches 1 as @e[type=minecraft:marker,tag=L2Z1,tag=with-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute if score $dungeon do2.config.ec.level2Zones matches 1 unless score $dungeon do2.tests.all_markers_alive = $l2z1_zones do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L2Z1 marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l2z1_zones","objective":"do2.tests.all_markers_alive"}}]
execute if score $dungeon do2.config.ec.level2Zones matches 1 unless score $dungeon do2.tests.all_markers_alive = $l2z1_zones do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l2z1_zones
execute if score $dungeon do2.config.ec.level2Zones matches 0 as @e[type=minecraft:marker,tag=L2Z1,tag=no-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute if score $dungeon do2.config.ec.level2Zones matches 0 unless score $dungeon do2.tests.all_markers_alive = $l2z1_zoneless do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L2Z1 marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l2z1_zoneless","objective":"do2.tests.all_markers_alive"}}]
execute if score $dungeon do2.config.ec.level2Zones matches 0 unless score $dungeon do2.tests.all_markers_alive = $l2z1_zoneless do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l2z1_zoneless

# L2Z2
scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute if score $dungeon do2.config.ec.level2Zones matches 1 as @e[type=minecraft:marker,tag=L2Z2,tag=with-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute if score $dungeon do2.config.ec.level2Zones matches 1 unless score $dungeon do2.tests.all_markers_alive = $l2z2_zones do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L2Z2 marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l2z2_zones","objective":"do2.tests.all_markers_alive"}}]
execute if score $dungeon do2.config.ec.level2Zones matches 1 unless score $dungeon do2.tests.all_markers_alive = $l2z2_zones do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l2z2_zones
execute if score $dungeon do2.config.ec.level2Zones matches 0 as @e[type=minecraft:marker,tag=L2Z2,tag=no-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute if score $dungeon do2.config.ec.level2Zones matches 0 unless score $dungeon do2.tests.all_markers_alive = $l2z2_zoneless do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L2Z2 marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l2z2_zoneless","objective":"do2.tests.all_markers_alive"}}]
execute if score $dungeon do2.config.ec.level2Zones matches 0 unless score $dungeon do2.tests.all_markers_alive = $l2z2_zoneless do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l2z2_zoneless

# L2Z3
scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute if score $dungeon do2.config.ec.level2Zones matches 1 as @e[type=minecraft:marker,tag=L2Z3,tag=with-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute if score $dungeon do2.config.ec.level2Zones matches 1 unless score $dungeon do2.tests.all_markers_alive = $l2z3_zones do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L2Z3 marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l2z3_zones","objective":"do2.tests.all_markers_alive"}}]
execute if score $dungeon do2.config.ec.level2Zones matches 1 unless score $dungeon do2.tests.all_markers_alive = $l2z3_zones do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l2z3_zones
execute if score $dungeon do2.config.ec.level2Zones matches 0 as @e[type=minecraft:marker,tag=L2Z3,tag=no-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute if score $dungeon do2.config.ec.level2Zones matches 0 unless score $dungeon do2.tests.all_markers_alive = $l2z3_zoneless do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L2Z3 marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l2z3_zoneless","objective":"do2.tests.all_markers_alive"}}]
execute if score $dungeon do2.config.ec.level2Zones matches 0 unless score $dungeon do2.tests.all_markers_alive = $l2z3_zoneless do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l2z3_zoneless

# L2Z4
scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute if score $dungeon do2.config.ec.level2Zones matches 0 as @e[type=minecraft:marker,tag=L2Z4,tag=no-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute if score $dungeon do2.config.ec.level2Zones matches 0 unless score $dungeon do2.tests.all_markers_alive = $l2z4_zoneless do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L2Z4 marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l2z4_zoneless","objective":"do2.tests.all_markers_alive"}}]
execute if score $dungeon do2.config.ec.level2Zones matches 0 unless score $dungeon do2.tests.all_markers_alive = $l2z4_zoneless do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l2z4_zoneless

# L2Z5
scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute if score $dungeon do2.config.ec.level2Zones matches 0 as @e[type=minecraft:marker,tag=L2Z5,tag=no-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute if score $dungeon do2.config.ec.level2Zones matches 0 unless score $dungeon do2.tests.all_markers_alive = $l2z5_zoneless do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L2Z5 marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l2z5_zoneless","objective":"do2.tests.all_markers_alive"}}]
execute if score $dungeon do2.config.ec.level2Zones matches 0 unless score $dungeon do2.tests.all_markers_alive = $l2z5_zoneless do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l2z5_zoneless

# L3Z1
scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute as @e[type=minecraft:marker,tag=L3Z1,tag=no-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute unless score $dungeon do2.tests.all_markers_alive = $l3z1 do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L3Z1 marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l3z1","objective":"do2.tests.all_markers_alive"}}]
execute unless score $dungeon do2.tests.all_markers_alive = $l3z1 do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l3z1

# L3Z2
scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute as @e[type=minecraft:marker,tag=L3Z2,tag=no-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute unless score $dungeon do2.tests.all_markers_alive = $l3z2 do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L3Z2 marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l3z2","objective":"do2.tests.all_markers_alive"}}]
execute unless score $dungeon do2.tests.all_markers_alive = $l3z2 do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l3z2

# L3Z3
scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute as @e[type=minecraft:marker,tag=L3Z3,tag=no-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute unless score $dungeon do2.tests.all_markers_alive = $l3z3 do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L3Z3 marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l3z3","objective":"do2.tests.all_markers_alive"}}]
execute unless score $dungeon do2.tests.all_markers_alive = $l3z3 do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l3z3

# L4Z1
scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute if score $dungeon do2.config.ec.level4Zones matches 1 as @e[type=minecraft:marker,tag=L4Z1,tag=with-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute if score $dungeon do2.config.ec.level4Zones matches 1 unless score $dungeon do2.tests.all_markers_alive = $l4z1_zones do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L4Z1 marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l4z1_zones","objective":"do2.tests.all_markers_alive"}}]
execute if score $dungeon do2.config.ec.level4Zones matches 1 unless score $dungeon do2.tests.all_markers_alive = $l4z1_zones do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l4z1_zones
execute if score $dungeon do2.config.ec.level4Zones matches 0 as @e[type=minecraft:marker,tag=L4Z1,tag=no-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute if score $dungeon do2.config.ec.level4Zones matches 0 unless score $dungeon do2.tests.all_markers_alive = $l4z1_zoneless do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L4Z1 marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l4z1_zoneless","objective":"do2.tests.all_markers_alive"}}]
execute if score $dungeon do2.config.ec.level4Zones matches 0 unless score $dungeon do2.tests.all_markers_alive = $l4z1_zoneless do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l4z1_zoneless

# L4Z2
scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute if score $dungeon do2.config.ec.level4Zones matches 1 as @e[type=minecraft:marker,tag=L4Z2,tag=with-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute if score $dungeon do2.config.ec.level4Zones matches 1 unless score $dungeon do2.tests.all_markers_alive = $l4z2_zones do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L4Z2 marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l4z2_zones","objective":"do2.tests.all_markers_alive"}}]
execute if score $dungeon do2.config.ec.level4Zones matches 1 unless score $dungeon do2.tests.all_markers_alive = $l4z2_zones do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l4z2_zones
execute if score $dungeon do2.config.ec.level4Zones matches 0 as @e[type=minecraft:marker,tag=L4Z2,tag=no-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute if score $dungeon do2.config.ec.level4Zones matches 0 unless score $dungeon do2.tests.all_markers_alive = $l4z2_zoneless do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L4Z2 marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l4z2_zoneless","objective":"do2.tests.all_markers_alive"}}]
execute if score $dungeon do2.config.ec.level4Zones matches 0 unless score $dungeon do2.tests.all_markers_alive = $l4z2_zoneless do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l4z2_zoneless

# L4Z3
scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute if score $dungeon do2.config.ec.level4Zones matches 1 as @e[type=minecraft:marker,tag=L4Z3,tag=with-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute if score $dungeon do2.config.ec.level4Zones matches 1 unless score $dungeon do2.tests.all_markers_alive = $l4z3_zones do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L4Z3 marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l4z3_zones","objective":"do2.tests.all_markers_alive"}}]
execute if score $dungeon do2.config.ec.level4Zones matches 1 unless score $dungeon do2.tests.all_markers_alive = $l4z3_zones do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l4z3_zones
execute if score $dungeon do2.config.ec.level4Zones matches 0 as @e[type=minecraft:marker,tag=L4Z3,tag=no-zones] run scoreboard players add $dungeon do2.tests.all_markers_alive 1
execute if score $dungeon do2.config.ec.level4Zones matches 0 unless score $dungeon do2.tests.all_markers_alive = $l4z3_zoneless do2.tests.all_markers_alive as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Fixing missing L4Z3 marker(s) §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}},{"text":"/"},{"color":"aqua","score":{"name":"$l4z3_zoneless","objective":"do2.tests.all_markers_alive"}}]
execute if score $dungeon do2.config.ec.level4Zones matches 0 unless score $dungeon do2.tests.all_markers_alive = $l4z3_zoneless do2.tests.all_markers_alive run function do2:entity_controller/generate_entities/markers/individual/l4z3_zoneless

scoreboard objectives remove do2.tests.all_markers_alive

# Agronet event
function do2:external/agronet/logs/entity_testing/test_for_markers