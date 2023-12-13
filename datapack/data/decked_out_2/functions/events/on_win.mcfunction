# called when player dies in gauntlet (tag=won)

title @s title "You won Decked Out!"

scoreboard players add @s do2.streak 1
scoreboard players add @s do2.wins 1

tag @s remove do2.won
execute as @s run function do2:end_run
