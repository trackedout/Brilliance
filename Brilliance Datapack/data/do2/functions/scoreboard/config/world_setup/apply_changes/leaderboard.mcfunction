# Add it back
execute if score $dungeon do2.config.wc.leaderboardExists matches 1 run place template do2:world_setup/leaderboard_default -534 113 1965
# Remove it.
execute if score $dungeon do2.config.wc.leaderboardExists matches 0 run place template do2:world_setup/leaderboard_removed -534 113 1965

# Set $_dungeon to the same as $dungeon
scoreboard players operation $_dungeon do2.config.wc.leaderboardExists = $dungeon do2.config.wc.leaderboardExists
