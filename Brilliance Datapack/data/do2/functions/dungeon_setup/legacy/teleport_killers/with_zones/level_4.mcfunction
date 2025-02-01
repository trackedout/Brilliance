# There should be THREE level 4 wardens.

# And there is 3 sets of Markers
# L1 - Level 1
# ZX - Zone X
# -
# L1Z1 = Floor 1
# L1Z2 = Floor 2
# L1Z3 = Floor 3

execute as @e[type=warden,tag=L4Z1] at @e[type=marker,tag=L4Z1,tag=with-zones,limit=1,sort=random] run tp @s ~ ~1 ~
execute as @e[type=warden,tag=L4Z2] at @e[type=marker,tag=L4Z2,tag=with-zones,limit=1,sort=random] run tp @s ~ ~1 ~
execute as @e[type=warden,tag=L4Z3] at @e[type=marker,tag=L4Z3,tag=with-zones,limit=1,sort=random] run tp @s ~ ~1 ~
