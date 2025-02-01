# called when player dies. (BUT MIGHT HAVE WON)

# - Start Log -
tag @s add dyingLogTarget
execute as @a[scores={do2.logs.spam=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: "},{"selector":"@p[tag=dyingLogTarget]"},{"text":" died."}]
tag @s remove dyingLogTarget
# - End Log -

# store run time when player dies
scoreboard players operation @s do2.run.seconds = $dungeon do2.run.seconds

# join the ghosts
team join do2.ghosts @s
execute if score $dungeon do2.config.forceGamemode matches 1 unless entity @s[tag=do2.staff] run gamemode spectator
execute if score $dungeon do2.config.forceGamemode matches 1 if entity @s[tag=do2.staff] run tellraw @s ["",{"text":"§f[§9B§r]: You have the tag [§bdo2.staff§r], and this has stopped:\n - §5gamemode spectator "},{"selector":"@s","color":"dark_purple"},{"text":"\n§f[§9B§r]: Click "},{"text":"§b[here]","clickEvent":{"action":"run_command","value":"/gamemode spectator @s"}},{"text":" to run the command anyway."}]

# player no longer running
tag @s remove do2.running

# increase the amount of player deaths
scoreboard players add $dungeon do2.run.player_deaths 1

# Agronet event
function do2:external/agronet/logs/spam/on_player_death