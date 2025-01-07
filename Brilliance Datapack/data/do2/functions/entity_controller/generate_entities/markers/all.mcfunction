# - Start Log -
execute as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Summoning Teleport Markers."}]
# - End Log -

# WITH ZONES
execute if score $dungeon do2.config.ec.level1Zones matches 1 run function do2:entity_controller/generate_entities/markers/l1_zones
execute if score $dungeon do2.config.ec.level2Zones matches 1 run function do2:entity_controller/generate_entities/markers/l2_zones
execute if score $dungeon do2.config.ec.level4Zones matches 1 run function do2:entity_controller/generate_entities/markers/l4_zones

# NO ZONES
execute if score $dungeon do2.config.ec.level1Zones matches 0 run function do2:entity_controller/generate_entities/markers/l1_zoneless
execute if score $dungeon do2.config.ec.level2Zones matches 0 run function do2:entity_controller/generate_entities/markers/l2_zoneless
execute if score $dungeon do2.config.ec.level4Zones matches 0 run function do2:entity_controller/generate_entities/markers/l4_zoneless

# L3 and Willie have no zones.
function do2:entity_controller/generate_entities/markers/l3
function do2:entity_controller/generate_entities/markers/individual/l2_willie

# Training Room Markers
function do2:entity_controller/generate_entities/markers/l0

# L2 special
function do2:entity_controller/generate_entities/markers/individual/l2_mites
function do2:entity_controller/generate_entities/markers/individual/l2_ghost

# Turn invisible *all* markers.
function do2:entity_controller/config_interface/marker_visibility/turn_invisible/all
