# Called when a treasure dropper is activated.
# - Start Log -
execute as @a[scores={do2.logs.treasure=3..}] run tellraw @s ["",{"text":"[§9B§r]: Treasure Dropped. "}]
# - End Log -
