# Ran when hazard is BLOCKED
# - Start Log -
execute as @a[scores={do2.logs.hazard=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Blocked §cHazard§r."}]
# - End Log -

# update scoreboard
scoreboard players add $dungeon do2.run.systems.hazard.blocked 1
scoreboard players add $dungeon do2.systems.hazard.blocked 1

# AGRONET event
function do2:agronet/systems/hazard_blocked
