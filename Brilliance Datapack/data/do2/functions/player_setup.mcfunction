# RESET player's scoreboards
# and do what ever need to set player up for a game


# - RESET GENERAL -
scoreboard players set @s do2.run.ticks 0
scoreboard players set @s do2.run.seconds 0
scoreboard players set @s do2.run.foundArtifact 0
scoreboard players set @s do2.run.active 0
scoreboard players set @s do2.run.empty 0
scoreboard players set @s do2.run.tnt_dive 0
scoreboard players set @s do2.run.has_won 0

function do2:scoreboard/per_run
