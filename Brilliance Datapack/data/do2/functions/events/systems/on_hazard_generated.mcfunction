# Called when hazard is added to the queue.
# - Start Log -
execute as @a[scores={do2.logs.hazard=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Generated §cHazard§r."}]
# - End Log -

# update scoreboard
scoreboard players add $dungeon do2.run.systems.hazard.generated 1
scoreboard players add $dungeon do2.systems.hazard.generated 1

# AGRONET event
function do2:agronet/systems/hazard_generated
