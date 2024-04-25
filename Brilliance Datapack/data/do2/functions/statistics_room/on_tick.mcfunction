# If no player exists in statistics area, reset the screen
execute unless entity @a[x=-507,dx=16,y=118,dy=10,z=1987,dz=8] run function do2:statistics_room/swap_to_screen_0

# Kill stats while player isn't near the stats.
execute unless entity @a[x=-507,dx=16,y=118,dy=10,z=1987,dz=8] run kill @e[tag=do2.statistics_room]

# Don't allow spawning stats display unless player nearby
execute unless entity @a[x=-507,dx=16,y=118,dy=10,z=1987,dz=8] run return 0

# Eventually able to swap tabs of stats
execute if score $dungeon do2.utility.statsScreen matches 0 unless entity @e[tag=do2.stats.general] run function do2:statistics_room/summon_general
execute if score $dungeon do2.utility.statsScreen matches 1 unless entity @e[tag=do2.stats.treasures] run function do2:statistics_room/summon_treasures
execute if score $dungeon do2.utility.statsScreen matches 2 unless entity @e[tag=do2.stats.embers] run function do2:statistics_room/summon_frost_embers
