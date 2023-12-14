# called when player dies.

# store run time when player dies
scoreboard players operation @s do.run.seconds = $dungeon do.run.seconds

# increase total dungeon deaths by 1.
scoreboard players add $dungeon do.run.deaths 1
