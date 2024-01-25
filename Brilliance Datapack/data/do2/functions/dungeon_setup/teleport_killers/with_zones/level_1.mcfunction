# There should be FIVE level 1 ravagers.

# And there is 3 sets of Markers
# L1 - Level 1
# ZX - Zone X
# -
# L1Z1 = beginning area + southern ice tunnels
# L1Z2 = northern ice tunnels + downstairs crypt
# L1Z3 = upstairs crypt
# -
# L1Z1 = 'Stumbles' & 'Laser Beams!'
# L1Z2 = 'Lasagna' & 'Hot Breath'
# L1Z3 = 'Mr. Poopy Head'

execute as @e[type=ravager,tag=L1Z1] at @e[type=area_effect_cloud,tag=L1Z1,tag=with-zones,limit=1,sort=random] run tp @s ~ ~1 ~
execute as @e[type=ravager,tag=L1Z2] at @e[type=area_effect_cloud,tag=L1Z1,tag=with-zones,limit=1,sort=random] run tp @s ~ ~1 ~
execute as @e[type=ravager,tag=L1Z3] at @e[type=area_effect_cloud,tag=L1Z2,tag=with-zones,limit=1,sort=random] run tp @s ~ ~1 ~
execute as @e[type=ravager,tag=L1Z4] at @e[type=area_effect_cloud,tag=L1Z2,tag=with-zones,limit=1,sort=random] run tp @s ~ ~1 ~
execute as @e[type=ravager,tag=L1Z5] at @e[type=area_effect_cloud,tag=L1Z3,tag=with-zones,limit=1,sort=random] run tp @s ~ ~1 ~
