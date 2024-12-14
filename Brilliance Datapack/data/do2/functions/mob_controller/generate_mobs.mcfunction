# Setup
function do2:mob_controller/save_storages
function do2:mob_controller/get_mob_count/count_mobs
function do2:mob_controller/get_mob_names/get_mob_names
function do2:mob_controller/add_mob_names/ravager_default_names
scoreboard players set $dungeon do2.utility.mc.collectingLogs 1
data modify storage do2:mobs mobCountErrors set value []
data modify storage do2:mobs mobNameCountErrors set value []

# kill all old mobs
kill @e[type=ravager,tag=L0Z1]
kill @e[type=drowned,tag=L0Z2]
kill @e[type=drowned,tag=L2WILLY]
kill @e[type=ravager,tag=L1Z1]
kill @e[type=ravager,tag=L1Z2]
kill @e[type=ravager,tag=L1Z3]
kill @e[type=ravager,tag=L1Z4]
kill @e[type=ravager,tag=L1Z5]
kill @e[type=ravager,tag=L2Z1]
kill @e[type=ravager,tag=L2Z2]
kill @e[type=ravager,tag=L2Z3]
kill @e[type=ravager,tag=L2Z4]
kill @e[type=ravager,tag=L2Z5]
kill @e[type=warden,tag=L3Z1]
kill @e[type=warden,tag=L3Z2]
kill @e[type=warden,tag=L3Z3]
kill @e[type=warden,tag=L4Z1]
kill @e[type=warden,tag=L4Z2]
kill @e[type=warden,tag=L4Z3]

# For backwards compatibility
kill @e[tag=L0TRAIN]

# L0

function do2:mob_controller/generate_mobs/zones/l0z1
function do2:mob_controller/generate_mobs/zones/l0z2
function do2:mob_controller/generate_mobs/zones/l2willy


# L1
function do2:mob_controller/generate_mobs/zones/l1z1
function do2:mob_controller/generate_mobs/zones/l1z2
function do2:mob_controller/generate_mobs/zones/l1z3
execute if score $dungeon do2.config.mc.level1Zones matches 0 run function do2:mob_controller/generate_mobs/zones/l1z4
execute if score $dungeon do2.config.mc.level1Zones matches 0 run function do2:mob_controller/generate_mobs/zones/l1z5


# L2
function do2:mob_controller/generate_mobs/zones/l2z1
function do2:mob_controller/generate_mobs/zones/l2z2
function do2:mob_controller/generate_mobs/zones/l2z3
execute if score $dungeon do2.config.mc.level2Zones matches 0 run function do2:mob_controller/generate_mobs/zones/l2z4
execute if score $dungeon do2.config.mc.level2Zones matches 0 run function do2:mob_controller/generate_mobs/zones/l2z5


# L3
function do2:mob_controller/generate_mobs/zones/l3z1
function do2:mob_controller/generate_mobs/zones/l3z2
function do2:mob_controller/generate_mobs/zones/l3z3

# L4
function do2:mob_controller/generate_mobs/zones/l4z1
function do2:mob_controller/generate_mobs/zones/l4z2
function do2:mob_controller/generate_mobs/zones/l4z3


# Display any errors
execute store result score $dungeon do2.utility.mc.collectingLogs run data get storage do2:mobs mobCountErrors
execute if score $dungeon do2.utility.mc.collectingLogs matches 1.. run function do2:mob_controller/generate_mobs/log_mob_count_errors
execute store result score $dungeon do2.utility.mc.collectingLogs run data get storage do2:mobs mobNameCountErrors
execute if score $dungeon do2.utility.mc.collectingLogs matches 1.. run function do2:mob_controller/generate_mobs/log_mob_name_count_errors
scoreboard players set $dungeon do2.utility.mc.collectingLogs 0
