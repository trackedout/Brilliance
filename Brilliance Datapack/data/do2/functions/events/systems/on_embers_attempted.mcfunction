# Ran when a Frost Embers drop attempts the chance to send embers to dungeon's droppers.
# - Start Log -
execute as @a[scores={do2.logs.embers=2..}] run tellraw @s ["",{"text":"[§9B§r]: Frost Embers attempted. "}]
# - End Log -
