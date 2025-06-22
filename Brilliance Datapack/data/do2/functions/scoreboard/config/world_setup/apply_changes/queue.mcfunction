# Add it back
execute if score $dungeon do2.config.wc.queueExists matches 1 run function do2:scoreboard/config/world_setup/apply_changes/queue_place

# Remove it.
execute if score $dungeon do2.config.wc.queueExists matches 0 run function do2:scoreboard/config/world_setup/apply_changes/queue_remove_structure
execute if score $dungeon do2.config.wc.queueExists matches 0 run schedule function do2:scoreboard/config/world_setup/apply_changes/queue_kill_entities 1t

# Set $_dungeon to the same as $dungeon
scoreboard players operation $_dungeon do2.config.wc.queueExists = $dungeon do2.config.wc.queueExists




