# - WITH ZONES -
execute if score $dungeon do2.config.mc.level4Zones matches 1 positioned -520 122 1945 run function do2:mob_controller/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.mc.level4Zones matches 1 run scoreboard players operation $l4z1 do2.config.mc.levelZoneMobCount = $dungeon do2.utility.mc.mobCountCounterTotal
execute if score $dungeon do2.config.mc.level4Zones matches 1 positioned -520 122 1944 run function do2:mob_controller/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.mc.level4Zones matches 1 run scoreboard players operation $l4z2 do2.config.mc.levelZoneMobCount = $dungeon do2.utility.mc.mobCountCounterTotal
execute if score $dungeon do2.config.mc.level4Zones matches 1 positioned -520 122 1943 run function do2:mob_controller/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.mc.level4Zones matches 1 run scoreboard players operation $l4z3 do2.config.mc.levelZoneMobCount = $dungeon do2.utility.mc.mobCountCounterTotal

# - WITHOUT ZONES -
execute if score $dungeon do2.config.mc.level4Zones matches 0 positioned -520 125 1945 run function do2:mob_controller/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.mc.level4Zones matches 0 run scoreboard players operation $l4z1 do2.config.mc.levelZoneMobCount = $dungeon do2.utility.mc.mobCountCounterTotal
execute if score $dungeon do2.config.mc.level4Zones matches 0 positioned -520 125 1944 run function do2:mob_controller/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.mc.level4Zones matches 0 run scoreboard players operation $l4z2 do2.config.mc.levelZoneMobCount = $dungeon do2.utility.mc.mobCountCounterTotal
execute if score $dungeon do2.config.mc.level4Zones matches 0 positioned -520 125 1943 run function do2:mob_controller/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.mc.level4Zones matches 0 run scoreboard players operation $l4z3 do2.config.mc.levelZoneMobCount = $dungeon do2.utility.mc.mobCountCounterTotal
