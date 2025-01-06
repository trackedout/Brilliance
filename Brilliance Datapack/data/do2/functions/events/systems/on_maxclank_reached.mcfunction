# Called when MAX CLANK is reached
# - Start Log -
execute as @a[scores={do2.logs.clank=1..}] run tellraw @s ["",{"text":"[§9B§r]: Reached Max §8Clank§r."}]
# - End Log -

# Update scoreboard
scoreboard players add @a[tag=do2.received_shulker] do2.run.systems.maxclank.released 1
scoreboard players add @a[tag=do2.received_shulker] do2.systems.maxclank.released 1
scoreboard players add $dungeon do2.run.systems.maxclank.released 1
scoreboard players add $dungeon do2.systems.maxclank.released 1

# Apply maxClankBerries config block placements
execute if score $dungeon do2.config.maxClankBerries matches 0 run function do2:scoreboard/config/max_clank_berries/once_suppress_berries