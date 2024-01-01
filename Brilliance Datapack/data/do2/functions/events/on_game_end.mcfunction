# called when no players are RUNNING the dungeon's instance. (all dead, all left)


# if player DIDN'T win, then it's a loss:
execute as @a unless entity @s[tag=do2.win] run function do2:events/on_player_loss

# AGRONET
function do2:agronet/game_end
