# Called ember loot is added to the bomb's loot pool.
# - Start Log -
execute as @a[scores={do2.logs.embers=1..}] run tellraw @s ["",{"text":"[§9B§r]: Bomb Pool, Added §bFrost Ember§r."}]
# - End Log -
