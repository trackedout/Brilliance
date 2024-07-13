# - WITH ZONES -
execute if score $dungeon do2.config.mc.level2Zones matches 1 positioned -525 123 1945 run function do2:level_controller/get_mob_names/get_names_from_shulker
execute if score $dungeon do2.config.mc.level2Zones matches 1 run data modify storage do2:mobs level2_zone1 set from storage do2:mobs temp
execute if score $dungeon do2.config.mc.level2Zones matches 1 positioned -525 123 1944 run function do2:level_controller/get_mob_names/get_names_from_shulker
execute if score $dungeon do2.config.mc.level2Zones matches 1 run data modify storage do2:mobs level2_zone2 set from storage do2:mobs temp
execute if score $dungeon do2.config.mc.level2Zones matches 1 positioned -525 123 1943 run function do2:level_controller/get_mob_names/get_names_from_shulker
execute if score $dungeon do2.config.mc.level2Zones matches 1 run data modify storage do2:mobs level2_zone3 set from storage do2:mobs temp
execute if score $dungeon do2.config.mc.level2Zones matches 1 run data modify storage do2:mobs level2_zone4 set value []
execute if score $dungeon do2.config.mc.level2Zones matches 1 run data modify storage do2:mobs level2_zone5 set value []

# - WITHOUT ZONES -
execute if score $dungeon do2.config.mc.level2Zones matches 0 positioned -525 126 1946 run function do2:level_controller/get_mob_names/get_names_from_shulker
execute if score $dungeon do2.config.mc.level2Zones matches 0 run data modify storage do2:mobs level2_zone1 set from storage do2:mobs temp
execute if score $dungeon do2.config.mc.level2Zones matches 0 positioned -525 126 1945 run function do2:level_controller/get_mob_names/get_names_from_shulker
execute if score $dungeon do2.config.mc.level2Zones matches 0 run data modify storage do2:mobs level2_zone2 set from storage do2:mobs temp
execute if score $dungeon do2.config.mc.level2Zones matches 0 positioned -525 126 1944 run function do2:level_controller/get_mob_names/get_names_from_shulker
execute if score $dungeon do2.config.mc.level2Zones matches 0 run data modify storage do2:mobs level2_zone3 set from storage do2:mobs temp
execute if score $dungeon do2.config.mc.level2Zones matches 0 positioned -525 126 1943 run function do2:level_controller/get_mob_names/get_names_from_shulker
execute if score $dungeon do2.config.mc.level2Zones matches 0 run data modify storage do2:mobs level2_zone4 set from storage do2:mobs temp
execute if score $dungeon do2.config.mc.level2Zones matches 0 positioned -525 126 1942 run function do2:level_controller/get_mob_names/get_names_from_shulker
execute if score $dungeon do2.config.mc.level2Zones matches 0 run data modify storage do2:mobs level2_zone5 set from storage do2:mobs temp
