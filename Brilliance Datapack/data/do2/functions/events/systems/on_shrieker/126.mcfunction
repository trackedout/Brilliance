# - Start Log -
execute as @a[scores={do2.logs.clank=3..}] run tellraw @s ["",{"text":"§f[§9B§r]: Activated Shrieker §b#126 "},{"text":"§r(§b§o§nTeleeport Me§r)","clickEvent":{"action":"run_command","value":"/tp @s -621 43 2001"}}]
# - End Log -

# Agronet event
function do2:external/agronet/logs/clank/on_shrieker/126