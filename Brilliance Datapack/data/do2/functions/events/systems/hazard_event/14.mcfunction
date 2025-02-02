# - Start Log -
execute as @a[scores={do2.logs.hazard=2..}] run tellraw @s ["",{"text":"[§9B§r]: §cHazard§r Mechanism §b#14§r Activated. "},{"text":"§r(§b§o§nTeleport Me§r)","clickEvent":{"action":"run_command","value":"/tp @s -613 41 1996"}}]
# - End Log -
function do2:events/systems/on_hazard_event

# Agronet event
function do2:external/agronet/logs/hazard/14