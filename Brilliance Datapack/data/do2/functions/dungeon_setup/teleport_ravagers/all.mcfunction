
# Teleport ravagers based on the types of markers we have up.
# No Zones.
execute if entity @e[type=area_effect_cloud,tag=L1Z1,tag=no-zones] run function do2:dungeon_setup/teleport_ravagers/no_zones/level_1
execute if entity @e[type=area_effect_cloud,tag=L1Z1,tag=no-zones] run function do2:dungeon_setup/teleport_ravagers/no_zones/level_2
execute if entity @e[type=area_effect_cloud,tag=L1Z1,tag=no-zones] run function do2:dungeon_setup/teleport_ravagers/no_zones/level_3
execute if entity @e[type=area_effect_cloud,tag=L1Z1,tag=no-zones] run function do2:dungeon_setup/teleport_ravagers/no_zones/level_4

# With Zones
execute if entity @e[type=area_effect_cloud,tag=L1Z1,tag=with-zones] run function do2:dungeon_setup/teleport_ravagers/no_zones/level_1
execute if entity @e[type=area_effect_cloud,tag=L1Z1,tag=with-zones] run function do2:dungeon_setup/teleport_ravagers/no_zones/level_2
execute if entity @e[type=area_effect_cloud,tag=L1Z1,tag=with-zones] run function do2:dungeon_setup/teleport_ravagers/no_zones/level_3
execute if entity @e[type=area_effect_cloud,tag=L1Z1,tag=with-zones] run function do2:dungeon_setup/teleport_ravagers/no_zones/level_4
