# Ran when a Frost Embers drop attempts the chance to send embers to dungeon's droppers.
# - Start Log -
execute as @a[scores={do2.logs.embers=2..}] run tellraw @s ["",{"text":"§f[§9B§r]: Attempted §3Frost Embers§r."}]
# - End Log -

# update scoreboard
scoreboard players add @a[tag=do2.received_shulker] do2.run.systems.embers.attempts 1
scoreboard players add @a[tag=do2.received_shulker] do2.systems.embers.attempts 1
scoreboard players add $dungeon do2.run.systems.embers.attempts 1
scoreboard players add $dungeon do2.systems.embers.attempts 1

# Agronet event
function do2:external/agronet/logs/embers/on_embers_attempted