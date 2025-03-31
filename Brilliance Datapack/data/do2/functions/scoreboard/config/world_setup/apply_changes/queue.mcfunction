# Add it back
execute if score $dungeon do2.config.wc.queueExist matches 1 run function do2:scoreboard/config/world_setup/hermit_changes/place_queue

# Remove it.
execute if score $dungeon do2.config.wc.queueExist matches 0 run function do2:scoreboard/config/world_setup/hermit_changes/remove_queue

# Set $_dungeon to the same as $dungeon
scoreboard players operation $_dungeon do2.config.wc.queueExist = $dungeon do2.config.wc.queueExist




