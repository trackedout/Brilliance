# - Start Log -
execute as @a[scores={do2.logs.clank=3..}] run tellraw @s ["",{"text":"§f[§9B§r]: Activated Shrieker §b#122 "},{"text":"§r(§b§o§nTeleport Me§r)","clickEvent":{"action":"run_command","value":"/tp @s -565 46 1986"}}]
# - End Log -

# Agronet event
function do2:external/agronet/logs/clank/on_shrieker/122