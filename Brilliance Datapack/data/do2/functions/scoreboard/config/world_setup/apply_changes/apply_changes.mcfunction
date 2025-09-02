# Ran every 20 ticks, will only apply changes if $dungeon and $_dungeon doesn't match. (aka previous and current don't match)
execute unless score $dungeon do2.config.wc.lobbyChangesExists = $_dungeon do2.config.wc.lobbyChangesExists run function do2:scoreboard/config/world_setup/apply_changes/lobby_changes
execute unless score $dungeon do2.config.wc.museumExists = $_dungeon do2.config.wc.museumExists run function do2:scoreboard/config/world_setup/apply_changes/museum
execute unless score $dungeon do2.config.wc.queueExists = $_dungeon do2.config.wc.queueExists run function do2:scoreboard/config/world_setup/apply_changes/queue
execute unless score $dungeon do2.config.wc.cubbiesExist = $_dungeon do2.config.wc.cubbiesExist run function do2:scoreboard/config/world_setup/apply_changes/cubbies
execute unless score $dungeon do2.config.wc.easter_eggs = $_dungeon do2.config.wc.easter_eggs run function do2:scoreboard/config/world_setup/apply_changes/easter_eggs
execute unless score $dungeon do2.config.wc.replaceRetiredHermits = $_dungeon do2.config.wc.replaceRetiredHermits run function do2:scoreboard/config/world_setup/apply_changes/retired_hermits
