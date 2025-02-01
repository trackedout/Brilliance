# Called treasure loot is added to the bomb's loot pool.
# - Start Log -
execute as @a[scores={do2.logs.treasure=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Bomb Pool, Added §eTreasure§r."}]
# - End Log -

# Agronet event
function do2:external/agronet/logs/treasure/on_bomb_treasure_add