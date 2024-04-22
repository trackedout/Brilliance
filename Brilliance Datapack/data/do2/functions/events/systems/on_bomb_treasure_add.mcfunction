# Called treasure loot is added to the bomb's loot pool.
# - Start Log -
execute as @a[scores={do2.logs.treasure=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Bomb Pool, Added §eTreasure§r."}]
# - End Log -
