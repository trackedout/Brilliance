# Ran when Frost Embers is released into the dungeon.
# Todo: differentiate NATURAL vs CARD drops.
# - Start Log -
execute as @a[scores={do2.logs.embers=1..}] run tellraw @s ["",{"text":"[§9B§r]: Frost Embers dropped. "}]
# - End Log -

# update scoreboard
scoreboard players add $dungeon do2.run.systems.embers.released 1

# AGRONET event
function do2:agronet/systems/embers_released
