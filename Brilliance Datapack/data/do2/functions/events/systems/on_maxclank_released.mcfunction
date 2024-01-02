# Called when MAX CLANK is reached

# update scoreboard
scoreboard players add $dungeon do2.run.systems.maxclank.released 1

# AGRONET event
function do2:agronet/systems/maxclank_released
