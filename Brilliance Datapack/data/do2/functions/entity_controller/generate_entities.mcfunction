# - Start Log -
execute as @a[scores={do2.logs.entity_controller=1..}] run tellraw @s ["",{"text":"[§9B§r]: Creating all entities."}]
# - End Log -

# Setup
function do2:entity_controller/config_interface/save_storages
function do2:entity_controller/config_interface/get_mob_count/count_mobs
function do2:entity_controller/config_interface/get_mob_names/get_mob_names
function do2:entity_controller/config_interface/add_mob_names/ravager_names
function do2:entity_controller/config_interface/add_mob_names/warden_names
function do2:entity_controller/config_interface/add_mob_names/drowned_names
function do2:entity_controller/config_interface/add_mob_names/endermite_names
scoreboard players set $dungeon do2.utility.ec.collectingLogs 1
data modify storage do2:mobs mobCountErrors set value []
data modify storage do2:mobs mobNameCountErrors set value []

# kill all old malfunctioned mobs
kill @e[tag=newly_generated_mob]
kill @e[tag=mob_being_worked_on]

# For backwards compatibility
kill @e[tag=L0TRAIN]
kill @e[type=drowned,tag=L2WILLY]

# L0
function do2:entity_controller/generate_entities/areas/l0z1
function do2:entity_controller/generate_entities/areas/l0z2


# L1
function do2:entity_controller/generate_entities/areas/l1z1
function do2:entity_controller/generate_entities/areas/l1z2
function do2:entity_controller/generate_entities/areas/l1z3
execute if score $dungeon do2.config.ec.level1Zones matches 0 run function do2:entity_controller/generate_entities/areas/l1z4
execute if score $dungeon do2.config.ec.level1Zones matches 0 run function do2:entity_controller/generate_entities/areas/l1z5

execute if score $dungeon do2.config.ec.level1Zones matches 1 run kill @e[type=ravager,tag=L1Z4]
execute if score $dungeon do2.config.ec.level1Zones matches 1 run kill @e[type=ravager,tag=L1Z5]

# L2
function do2:entity_controller/generate_entities/areas/l2z1
function do2:entity_controller/generate_entities/areas/l2z2
function do2:entity_controller/generate_entities/areas/l2z3
execute if score $dungeon do2.config.ec.level2Zones matches 0 run function do2:entity_controller/generate_entities/areas/l2z4
execute if score $dungeon do2.config.ec.level2Zones matches 0 run function do2:entity_controller/generate_entities/areas/l2z5

execute if score $dungeon do2.config.ec.level2Zones matches 1 run kill @e[type=ravager,tag=L2Z4]
execute if score $dungeon do2.config.ec.level2Zones matches 1 run kill @e[type=ravager,tag=L2Z5]

# L2_other
function do2:entity_controller/generate_entities/areas/l2willie
function do2:entity_controller/generate_entities/areas/l2ghost
function do2:entity_controller/generate_entities/areas/l2mites


# L3
function do2:entity_controller/generate_entities/areas/l3z1
function do2:entity_controller/generate_entities/areas/l3z2
function do2:entity_controller/generate_entities/areas/l3z3

# L4
function do2:entity_controller/generate_entities/areas/l4z1
function do2:entity_controller/generate_entities/areas/l4z2
function do2:entity_controller/generate_entities/areas/l4z3

# Other Mobs
function do2:entity_controller/generate_entities/check_other_mobs

# Display any errors
execute store result score $dungeon do2.utility.ec.collectingLogs run data get storage do2:mobs mobCountErrors
execute if score $dungeon do2.utility.ec.collectingLogs matches 1.. run function do2:entity_controller/generate_entities/log_mob_count_errors
execute store result score $dungeon do2.utility.ec.collectingLogs run data get storage do2:mobs mobNameCountErrors
execute if score $dungeon do2.utility.ec.collectingLogs matches 1.. run function do2:entity_controller/generate_entities/log_mob_name_count_errors
scoreboard players set $dungeon do2.utility.ec.collectingLogs 0

# Ensure
function do2:entity_controller/ensure_1_ravager_at_start

# Agronet event
function do2:external/agronet/logs/entity_controller/generate_entities
