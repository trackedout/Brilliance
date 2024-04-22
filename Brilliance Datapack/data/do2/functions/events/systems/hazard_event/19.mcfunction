# - Start Log -
execute as @a[scores={do2.logs.hazard=2..}] run tellraw @s ["",{"text":"§f[§9B§r]: §cHazard§r Mechanism §b#19§r Activated. "},{"text":"§r(§b§o§nTeleport Me§r)","clickEvent":{"action":"run_command","value":"/tp @s -562 47 2014"}}]
# - End Log -
function do2:events/systems/on_hazard_event
