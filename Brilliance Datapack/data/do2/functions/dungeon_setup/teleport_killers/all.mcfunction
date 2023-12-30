# Make sure we have markers set up.
function do2:dungeon_setup/teleport_killers/test_for_markers

# Teleport ravagers based on the types of markers we have up.
# No Zones.
execute if entity @e[type=area_effect_cloud,tag=L1Z1,tag=no-zones] run function do2:dungeon_setup/teleport_killers/no_zones/level_1
execute if entity @e[type=area_effect_cloud,tag=L1Z1,tag=no-zones] run function do2:dungeon_setup/teleport_killers/no_zones/level_2

# With Zones
execute if entity @e[type=area_effect_cloud,tag=L1Z1,tag=with-zones] run function do2:dungeon_setup/teleport_killers/with_zones/level_1
execute if entity @e[type=area_effect_cloud,tag=L1Z1,tag=with-zones] run function do2:dungeon_setup/teleport_killers/with_zones/level_2


#Teleport wardens.
function do2:dungeon_setup/teleport_killers/no_zones/level_3
function do2:dungeon_setup/teleport_killers/no_zones/level_4
