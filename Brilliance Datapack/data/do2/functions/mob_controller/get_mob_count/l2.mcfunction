# - WITH ZONES -
execute if score $dungeon do2.config.mc.level2Zones matches 1 positioned -526 122 1945 run function do2:mob_controller/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.mc.level2Zones matches 1 run scoreboard players operation $l2z1 do2.config.mc.levelZoneMobCount = $dungeon do2.utility.mc.mobCountCounterTotal
execute if score $dungeon do2.config.mc.level2Zones matches 1 positioned -526 122 1944 run function do2:mob_controller/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.mc.level2Zones matches 1 run scoreboard players operation $l2z2 do2.config.mc.levelZoneMobCount = $dungeon do2.utility.mc.mobCountCounterTotal
execute if score $dungeon do2.config.mc.level2Zones matches 1 positioned -526 122 1943 run function do2:mob_controller/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.mc.level2Zones matches 1 run scoreboard players operation $l2z3 do2.config.mc.levelZoneMobCount = $dungeon do2.utility.mc.mobCountCounterTotal
execute if score $dungeon do2.config.mc.level2Zones matches 1 run scoreboard players set $l2z4 do2.config.mc.levelZoneMobCount 0
execute if score $dungeon do2.config.mc.level2Zones matches 1 run scoreboard players set $l2z5 do2.config.mc.levelZoneMobCount 0

# - WITHOUT ZONES -
execute if score $dungeon do2.config.mc.level2Zones matches 0 positioned -526 125 1946 run function do2:mob_controller/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.mc.level2Zones matches 0 run scoreboard players operation $l2z1 do2.config.mc.levelZoneMobCount = $dungeon do2.utility.mc.mobCountCounterTotal
execute if score $dungeon do2.config.mc.level2Zones matches 0 positioned -526 125 1945 run function do2:mob_controller/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.mc.level2Zones matches 0 run scoreboard players operation $l2z2 do2.config.mc.levelZoneMobCount = $dungeon do2.utility.mc.mobCountCounterTotal
execute if score $dungeon do2.config.mc.level2Zones matches 0 positioned -526 125 1944 run function do2:mob_controller/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.mc.level2Zones matches 0 run scoreboard players operation $l2z3 do2.config.mc.levelZoneMobCount = $dungeon do2.utility.mc.mobCountCounterTotal
execute if score $dungeon do2.config.mc.level2Zones matches 0 positioned -526 125 1943 run function do2:mob_controller/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.mc.level2Zones matches 0 run scoreboard players operation $l2z4 do2.config.mc.levelZoneMobCount = $dungeon do2.utility.mc.mobCountCounterTotal
execute if score $dungeon do2.config.mc.level2Zones matches 0 positioned -526 125 1942 run function do2:mob_controller/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.mc.level2Zones matches 0 run scoreboard players operation $l2z5 do2.config.mc.levelZoneMobCount = $dungeon do2.utility.mc.mobCountCounterTotal
