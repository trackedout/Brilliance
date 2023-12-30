# There should be FIVE level 1 ravagers.

# So there is 5 sets of Markers
# L1 - Level 1
# ZX - Zone X
# -
# L1Z1 = beginning area
# L1Z2 = southern ice tunnels
# L1Z3 = northern ice tunnels
# L1Z4 = downstairs crypt
# L1Z5 = upstairs crypt
# -
# L1Z1 = 'Stumbles'
# L1Z1 = 'Laser Beams!'
# L1Z1 = 'Lasagna'
# L1Z4 = 'Hot Breath'
# L1Z5 = 'Mr. Poopy Head'



execute as @e[type=ravager,tag=L1Z1] at @e[type=area_effect_cloud,tag=L1Z1,tag=no-zones,limit=1,sort=random] run tp @s ~ ~ ~
execute as @e[type=ravager,tag=L1Z2] at @e[type=area_effect_cloud,tag=L1Z2,tag=no-zones,limit=1,sort=random] run tp @s ~ ~ ~
execute as @e[type=ravager,tag=L1Z3] at @e[type=area_effect_cloud,tag=L1Z3,tag=no-zones,limit=1,sort=random] run tp @s ~ ~ ~
execute as @e[type=ravager,tag=L1Z4] at @e[type=area_effect_cloud,tag=L1Z4,tag=no-zones,limit=1,sort=random] run tp @s ~ ~ ~
execute as @e[type=ravager,tag=L1Z5] at @e[type=area_effect_cloud,tag=L1Z5,tag=no-zones,limit=1,sort=random] run tp @s ~ ~ ~
