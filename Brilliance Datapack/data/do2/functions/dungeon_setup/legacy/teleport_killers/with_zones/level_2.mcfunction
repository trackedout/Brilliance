# There should be FIVE level 2 ravagers.

# And there is 3 sets of Markers
# L2 - Level 1
# ZX - Zone X
# -
# L2Z1 = Mushroom area
# L2Z2 = Lava area + Boardwalk room
# L2Z3 = Pearl's room
# -
# L2Z1 = 'Snausages' & 'Skadoodles'
# L2Z2 = 'big butts and I cannot lie' & 'Sir Fluffykins of the Dungeon'
# L2Z3 = 'Nugget'

execute as @e[type=ravager,tag=L2Z1] at @e[type=marker,tag=L2Z1,tag=with-zones,limit=1,sort=random] run tp @s ~ ~1 ~
execute as @e[type=ravager,tag=L2Z2] at @e[type=marker,tag=L2Z1,tag=with-zones,limit=1,sort=random] run tp @s ~ ~1 ~
execute as @e[type=ravager,tag=L2Z3] at @e[type=marker,tag=L2Z2,tag=with-zones,limit=1,sort=random] run tp @s ~ ~1 ~
execute as @e[type=ravager,tag=L2Z4] at @e[type=marker,tag=L2Z2,tag=with-zones,limit=1,sort=random] run tp @s ~ ~1 ~
execute as @e[type=ravager,tag=L2Z5] at @e[type=marker,tag=L2Z3,tag=with-zones,limit=1,sort=random] run tp @s ~ ~1 ~
execute as @e[type=drowned,tag=L2WILLIE] at @e[type=marker,tag=L2WILLIE,tag=no-zones,limit=1,sort=random] run tp @s ~ ~1 ~
execute as @e[type=endermite,tag=L2MITE1] run tp @s -546 6 2016
execute as @e[type=endermite,tag=L2MITE2] run tp @s -546 6 2016
execute as @e[type=endermite,tag=L2MITE3] run tp @s -546 6 2016
execute as @e[type=endermite,tag=L2MITE4] run tp @s -546 6 2016
execute as @e[type=endermite,tag=L2MITE5] run tp @s -546 6 2016
execute as @e[type=endermite,tag=L2MITE6] run tp @s -546 6 2016
