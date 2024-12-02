# Setup
function do2:level_controller/clone_storages
function do2:level_controller/get_mob_count/count_mobs
function do2:level_controller/get_mob_names/get_mob_names



# L1
kill @e[type=ravager,tag=L1Z1]
kill @e[type=ravager,tag=L1Z2]
kill @e[type=ravager,tag=L1Z3]
kill @e[type=ravager,tag=L1Z4]
kill @e[type=ravager,tag=L1Z5]

function do2:level_controller/generate_mobs/l1z1
function do2:level_controller/generate_mobs/l1z2
function do2:level_controller/generate_mobs/l1z3
execute if score $dungeon do2.config.mc.level1Zones matches 0 run function do2:level_controller/generate_mobs/l1z4
execute if score $dungeon do2.config.mc.level1Zones matches 0 run function do2:level_controller/generate_mobs/l1z5


# L2
kill @e[type=ravager,tag=L2Z1]
kill @e[type=ravager,tag=L2Z2]
kill @e[type=ravager,tag=L2Z3]
kill @e[type=ravager,tag=L2Z4]
kill @e[type=ravager,tag=L2Z5]

function do2:level_controller/generate_mobs/l2z1
function do2:level_controller/generate_mobs/l2z2
function do2:level_controller/generate_mobs/l2z3
execute if score $dungeon do2.config.mc.level2Zones matches 0 run function do2:level_controller/generate_mobs/l2z4
execute if score $dungeon do2.config.mc.level2Zones matches 0 run function do2:level_controller/generate_mobs/l2z5

