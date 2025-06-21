# Remove potential entities.
kill @e[type=glow_item_frame,x=-490,dx=7,y=113,dy=4,z=1975,dz=11]

# Remove potential problem blocks
setblock -487 113 1980 air
fill -488 113 1985 -489 114 1985 air


# Completed
execute if score $dungeon do2.config.wc.easter_eggs matches 1 run place template do2:world_setup/easter_egg_completed -490 112 1975
# Removed
execute if score $dungeon do2.config.wc.easter_eggs matches 0 run place template do2:world_setup/easter_egg_removed -490 112 1975
# Missing (yet to be filled)
execute if score $dungeon do2.config.wc.easter_eggs matches 2 run place template do2:world_setup/easter_egg_missing -490 112 1975

# Eggs in the dungeon, if 2 = randomized, else = original
execute if score $dungeon do2.config.wc.easter_eggs matches 2 run function do2:dungeon_setup/easter_egg_randomization/setup
execute if score $dungeon do2.config.wc.easter_eggs matches 2 run function do2:scoreboard/config/world_setup/apply_changes/easter_eggs_chest
execute unless score $dungeon do2.config.wc.easter_eggs matches 2 run function do2:dungeon_setup/easter_egg_randomization/return_easter_egg_blocks



# Set $_dungeon to the same as $dungeon
scoreboard players operation $_dungeon do2.config.wc.easter_eggs = $dungeon do2.config.wc.easter_eggs
