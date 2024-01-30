# Ran when hazard is BLOCKED
# - Start Log -
execute as @a[scores={do2.logs.blockage=1..}] run tellraw @s ["",{"text":"[§9B§r]: Blocked §cHazard§r."}]
# - End Log -

# update scoreboard
scoreboard players add @a[tag=shulker_received] do2.run.systems.hazard.blocked 1

# AGRONET event
function do2:agronet/systems/hazard_blocked
