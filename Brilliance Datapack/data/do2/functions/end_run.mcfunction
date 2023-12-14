# called from either 'on_win' or 'on_lose'

scoreboard players set @s do2.run.ticks 0
scoreboard players set @s do2.run.seconds 0

scoreboard players add @s do2.total_runs 1

tag @s remove do2.running
