
# This command will NEVER run, player's aren't bees :P
# But, since the command "log-event" is part of the wordage, this file will fail to load if NOT on the server.
execute as @p if entity @s[type=bee] run log-event game-started

scoreboard players set $dungeon do2.utility.onServer 1
