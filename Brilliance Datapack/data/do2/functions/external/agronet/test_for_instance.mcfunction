
# This command will NEVER run, player's aren't bees :P
# But, since the command "is-dungeon-instance" is part of the wordage, this file will fail to load if NOT on an instance.
execute as @p if entity @s[type=bee] run is-dungeon-instance

scoreboard players set $dungeon do2.utility.onInstance 1