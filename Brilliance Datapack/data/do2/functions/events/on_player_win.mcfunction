# called when player dies in gauntlet (tag=won)
title @s title "You won Decked Out!" 
# temp for debugging (maybe)

# handle global stats
scoreboard players add @s do2.streak 1
scoreboard players add @s do2.wins 1

# clean up tags
tag @s remove do2.won

execute as @s run function do2:events/on_player_death
