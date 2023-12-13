# called from either 'on_win' or 'on_lose'

scoreboard players set @s do.run.ticks 0
scoreboard players set @s do.run.seconds 0

scoreboard players add @s do.total_runs 1

tag @s remove do.running