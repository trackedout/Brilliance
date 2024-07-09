# - WITH ZONES -
execute if score $dungeon do2.config.mc.level1Zones matches 1 positioned -527 122 1945 run function do2:level_controller/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.mc.level1Zones matches 1 run scoreboard players operation $dungeon do2.config.mc.level1Zone1MobCount = $dungeon do2.utility.mobCountCounterTotal
execute if score $dungeon do2.config.mc.level1Zones matches 1 positioned -527 122 1944 run function do2:level_controller/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.mc.level1Zones matches 1 run scoreboard players operation $dungeon do2.config.mc.level1Zone2MobCount = $dungeon do2.utility.mobCountCounterTotal
execute if score $dungeon do2.config.mc.level1Zones matches 1 positioned -527 122 1943 run function do2:level_controller/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.mc.level1Zones matches 1 run scoreboard players operation $dungeon do2.config.mc.level1Zone3MobCount = $dungeon do2.utility.mobCountCounterTotal

# - WITHOUT ZONES -
execute if score $dungeon do2.config.mc.level1Zones matches 0 positioned -527 125 1946 run function do2:level_controller/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.mc.level1Zones matches 0 run scoreboard players operation $dungeon do2.config.mc.level1Zone1MobCount = $dungeon do2.utility.mobCountCounterTotal
execute if score $dungeon do2.config.mc.level1Zones matches 0 positioned -527 125 1945 run function do2:level_controller/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.mc.level1Zones matches 0 run scoreboard players operation $dungeon do2.config.mc.level1Zone2MobCount = $dungeon do2.utility.mobCountCounterTotal
execute if score $dungeon do2.config.mc.level1Zones matches 0 positioned -527 125 1944 run function do2:level_controller/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.mc.level1Zones matches 0 run scoreboard players operation $dungeon do2.config.mc.level1Zone3MobCount = $dungeon do2.utility.mobCountCounterTotal
execute if score $dungeon do2.config.mc.level1Zones matches 0 positioned -527 125 1943 run function do2:level_controller/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.mc.level1Zones matches 0 run scoreboard players operation $dungeon do2.config.mc.level1Zone4MobCount = $dungeon do2.utility.mobCountCounterTotal
execute if score $dungeon do2.config.mc.level1Zones matches 0 positioned -527 125 1942 run function do2:level_controller/get_mob_count/count_inside_barrel
execute if score $dungeon do2.config.mc.level1Zones matches 0 run scoreboard players operation $dungeon do2.config.mc.level1Zone5MobCount = $dungeon do2.utility.mobCountCounterTotal
