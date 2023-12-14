# Clock timer for dungeon.
scoreboard players add $dungeon do2.run.ticks 1
scoreboard players add $dungeon do2.run.seconds 1
scoreboard players set $dungeon do2.run.ticks 0

# AFK timer
execute as @p[tag=do.running] run scoreboard players set $dungeon do.run.empty_time 0
scoreboard players add $dungeon do.run.empty_time 1
