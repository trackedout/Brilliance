# - Start Log -
execute as @a[scores={do2.logs.hazard=2..}] run tellraw @s ["",{"text":"§f[§9B§r]: §cHazard§r Mechanism §b#15§r Activated. "},{"text":"§r(§b§o§nTeleport Me§r)","clickEvent":{"action":"run_command","value":"/tp @s -608 40 2003"}}]
# - End Log -
function do2:events/systems/on_hazard_event
