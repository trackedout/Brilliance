# Todo:
# maybe run this multiple times so player has to actually LEAVE dungeon to win,
# instead of waiting for someone to submit artifact then dying.
# atm, this makes all NOT-DEAD players win.
execute as @a[tag=do2.running] run function do2:events/on_player_win
