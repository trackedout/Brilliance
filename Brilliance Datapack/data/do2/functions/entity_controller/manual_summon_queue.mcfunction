execute if score $dungeon do2.config.wc.queueExists matches 0 run tellraw @s "wc.queueExists = 0"
execute if score $dungeon do2.config.wc.queueExists matches 0 run return 0

# Setup
function do2:entity_controller/config_interface/save_storages
function do2:entity_controller/config_interface/get_mob_count/count_mobs
function do2:entity_controller/config_interface/get_mob_names/get_mob_names
function do2:entity_controller/config_interface/add_mob_names/warden_names
function do2:entity_controller/config_interface/add_mob_names/drowned_names
scoreboard players set $dungeon do2.utility.ec.collectingLogs 1
data modify storage do2:mobs mobCountErrors set value []
data modify storage do2:mobs mobNameCountErrors set value []

# kill all old malfunctioned mobs
kill @e[tag=newly_generated_mob]
kill @e[tag=mob_being_worked_on]

# For backwards compatibility
kill @e[tag=L0TRAIN]

# L0
function do2:entity_controller/generate_entities/areas/l0z1
function do2:entity_controller/generate_entities/areas/l0z2


# Display any errors
execute store result score $dungeon do2.utility.ec.collectingLogs run data get storage do2:mobs mobCountErrors
execute if score $dungeon do2.utility.ec.collectingLogs matches 1.. run function do2:entity_controller/generate_entities/log_mob_count_errors
execute store result score $dungeon do2.utility.ec.collectingLogs run data get storage do2:mobs mobNameCountErrors
execute if score $dungeon do2.utility.ec.collectingLogs matches 1.. run function do2:entity_controller/generate_entities/log_mob_name_count_errors
scoreboard players set $dungeon do2.utility.ec.collectingLogs 0
