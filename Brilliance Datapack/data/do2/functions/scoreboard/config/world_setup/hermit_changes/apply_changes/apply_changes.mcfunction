# Ran every 20 ticks, will only apply changes if $dungeon and $_dungeon doesn't match. (aka previous and current don't match)
execute unless score $dungeon do2.config.wc.leaderboardExists = $_dungeon do2.config.wc.leaderboardExists run function do2:scoreboard/config/world_setup/hermit_changes/apply_changes/leaderboard
execute unless score $dungeon do2.config.wc.museumExists = $_dungeon do2.config.wc.museumExists run function do2:scoreboard/config/world_setup/hermit_changes/apply_changes/museum
execute unless score $dungeon do2.config.wc.queueExists = $_dungeon do2.config.wc.queueExists run function do2:scoreboard/config/world_setup/hermit_changes/apply_changes/queue
execute unless score $dungeon do2.config.wc.hermitChangesExists = $_dungeon do2.config.wc.hermitChangesExists run function do2:scoreboard/config/world_setup/hermit_changes/apply_changes/hermit_changes
