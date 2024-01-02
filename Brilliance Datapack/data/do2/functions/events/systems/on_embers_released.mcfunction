# Ran when Frost Embers is released into the dungeon.
# Todo: differentiate NATURAL vs CARD drops.

# update scoreboard
scoreboard players add $dungeon do2.run.systems.embers.released 1

# AGRONET event
function do2:agronet/systems/embers_released
