# Called when treasure is removed from queue to drop in the dungeon.
# - Start Log -
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: Evoker Activated. "}]
# - End Log -

#TODO: Not every evoker has this