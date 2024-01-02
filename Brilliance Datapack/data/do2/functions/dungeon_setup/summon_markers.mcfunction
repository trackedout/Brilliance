kill @e[type=area_effect_cloud,tag=no-zones]
kill @e[type=area_effect_cloud,tag=with-zones]

# WITH ZONES
execute if score $dungeon do2.run.useZones matches 1 run function do2:dungeon_setup/teleport_killers/with_zones/summon_level_1
execute if score $dungeon do2.run.useZones matches 1 run function do2:dungeon_setup/teleport_killers/with_zones/summon_level_2

# NO ZONES
execute if score $dungeon do2.run.useZones matches 0 run function do2:dungeon_setup/teleport_killers/with_zones/summon_level_1
execute if score $dungeon do2.run.useZones matches 0 run function do2:dungeon_setup/teleport_killers/with_zones/summon_level_2


function do2:dungeon_setup/teleport_killers/no_zones/summon_level_3
function do2:dungeon_setup/teleport_killers/no_zones/summon_level_4
