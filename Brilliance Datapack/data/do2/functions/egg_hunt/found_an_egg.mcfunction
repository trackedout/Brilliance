
# Occurs whenever an easter egg is found.

# Grant any find an egg advancement.
advancement grant @s only do2:hidden/adventuring/find_a_egg
advancement grant @s only do2:hidden/adventuring/egg_hunt/level_1/1st_level_show
advancement grant @s only do2:hidden/adventuring/egg_hunt/level_1/2nd_level_show
advancement grant @s only do2:hidden/adventuring/egg_hunt/level_1/3rdd_level_show

# Grant "find all eggs advancement."
execute as @s[advancements={do2:hidden/egg_hunt/eggs/bdoubleo=true,do2:hidden/egg_hunt/eggs/cubfan=true,do2:hidden/egg_hunt/eggs/docm77=true,do2:hidden/egg_hunt/eggs/false=true,do2:hidden/egg_hunt/eggs/golden=true,do2:hidden/egg_hunt/eggs/scar=true,do2:hidden/egg_hunt/eggs/grian=true,do2:hidden/egg_hunt/eggs/hypno=true,do2:hidden/egg_hunt/eggs/ijevin=true,do2:hidden/egg_hunt/eggs/impulse=true,do2:hidden/egg_hunt/eggs/iskall=true,do2:hidden/egg_hunt/eggs/joehills=true,do2:hidden/egg_hunt/eggs/pearlescent_moon=true,do2:hidden/egg_hunt/eggs/stress=true,do2:hidden/egg_hunt/eggs/vintage_beef=true,do2:hidden/egg_hunt/eggs/welsknight=true,do2:hidden/egg_hunt/eggs/xbcrafted=true,do2:hidden/egg_hunt/eggs/xisuma=true,do2:hidden/egg_hunt/eggs/zedaph=true,do2:hidden/egg_hunt/eggs/zombie_cleo=true}] run advancement grant @s only do2:hidden/egg_hunt/egg_hunter
