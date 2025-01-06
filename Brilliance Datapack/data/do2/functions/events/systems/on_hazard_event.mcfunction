# Called when a HAZARD location is turned on.

scoreboard players add @a[tag=do2.received_shulker] do2.run.systems.hazard.activated 1
scoreboard players add @a[tag=do2.received_shulker] do2.systems.hazard.activated 1
scoreboard players add $dungeon do2.run.systems.hazard.activated 1
scoreboard players add $dungeon do2.systems.hazard.activated 1

# AGRONET EVENT
function do2:agronet/systems/hazard_event

