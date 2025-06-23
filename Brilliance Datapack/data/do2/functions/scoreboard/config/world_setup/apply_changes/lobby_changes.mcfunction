# Functions
execute if score $dungeon do2.config.wc.lobbyChangesExists matches 1 run function do2:scoreboard/config/world_setup/apply_changes/lobby_changes_returned
execute if score $dungeon do2.config.wc.lobbyChangesExists matches 0 run function do2:scoreboard/config/world_setup/apply_changes/lobby_changes_removed
# Set $_dungeon to the same as $dungeon
scoreboard players operation $_dungeon do2.config.wc.lobbyChangesExists = $dungeon do2.config.wc.lobbyChangesExists
