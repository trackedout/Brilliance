# - WITH ZONES -
execute if score $dungeon do2.config.ec.level1Zones matches 1 positioned -528 122 1945 run function do2:entity_controller/config_interface/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.ec.level1Zones matches 1 run scoreboard players operation $l1z1 do2.config.ec.levelZoneMobCount = $dungeon do2.utility.ec.mobCountCounterTotal
execute if score $dungeon do2.config.ec.level1Zones matches 1 positioned -528 122 1944 run function do2:entity_controller/config_interface/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.ec.level1Zones matches 1 run scoreboard players operation $l1z2 do2.config.ec.levelZoneMobCount = $dungeon do2.utility.ec.mobCountCounterTotal
execute if score $dungeon do2.config.ec.level1Zones matches 1 positioned -528 122 1943 run function do2:entity_controller/config_interface/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.ec.level1Zones matches 1 run scoreboard players operation $l1z3 do2.config.ec.levelZoneMobCount = $dungeon do2.utility.ec.mobCountCounterTotal
execute if score $dungeon do2.config.ec.level1Zones matches 1 run scoreboard players set $l1z4 do2.config.ec.levelZoneMobCount 0
execute if score $dungeon do2.config.ec.level1Zones matches 1 run scoreboard players set $l1z5 do2.config.ec.levelZoneMobCount 0

# - WITHOUT ZONES -
execute if score $dungeon do2.config.ec.level1Zones matches 0 positioned -528 125 1946 run function do2:entity_controller/config_interface/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.ec.level1Zones matches 0 run scoreboard players operation $l1z1 do2.config.ec.levelZoneMobCount = $dungeon do2.utility.ec.mobCountCounterTotal
execute if score $dungeon do2.config.ec.level1Zones matches 0 positioned -528 125 1945 run function do2:entity_controller/config_interface/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.ec.level1Zones matches 0 run scoreboard players operation $l1z2 do2.config.ec.levelZoneMobCount = $dungeon do2.utility.ec.mobCountCounterTotal
execute if score $dungeon do2.config.ec.level1Zones matches 0 positioned -528 125 1944 run function do2:entity_controller/config_interface/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.ec.level1Zones matches 0 run scoreboard players operation $l1z3 do2.config.ec.levelZoneMobCount = $dungeon do2.utility.ec.mobCountCounterTotal
execute if score $dungeon do2.config.ec.level1Zones matches 0 positioned -528 125 1943 run function do2:entity_controller/config_interface/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.ec.level1Zones matches 0 run scoreboard players operation $l1z4 do2.config.ec.levelZoneMobCount = $dungeon do2.utility.ec.mobCountCounterTotal
execute if score $dungeon do2.config.ec.level1Zones matches 0 positioned -528 125 1942 run function do2:entity_controller/config_interface/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.ec.level1Zones matches 0 run scoreboard players operation $l1z5 do2.config.ec.levelZoneMobCount = $dungeon do2.utility.ec.mobCountCounterTotal
