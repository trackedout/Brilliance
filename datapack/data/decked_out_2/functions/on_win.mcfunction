# called when player dies in gauntlet (tag=won)

title @s title "You won Decked Out!"

scoreboard players add @s do.streak 1
scoreboard players add @s do.wins 1

tag @s remove do.won
execute as @s run function deckedout:end_run
