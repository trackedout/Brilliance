# Called when hazard is added to the queue.

# update scoreboard
scoreboard players add $dungeon do2.run.systems.hazard.generated 1

# AGRONET event
function do2:agronet/systems/hazard_generated
