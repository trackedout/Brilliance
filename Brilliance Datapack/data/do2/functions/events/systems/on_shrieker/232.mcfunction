# - Start Log -
execute as @a[scores={do2.logs.clank=3..}] run tellraw @s ["",{"text":"§f[§9B§r]: Activated Shrieker §b#232 "},{"text":"§r(§b§o§nTeleeeeeeport Me§r)","clickEvent":{"action":"run_command","value":"/tp @s -569 9 1958"}}]
# - End Log -

# Agronet event
function do2:external/agronet/logs/clank/on_shrieker/232