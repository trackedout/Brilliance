# - WITH ZONES -
execute if score $dungeon do2.config.ec.level4Zones matches 1 positioned -520 123 1945 run function do2:entity_controller/config_interface/get_mob_names/get_names_from_shulker
execute if score $dungeon do2.config.ec.level4Zones matches 1 run data modify storage do2:mobs level4_zone1 set from storage do2:mobs temp
execute if score $dungeon do2.config.ec.level4Zones matches 1 positioned -520 123 1944 run function do2:entity_controller/config_interface/get_mob_names/get_names_from_shulker
execute if score $dungeon do2.config.ec.level4Zones matches 1 run data modify storage do2:mobs level4_zone2 set from storage do2:mobs temp
execute if score $dungeon do2.config.ec.level4Zones matches 1 positioned -520 123 1943 run function do2:entity_controller/config_interface/get_mob_names/get_names_from_shulker
execute if score $dungeon do2.config.ec.level4Zones matches 1 run data modify storage do2:mobs level4_zone3 set from storage do2:mobs temp

# - WITHOUT ZONES -
execute if score $dungeon do2.config.ec.level4Zones matches 0 positioned -520 126 1945 run function do2:entity_controller/config_interface/get_mob_names/get_names_from_shulker
execute if score $dungeon do2.config.ec.level4Zones matches 0 run data modify storage do2:mobs level4_zone1 set from storage do2:mobs temp
execute if score $dungeon do2.config.ec.level4Zones matches 0 positioned -520 126 1944 run function do2:entity_controller/config_interface/get_mob_names/get_names_from_shulker
execute if score $dungeon do2.config.ec.level4Zones matches 0 run data modify storage do2:mobs level4_zone2 set from storage do2:mobs temp
execute if score $dungeon do2.config.ec.level4Zones matches 0 positioned -520 126 1943 run function do2:entity_controller/config_interface/get_mob_names/get_names_from_shulker
execute if score $dungeon do2.config.ec.level4Zones matches 0 run data modify storage do2:mobs level4_zone3 set from storage do2:mobs temp
