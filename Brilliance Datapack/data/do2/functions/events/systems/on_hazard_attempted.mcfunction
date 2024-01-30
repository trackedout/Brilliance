# Ran when a Hazard attempts the chance to send hazard to dungeon's events.
# - Start Log -
execute as @a[scores={do2.logs.hazard=3..}] run tellraw @s ["",{"text":"[§9B§r]: Hazard attempted. "}]
# - End Log -
