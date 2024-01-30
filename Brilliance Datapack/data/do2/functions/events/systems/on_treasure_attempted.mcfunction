# Ran when a Treasure Drop attempts the chance to send treasure to dungeon's droppers.
# - Start Log -
execute as @a[scores={do2.logs.treasure=2..}] run tellraw @s ["",{"text":"[§9B§r]: Attempted §eTreasure§r. "}]
# - End Log -
