# Called when MAX CLANK is reached
# - Start Log -
execute as @a[scores={do2.logs.clank=1..}] run tellraw @s ["",{"text":"[§9B§r]: Reached Max §8Clank§r."}]
# - End Log -

# update scoreboard
scoreboard players add @a[tag=do2.received_shulker] do2.run.systems.maxclank.released 1
scoreboard players add @a[tag=do2.received_shulker] do2.systems.maxclank.released 1
scoreboard players add $dungeon do2.run.systems.maxclank.released 1
scoreboard players add $dungeon do2.systems.maxclank.released 1

execute as @e[type=minecraft:warden] if score warden anger < max_clank_min anger run data modify entity @s anger.suspects[0].anger set value 79
