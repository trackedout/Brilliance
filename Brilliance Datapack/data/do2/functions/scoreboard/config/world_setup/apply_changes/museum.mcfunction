# Museum template is at max size and short 1 block, so instead of saving a 2nd structure
# Just remove/add the remaining 4 blocks at the tip

# Add it back
execute if score $dungeon do2.config.wc.museumExists matches 1 run place template do2:world_setup/museum_tower_returned -615 148 2026
execute if score $dungeon do2.config.wc.museumExists matches 1 run setblock -609 196 2041 minecraft:iron_bars replace
execute if score $dungeon do2.config.wc.museumExists matches 1 run setblock -600 196 2050 minecraft:iron_bars replace
execute if score $dungeon do2.config.wc.museumExists matches 1 run setblock -591 196 2041 minecraft:iron_bars replace
execute if score $dungeon do2.config.wc.museumExists matches 1 run setblock -600 196 2032 minecraft:iron_bars replace

# Remove it.
execute if score $dungeon do2.config.wc.museumExists matches 0 run place template do2:world_setup/museum_tower_removed -615 148 2026
execute if score $dungeon do2.config.wc.museumExists matches 0 run setblock -609 196 2041 minecraft:air replace
execute if score $dungeon do2.config.wc.museumExists matches 0 run setblock -600 196 2050 minecraft:air replace
execute if score $dungeon do2.config.wc.museumExists matches 0 run setblock -591 196 2041 minecraft:air replace
execute if score $dungeon do2.config.wc.museumExists matches 0 run setblock -600 196 2032 minecraft:air replace
execute if score $dungeon do2.config.wc.museumExists matches 0 run schedule function do2:scoreboard/config/world_setup/apply_changes/museum_entity_kill 4t

# Set $_dungeon to the same as $dungeon
scoreboard players operation $_dungeon do2.config.wc.museumExists = $dungeon do2.config.wc.museumExists




