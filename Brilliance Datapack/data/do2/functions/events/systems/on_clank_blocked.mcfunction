# Ran when clank is BLOCKED

# update scoreboard
scoreboard players add @a[tag=shulker_recieved] do2.run.systems.clank.blocked 1

# AGRONET event
function do2:agronet/systems/clank_blocked
