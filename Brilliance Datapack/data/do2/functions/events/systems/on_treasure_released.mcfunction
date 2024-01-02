# Called when treasure is removed from queue to drop in the dungeon.

# update scoreboard
scoreboard players add $dungeon do2.run.systems.treasure.released 1

# AGRONET event
function do2:agronet/systems/treasure_released
