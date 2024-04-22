# - Start Log -
execute as @a[scores={do2.logs.hazard=2..}] run tellraw @s ["",{"text":"§f[§9B§r]: §cHazard§r Mechanism §b#42§r Activated. "},{"text":"§r(§b§o§nTeleport Me§r)","clickEvent":{"action":"run_command","value":"/tp @s -581 -53 1891"}}]
# - End Log -
function do2:events/systems/on_hazard_event
