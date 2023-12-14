execute as @a[tag=do2.running] run scoreboard players add @s do2.run.ticks 1
execute as @a[tag=do2.running, scores={do2.run.ticks=20}] run scoreboard players add @s do2.run.seconds 1
execute as @a[tag=do2.running, scores={do2.run.ticks=20}] run scoreboard players set @s do2.run.ticks 0
