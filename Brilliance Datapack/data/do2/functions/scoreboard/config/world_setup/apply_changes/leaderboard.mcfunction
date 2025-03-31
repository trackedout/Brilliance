# Add it back
execute if score $dungeon do2.config.wc.leaderboardExists matches 1 run place template do2:world_setup/leaderboard_default -534 113 1965
# Remove it.
execute if score $dungeon do2.config.wc.leaderboardExists matches 0 run place template do2:world_setup/leaderboard_removed -534 113 1965
execute if score $dungeon do2.config.wc.leaderboardExists matches 0 run kill @e[x=-534,dx=21,y=113,dy=13,z=1965,dz=10,type=!player]


# Set $_dungeon to the same as $dungeon
scoreboard players operation $_dungeon do2.config.wc.leaderboardExists = $dungeon do2.config.wc.leaderboardExists
