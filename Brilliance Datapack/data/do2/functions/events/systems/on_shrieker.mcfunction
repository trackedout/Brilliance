# Called an shrieker activates
# - Start Log -
execute as @a[scores={do2.logs.clank=3..}] run tellraw @s ["",{"text":"§f[§9B§r]: Activated Shrieker. "}]
# - End Log -

# Agronet event
function do2:external/agronet/logs/clank/on_shrieker