# Kill all zone markers
execute as @e[type=minecraft:marker,tag=with-zones] run kill @s
execute as @e[type=minecraft:marker,tag=no-zones] run kill @s

# Summon new markers
function do2:dungeon_setup/teleport_killers/with_zones/summon_level_1
function do2:dungeon_setup/teleport_killers/with_zones/summon_level_2
function do2:dungeon_setup/teleport_killers/no_zones/summon_level_3
function do2:dungeon_setup/teleport_killers/with_zones/summon_level_4
function do2:dungeon_setup/teleport_killers/no_zones/summon_willy_markers
