# called when player dies.

# do2.run.dead is DIFFERENT than do2.deaths
scoreboard players set @s do2.run.dead 1

# if player DIDN'T die, then it's a loss:
execute unless entity @s[tag=do2.win] run function do2:events/on_player_loss
