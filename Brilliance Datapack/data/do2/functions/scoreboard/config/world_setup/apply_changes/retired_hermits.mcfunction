# Add it back
execute if score $dungeon do2.config.wc.replaceRetiredHermits matches 1 run function do2:scoreboard/config/world_setup/apply_changes/retired_hermits_tangofied

# Remove it.
execute if score $dungeon do2.config.wc.replaceRetiredHermits matches 0 run function do2:scoreboard/config/world_setup/apply_changes/retired_hermits_default

# Set $_dungeon to the same as $dungeon
scoreboard players operation $_dungeon do2.config.wc.replaceRetiredHermits = $dungeon do2.config.wc.replaceRetiredHermits




