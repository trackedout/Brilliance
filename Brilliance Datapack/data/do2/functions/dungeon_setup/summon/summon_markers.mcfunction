# - Start Log -
execute as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Summoning Teleport Markers."}]
# - End Log -


# WITH ZONES
execute if score $dungeon do2.config.mc.level1Zones matches 1 run function do2:dungeon_setup/summon/with_zones/summon_level_1_markers
execute if score $dungeon do2.config.mc.level2Zones matches 1 run function do2:dungeon_setup/summon/with_zones/summon_level_2_markers
execute if score $dungeon do2.config.mc.level4Zones matches 1 run function do2:dungeon_setup/summon/with_zones/summon_level_4_markers

# NO ZONES
execute if score $dungeon do2.config.mc.level1Zones matches 0 run function do2:dungeon_setup/summon/no_zones/summon_level_1_markers
execute if score $dungeon do2.config.mc.level2Zones matches 0 run function do2:dungeon_setup/summon/no_zones/summon_level_2_markers
execute if score $dungeon do2.config.mc.level4Zones matches 0 run function do2:dungeon_setup/summon/no_zones/summon_level_4_markers

# L3 and Willy have no zones.
function do2:dungeon_setup/summon/no_zones/summon_level_3_markers
function do2:dungeon_setup/summon/no_zones/summon_willy_markers

# Training Room Markers
function do2:dungeon_setup/summon/no_zones/summon_training

# Turn invisible *all* markers.
function do2:dev/markers/turn_invisible/all
