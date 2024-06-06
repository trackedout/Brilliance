# Called when Frost Embers is removed from queue to drop in the dungeon, and is successful in sending to the dungeon's droppers.
# - Start Log -
execute as @a[scores={do2.logs.embers=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Released §3Frost Embers§r."}]
# - End Log -

# update scoreboard
scoreboard players add @a[tag=do2.received_shulker] do2.run.systems.embers.released 1
scoreboard players add @a[tag=do2.received_shulker] do2.systems.embers.released 1
scoreboard players add $dungeon do2.run.systems.embers.released 1
scoreboard players add $dungeon do2.systems.embers.released 1

# AGRONET event
function do2:agronet/systems/embers_released
