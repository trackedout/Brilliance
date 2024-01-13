# Called when a HAZARD location is turned on.
# - Start Log -
execute unless entity @e[type=minecraft:area_effect_cloud,tag=HAZARD_EVENT_DIFFERENTIATE,distance=..2] run function do2:events/systems/differentiate_systems/summon_marker_hazard_event
execute if entity @e[type=minecraft:area_effect_cloud,tag=HAZARD_EVENT_DIFFERENTIATE] run function do2:events/systems/differentiate_systems/log_hazard_event
# - End Log -

scoreboard players add $dungeon do2.run.systems.hazard.activated

# AGRONET EVENT
function do2:agronet/systems/hazard_event

