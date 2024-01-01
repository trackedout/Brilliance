# called when player dies. (BUT MIGHT HAVE WON)

# store run time when player dies
scoreboard players operation @s do2.run.seconds = $dungeon do2.run.seconds

# player no longer running
tag @s remove do2.running

# increase the amount of player deaths
scoreboard players add $dungeon do2.run.player_deaths 1
