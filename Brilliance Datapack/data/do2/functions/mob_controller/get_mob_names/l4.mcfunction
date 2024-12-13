# - WITH ZONES -
execute if score $dungeon do2.config.mc.level4Zones matches 1 positioned -521 123 1945 run function do2:mob_controller/get_mob_names/get_names_from_shulker
execute if score $dungeon do2.config.mc.level4Zones matches 1 run data modify storage do2:mobs level4_zone1 set from storage do2:mobs temp
execute if score $dungeon do2.config.mc.level4Zones matches 1 positioned -521 123 1944 run function do2:mob_controller/get_mob_names/get_names_from_shulker
execute if score $dungeon do2.config.mc.level4Zones matches 1 run data modify storage do2:mobs level4_zone2 set from storage do2:mobs temp
execute if score $dungeon do2.config.mc.level4Zones matches 1 positioned -521 123 1943 run function do2:mob_controller/get_mob_names/get_names_from_shulker
execute if score $dungeon do2.config.mc.level4Zones matches 1 run data modify storage do2:mobs level4_zone3 set from storage do2:mobs temp

# - WITHOUT ZONES -
execute if score $dungeon do2.config.mc.level4Zones matches 0 positioned -521 126 1945 run function do2:mob_controller/get_mob_names/get_names_from_shulker
execute if score $dungeon do2.config.mc.level4Zones matches 0 run data modify storage do2:mobs level4_zone1 set from storage do2:mobs temp
execute if score $dungeon do2.config.mc.level4Zones matches 0 positioned -521 126 1944 run function do2:mob_controller/get_mob_names/get_names_from_shulker
execute if score $dungeon do2.config.mc.level4Zones matches 0 run data modify storage do2:mobs level4_zone2 set from storage do2:mobs temp
execute if score $dungeon do2.config.mc.level4Zones matches 0 positioned -521 126 1943 run function do2:mob_controller/get_mob_names/get_names_from_shulker
execute if score $dungeon do2.config.mc.level4Zones matches 0 run data modify storage do2:mobs level4_zone3 set from storage do2:mobs temp
