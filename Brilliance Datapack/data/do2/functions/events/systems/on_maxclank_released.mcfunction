# Called when MAX CLANK is reached
# - Start Log -
execute as @a[scores={do2.utility.logLevel=1..}] run tellraw @s ["",{"text":"[§9B§r]: Max Clank Reached. "}]
# - End Log -

# update scoreboard
scoreboard players add $dungeon do2.run.systems.maxclank.released 1

# AGRONET event
function do2:agronet/systems/maxclank_released
