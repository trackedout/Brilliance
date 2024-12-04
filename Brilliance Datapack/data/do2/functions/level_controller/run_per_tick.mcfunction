# Run the level/zone needed.

# Check if a swap happening
execute if block -521 115 1940 minecraft:bamboo_button[powered=true] run function do2:level_controller/save_storages
execute if block -520 115 1940 minecraft:bamboo_button[powered=true] run function do2:level_controller/save_storages
execute if block -519 115 1940 minecraft:bamboo_button[powered=true] run function do2:level_controller/save_storages
execute if block -518 115 1940 minecraft:bamboo_button[powered=true] run function do2:level_controller/save_storages
execute if block -517 115 1940 minecraft:bamboo_button[powered=true] run function do2:level_controller/save_storages

# Check for swap level
execute if block -521 115 1940 minecraft:bamboo_button[powered=true] run function do2:level_controller/swap_to/l1
execute if block -520 115 1940 minecraft:bamboo_button[powered=true] run function do2:level_controller/swap_to/l2
execute if block -519 115 1940 minecraft:bamboo_button[powered=true] run function do2:level_controller/swap_to/l3
execute if block -518 115 1940 minecraft:bamboo_button[powered=true] run function do2:level_controller/swap_to/l4
execute if block -517 115 1940 minecraft:bamboo_button[powered=true] run function do2:level_controller/swap_to/backrooms

# Run the per ticks
execute if score $dungeon do2.config.mc.levelEditing matches 1 run function do2:level_controller/per_tick/l1
execute if score $dungeon do2.config.mc.levelEditing matches 2 run function do2:level_controller/per_tick/l2
execute if score $dungeon do2.config.mc.levelEditing matches 3 run function do2:level_controller/per_tick/l3
execute if score $dungeon do2.config.mc.levelEditing matches 4 run function do2:level_controller/per_tick/l4
execute if score $dungeon do2.config.mc.levelEditing matches 5 run function do2:level_controller/per_tick/backrooms

# Make sure all players have at least 1 level, in order to name things at the anvil
execute positioned -516 114 1947 as @a[distance=..6] store result score @s do2.utility.playersExperience run experience query @s levels
execute positioned -516 114 1947 as @a[distance=..6] if score @s do2.utility.playersExperience matches ..0 run experience add @s 1 levels
