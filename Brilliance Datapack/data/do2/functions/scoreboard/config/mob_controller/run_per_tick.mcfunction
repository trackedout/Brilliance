# Run the level/zone needed.

# Check for swap level
execute if block -521 115 1940 minecraft:bamboo_button[powered=true] run function do2:scoreboard/config/mob_controller/swap_to/l1
execute if block -520 115 1940 minecraft:bamboo_button[powered=true] run function do2:scoreboard/config/mob_controller/swap_to/l2
execute if block -519 115 1940 minecraft:bamboo_button[powered=true] run function do2:scoreboard/config/mob_controller/swap_to/l3
execute if block -518 115 1940 minecraft:bamboo_button[powered=true] run function do2:scoreboard/config/mob_controller/swap_to/l4
execute if block -517 115 1940 minecraft:bamboo_button[powered=true] run function do2:scoreboard/config/mob_controller/swap_to/backrooms




execute if score $dungeon do2.config.mc.levelEditing matches 1 run function do2:scoreboard/config/mob_controller/per_tick/l1
execute if score $dungeon do2.config.mc.levelEditing matches 2 run function do2:scoreboard/config/mob_controller/per_tick/l2
execute if score $dungeon do2.config.mc.levelEditing matches 3 run function do2:scoreboard/config/mob_controller/per_tick/l3
execute if score $dungeon do2.config.mc.levelEditing matches 4 run function do2:scoreboard/config/mob_controller/per_tick/l4
execute if score $dungeon do2.config.mc.levelEditing matches 5 run function do2:scoreboard/config/mob_controller/per_tick/backrooms
