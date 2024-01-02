# Ran when hazard is BLOCKED

# update scoreboard
scoreboard players add @a[tag=shulker_recieved] do2.run.systems.hazard.blocked 1

# AGRONET event
function do2:agronet/systems/hazard_blocked
