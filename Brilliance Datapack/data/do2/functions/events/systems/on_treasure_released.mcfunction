# Called when treasure is removed from queue to drop in the dungeon.
# - Start Log -
execute as @a[scores={do2.logs.treasure=1..}] run tellraw @s ["",{"text":"[§9B§r]: Treasure Released. "}]
# - End Log -

# update scoreboard
scoreboard players add $dungeon do2.run.systems.treasure.released 1

# AGRONET event
function do2:agronet/systems/treasure_released
