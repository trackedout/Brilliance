# Setup
function do2:level_controller/get_mob_count/count_mobs
function do2:level_controller/get_mob_names/get_mob_names



# L1
function do2:level_controller/generate_mobs/l1z1
function do2:level_controller/generate_mobs/l1z2
function do2:level_controller/generate_mobs/l1z3
execute if score $dungeon do2.config.mc.level1Zones matches 0 run function do2:level_controller/generate_mobs/l1z4
execute if score $dungeon do2.config.mc.level1Zones matches 0 run function do2:level_controller/generate_mobs/l1z5

