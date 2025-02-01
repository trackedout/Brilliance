# Called when a treasure dropper is activated.
# - Start Log -
execute as @a[scores={do2.logs.treasure=3..}] run tellraw @s ["",{"text":"§f[§9B§r]: Dropped §eTreasure§r."}]
# - End Log -

# Agronet event
function do2:external/agronet/logs/treasure/treasure_dropped