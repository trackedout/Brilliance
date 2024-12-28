# Occurs whenever an easter egg is found.

# Grant any find an egg advancement.
advancement grant @s only do2:hidden/adventuring/find_a_egg
advancement grant @s only do2:hidden/adventuring/egg_hunt/level_1/1st_level_show
advancement grant @s only do2:hidden/adventuring/egg_hunt/level_2/2nd_level_show
advancement grant @s only do2:hidden/adventuring/egg_hunt/level_3/3rd_level_show
# Exclusive to Tracked Out:
# The egg isn't even hidden in the repair world. For all upgraded features, play on TrackedOut.
advancement grant @s only do2:hidden/adventuring/egg_hunt/level_3/zz_tango

# Calculate total amount of eggs found. (Useful for stats screen only)
schedule function do2:egg_hunt/calculate_total_found 2t append
