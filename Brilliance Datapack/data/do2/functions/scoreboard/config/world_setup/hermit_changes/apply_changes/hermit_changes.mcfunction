# Museum template is at max size and short 1 block, so instead of saving a 2nd structure
# Just remove/add the remaining 4 blocks at the tip

# Add it back
execute if score $dungeon do2.config.wc.hermitChangesExists matches 1 run function do2:scoreboard/config/world_setup/hermit_changes/cubbies/place_cubbies

# Remove it.
execute if score $dungeon do2.config.wc.hermitChangesExists matches 0 run function do2:scoreboard/config/world_setup/hermit_changes/cubbies/remove_all

# Set $_dungeon to the same as $dungeon
scoreboard players operation $_dungeon do2.config.wc.hermitChangesExists = $dungeon do2.config.wc.hermitChangesExists




