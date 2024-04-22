# Triggers upon an artifact being submitted

# Todo:
# maybe run this multiple times so player has to actually LEAVE dungeon to win,
# instead of waiting for someone to submit artifact then dying.
# atm, this makes all NOT-DEAD players win.
# This could mean a player is a winner but still die in the dungeon.
execute as @a[team=do2.players] run function do2:events/on_player_win
