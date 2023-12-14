# If any player has the running tag, keep the clock ticking.
execute as @p[tag=do2.running] run scoreboard players add $dungeon do2.run.ticks 1
execute as @p[tag=do2.running, scores={do2.run.ticks=20}] run scoreboard players add @s do2.run.seconds 1
execute as @p[tag=do2.running, scores={do2.run.ticks=20}] run scoreboard players set @s do2.run.ticks 0
