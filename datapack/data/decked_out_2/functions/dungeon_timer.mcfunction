execute as @a[tag=do.running] run scoreboard players add @s do.run.ticks 1
execute as @a[tag=do.running, scores={do.run.ticks=20}] run scoreboard players add @s do.run.seconds 1
execute as @a[tag=do.running, scores={do.run.ticks=20}] run scoreboard players set @s do.run.ticks 0
