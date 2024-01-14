# - Start Log -
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: Teleporting ALL Killers."}]
# - End Log -

# Make sure we have markers set up.
function do2:dungeon_setup/teleport_killers/test_for_markers

# Summon Zone Lines
execute if score $dungeon do2.config.useZones matches 0 run function do2:dungeon_setup/teleport_killers/no_zones/summon_zones
execute if score $dungeon do2.config.useZones matches 1.. run function do2:dungeon_setup/teleport_killers/with_zones/summon_zones

# Teleport ravagers & wardens based on the types of markers we have up.
# No Zones.
execute if entity @e[type=area_effect_cloud,tag=L1Z1,tag=no-zones] run function do2:dungeon_setup/teleport_killers/no_zones/level_1
execute if entity @e[type=area_effect_cloud,tag=L1Z1,tag=no-zones] run function do2:dungeon_setup/teleport_killers/no_zones/level_2
execute if entity @e[type=area_effect_cloud,tag=L1Z1,tag=no-zones] run function do2:dungeon_setup/teleport_killers/no_zones/level_4

# With Zones
execute if entity @e[type=area_effect_cloud,tag=L1Z1,tag=with-zones] run function do2:dungeon_setup/teleport_killers/with_zones/level_1
execute if entity @e[type=area_effect_cloud,tag=L1Z1,tag=with-zones] run function do2:dungeon_setup/teleport_killers/with_zones/level_2
execute if entity @e[type=area_effect_cloud,tag=L1Z1,tag=with-zones] run function do2:dungeon_setup/teleport_killers/with_zones/level_4


#Level 3 has no zones ever.
function do2:dungeon_setup/teleport_killers/no_zones/level_3
