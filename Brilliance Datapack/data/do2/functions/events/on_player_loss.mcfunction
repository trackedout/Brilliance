# called when player died but DIDN'T win


# store run time when player dies
scoreboard players operation @s do2.run.seconds = $dungeon do2.run.seconds

# player no longer running
tag @s remove do2.running

#Note that they died.
scoreboard players add @s do2.deaths 1
scoreboard players set @s do2.streak 0
