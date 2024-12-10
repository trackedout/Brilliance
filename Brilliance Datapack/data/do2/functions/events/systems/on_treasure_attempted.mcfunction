# Ran when a Treasure Drop attempts the chance to send treasure to dungeon's droppers.
# - Start Log -
execute as @a[scores={do2.logs.treasure=2..}] run tellraw @s ["",{"text":"§f[§9B§r]: Attempted §eTreasure§r. "}]
# - End Log -

# update scoreboard
scoreboard players add @a[tag=do2.received_shulker] do2.run.systems.treasure.attempts 1
scoreboard players add @a[tag=do2.received_shulker] do2.systems.treasure.attempts 1
scoreboard players add $dungeon do2.run.systems.treasure.attempts 1
scoreboard players add $dungeon do2.systems.treasure.attempts 1
