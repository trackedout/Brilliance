# Clock timer for dungeon.
scoreboard players add $dungeon do2.run.ticks 1
execute if score $dungeon do2.run.ticks matches 20 run scoreboard players add $dungeon do2.run.seconds 1
execute if score $dungeon do2.run.ticks matches 20 run scoreboard players set $dungeon do2.run.ticks 0

# AFK timer
execute as @p[tag=do2.running] run scoreboard players set $dungeon do2.run.empty_time 0
scoreboard players add $dungeon do2.run.empty_time 1
