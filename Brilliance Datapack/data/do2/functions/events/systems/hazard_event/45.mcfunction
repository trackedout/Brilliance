# - Start Log -
execute as @a[scores={do2.logs.hazard=2..}] run tellraw @s ["",{"text":"[§9B§r]: §cHazard§r Mechanism §b#45§r Activated. "},{"text":"§r(§b§o§nTeleport Me§r)","clickEvent":{"action":"run_command","value":"/tp @s -630 -54 1872"}}]
# - End Log -
function do2:events/systems/on_hazard_event

# Agronet event
function do2:external/agronet/logs/hazard/45