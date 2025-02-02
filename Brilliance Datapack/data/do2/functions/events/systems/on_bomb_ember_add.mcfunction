# Called ember loot is added to the bomb's loot pool.
# - Start Log -
execute as @a[scores={do2.logs.embers=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Bomb Pool, Added §bFrost Ember§r."}]
# - End Log -

# Agronet event
function do2:external/agronet/logs/embers/on_bomb_ember_add