# - Start Log -
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: Hazard Mechanism §b#4§rActivated. "}},{"text":"§r(§b§o§nTeleport Me§r)","clickEvent":{"action":"run_command","value":"/tp @s -557 45 1961"}}]
# - End Log -
function do2:events/systems/on_hazard_event