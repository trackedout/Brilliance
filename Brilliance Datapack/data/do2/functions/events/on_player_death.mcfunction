# called when player dies. (BUT MIGHT HAVE WON)

# - Start Log -
tag @s add dyingLogTarget
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=dyingLogTarget]"},{"text":" died."}]
tag @s add dyingLogTarget
# - End Log -

# store run time when player dies
scoreboard players operation @s do2.run.seconds = $dungeon do2.run.seconds

# player no longer running
tag @s remove do2.running

# increase the amount of player deaths
scoreboard players add $dungeon do2.run.player_deaths 1
