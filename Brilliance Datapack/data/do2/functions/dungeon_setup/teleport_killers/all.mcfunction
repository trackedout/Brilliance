# Make sure we have markers set up.
function do2:dungeon_setup/test_for_markers

# - Summon Zone Lines -
# Ravager Zones:
execute if score $dungeon do2.config.useRavagerZones matches 0 run function do2:dungeon_setup/teleport_killers/no_zones/remove_ravager_zones
execute if score $dungeon do2.config.useRavagerZones matches 1.. run function do2:dungeon_setup/teleport_killers/with_zones/summon_ravager_zones
# Warden Zones:
execute if score $dungeon do2.config.useWardenZones matches 0 run function do2:dungeon_setup/teleport_killers/no_zones/remove_warden_zones
execute if score $dungeon do2.config.useWardenZones matches 1.. run function do2:dungeon_setup/teleport_killers/with_zones/summon_warden_zones

# Teleport isn't enabled, then don't teleport the killers
execute unless score $dungeon do2.config.fr.teleportKillers matches 1 run return 0

# - Start Log -
execute as @a[scores={do2.logs.dungeon_setup=1..}] run tellraw @s ["",{"text":"[§9B§r]: Teleporting ALL Killers."}]
# - End Log -

# Teleport ravagers & wardens based on the types of markers we have up.
# No Zones.
execute if entity @e[type=marker,tag=L1Z1,tag=no-zones] run function do2:dungeon_setup/teleport_killers/no_zones/level_1
execute if entity @e[type=marker,tag=L1Z1,tag=no-zones] run function do2:dungeon_setup/teleport_killers/no_zones/level_2
execute if entity @e[type=marker,tag=L1Z1,tag=no-zones] run function do2:dungeon_setup/teleport_killers/no_zones/level_4

# With Zones
execute if entity @e[type=marker,tag=L1Z1,tag=with-zones] run function do2:dungeon_setup/teleport_killers/with_zones/level_1
execute if entity @e[type=marker,tag=L1Z1,tag=with-zones] run function do2:dungeon_setup/teleport_killers/with_zones/level_2
execute if entity @e[type=marker,tag=L1Z1,tag=with-zones] run function do2:dungeon_setup/teleport_killers/with_zones/level_4


#Level 3 has no zones ever.
function do2:dungeon_setup/teleport_killers/no_zones/level_3
