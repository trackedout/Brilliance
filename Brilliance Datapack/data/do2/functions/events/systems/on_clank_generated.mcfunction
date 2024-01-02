# Ran when clank is GENERATED
# Todo: differentiate PLAYER vs CARD clank (maybe)

# update scoreboard
scoreboard players add $dungeon do2.run.systems.clank.generated 1

# AGRONET event
function do2:agronet/systems/clank_generated
