# There should be FIVE level 2 ravagers.

# And there is 3 sets of Markers
# L2 - Level 1
# ZX - Zone X
# -
# L2Z1 = EAST Mushroom area
# L2Z2 = WEST Mushroom area
# L2Z3 = Lava area
# L3Z4 = Boardwalk room
# L2Z5 = Pearl's room
# -
# L2Z1 = 'Skadoodles'
# L2Z2 = 'Snausages'
# L2Z3 = 'big butts and I cannot lie'
# L2Z4 = 'Sir Fluffykins of the Dungeon'
# L2Z5 = 'Nugget'

execute as @e[type=ravager,tag=L2Z1] at @e[type=area_effect_cloud,tag=L2Z1,tag=no-zones,limit=1,sort=random] run tp @s ~ ~ ~
execute as @e[type=ravager,tag=L2Z2] at @e[type=area_effect_cloud,tag=L2Z1,tag=no-zones,limit=1,sort=random] run tp @s ~ ~ ~
execute as @e[type=ravager,tag=L2Z3] at @e[type=area_effect_cloud,tag=L2Z2,tag=no-zones,limit=1,sort=random] run tp @s ~ ~ ~
execute as @e[type=ravager,tag=L2Z4] at @e[type=area_effect_cloud,tag=L2Z2,tag=no-zones,limit=1,sort=random] run tp @s ~ ~ ~
execute as @e[type=ravager,tag=L2Z5] at @e[type=area_effect_cloud,tag=L2Z3,tag=no-zones,limit=1,sort=random] run tp @s ~ ~ ~
