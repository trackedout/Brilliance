# - Start Log -
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: Summoning Teleport Markers."}]
# - End Log -

kill @e[type=area_effect_cloud,tag=no-zones]
kill @e[type=area_effect_cloud,tag=with-zones]

# WITH ZONES
execute if score $dungeon do2.config.useRavagerZones matches 1 run function do2:dungeon_setup/teleport_killers/with_zones/summon_level_1
execute if score $dungeon do2.config.useRavagerZones matches 1 run function do2:dungeon_setup/teleport_killers/with_zones/summon_level_2
execute if score $dungeon do2.config.useWardenZones matches 1 run function do2:dungeon_setup/teleport_killers/with_zones/summon_level_4

# NO ZONES
execute if score $dungeon do2.config.useRavagerZones matches 0 run function do2:dungeon_setup/teleport_killers/no_zones/summon_level_1
execute if score $dungeon do2.config.useRavagerZones matches 0 run function do2:dungeon_setup/teleport_killers/no_zones/summon_level_2
execute if score $dungeon do2.config.useWardenZones matches 0 run function do2:dungeon_setup/teleport_killers/no_zones/summon_level_4

# L3 and Willy have no zones.
function do2:dungeon_setup/teleport_killers/no_zones/summon_level_3
function do2:dungeon_setup/teleport_killers/no_zones/summon_willy_markers
