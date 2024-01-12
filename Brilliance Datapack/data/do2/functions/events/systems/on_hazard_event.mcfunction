# Called when a HAZARD location is turned on.
# - Start Log -
execute as @a[scores={do2.utility.logLevel=1..}] run tellraw @s ["",{"text":"[§9B§r]: Hazard Activated."}]
# - End Log -

scoreboard players add $dungeon do2.run.systems.hazard.activated

# AGRONET EVENT
function do2:agronet/systems/hazard_event
