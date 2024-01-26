# - Start Log -
execute as @a[scores={do2.logs.hazard=2..}] run tellraw @s ["",{"text":"[§9B§r]: Hazard Mechanism §b#43§r Activated. "},{"text":"§r(§b§o§nTeleport Me§r)","clickEvent":{"action":"suggest_command","value":"/tp @s -620 -51 1897"}}]
# - End Log -
function do2:events/systems/on_hazard_event
