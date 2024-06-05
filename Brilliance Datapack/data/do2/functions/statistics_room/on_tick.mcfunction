# check if player exists in statistics room.
tag @a remove do2.inStatsRoom
execute as @a[x=-507,dx=16,y=118,dy=10,z=1986,dz=10] run tag @s add do2.inStatsRoom

# If no player exists in statistics area, reset the screen
execute unless entity @a[tag=do2.inStatsRoom] run function do2:statistics_room/swap_to_screen_0

# Kill stats while player isn't near the stats.
execute unless entity @a[tag=do2.inStatsRoom] run kill @e[tag=do2.statistics_room]

# Don't allow spawning stats display unless player nearby
execute unless entity @a[tag=do2.inStatsRoom] run return 0

# Eventually able to swap tabs of stats
execute if score $dungeon do2.utility.statsScreen matches 0 run function do2:statistics_room/summon_general
execute if score $dungeon do2.utility.statsScreen matches 1 run function do2:statistics_room/summon_treasures
execute if score $dungeon do2.utility.statsScreen matches 2 run function do2:statistics_room/summon_runs
execute if score $dungeon do2.utility.statsScreen matches 3 run function do2:statistics_room/summon_last_run
execute if score $dungeon do2.utility.statsScreen matches 5 run function do2:statistics_room/summon_spoilers
