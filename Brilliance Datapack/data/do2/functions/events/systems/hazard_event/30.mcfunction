# - Start Log -
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: Hazard Mechanism §b#30§rActivated. "}},{"text":"§r(§b§o§nTeleport Me§r)","clickEvent":{"action":"run_command","value":"/tp @s -498 10 1947"}}]
# - End Log -
function do2:events/systems/on_hazard_event