# Add it back
execute if score $dungeon do2.config.wc.cubbiesExist matches 1 run function do2:scoreboard/config/world_setup/hermit_changes/cubbies/place_cubbies

# Remove it.
execute if score $dungeon do2.config.wc.cubbiesExist matches 0 run function do2:scoreboard/config/world_setup/hermit_changes/cubbies/remove_all

# Set $_dungeon to the same as $dungeon
scoreboard players operation $_dungeon do2.config.wc.cubbiesExist = $dungeon do2.config.wc.cubbiesExist




