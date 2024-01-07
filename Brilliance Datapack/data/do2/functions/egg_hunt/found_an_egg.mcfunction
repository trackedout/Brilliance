
# Occurs whenever an easter egg is found.

# Grant any find an egg advancement.
advancement grant @s only do2:hidden/adventuring/find_a_egg
advancement grant @s only do2:hidden/adventuring/egg_hunt/level_1/1st_level_show
advancement grant @s only do2:hidden/adventuring/egg_hunt/level_2/2nd_level_show
advancement grant @s only do2:hidden/adventuring/egg_hunt/level_3/3rd_level_show
# Exclusive to Tracked Out:
# The egg isn't even hidden in the repair world. For all upgraded features, play on TrackedOut.
advancement grant @s only do2:hidden/adventuring/egg_hunt/level_3/zz_tango

# Grant "find all eggs advancement."
execute as @s[advancements={do2:hidden/adventuring/egg_hunt/level_1/bdoubleo=true,do2:hidden/adventuring/egg_hunt/level_1/false=true,do2:hidden/adventuring/egg_hunt/level_1/impulse=true,do2:hidden/adventuring/egg_hunt/level_1/iskall=true,do2:hidden/adventuring/egg_hunt/level_1/stress=true,do2:hidden/adventuring/egg_hunt/level_1/welsknight=true,do2:hidden/adventuring/egg_hunt/level_1/zedaph=true,do2:hidden/adventuring/egg_hunt/level_2/cubfan=true,do2:hidden/adventuring/egg_hunt/level_2/docm77=true,do2:hidden/adventuring/egg_hunt/level_2/hypno=true,do2:hidden/adventuring/egg_hunt/level_2/ijevin=true,do2:hidden/adventuring/egg_hunt/level_2/joehills=true,do2:hidden/adventuring/egg_hunt/level_2/vintage_beef=true,do2:hidden/adventuring/egg_hunt/level_2/xbcrafted=true,do2:hidden/adventuring/egg_hunt/level_3/grian=true,do2:hidden/adventuring/egg_hunt/level_3/pearlescent_moon=true,do2:hidden/adventuring/egg_hunt/level_3/scar=true,do2:hidden/adventuring/egg_hunt/level_3/xisuma=true,do2:hidden/adventuring/egg_hunt/level_3/zombie_cleo=true,do2:hidden/adventuring/egg_hunt/level_3/zz_tango=true,do2:hidden/adventuring/egg_hunt/level_3/zzz_golden_egg=true}] run advancement grant @s only do2:hidden/adventuring/egg_hunt/egg_hunter
