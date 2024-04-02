# Run the level/zone needed.

# Check for swap level
execute if block -521 115 1940 minecraft:bamboo_button[powered=true] run function do2:scoreboard/config/mob_controller/swap_to/l1
execute if block -520 115 1940 minecraft:bamboo_button[powered=true] run function do2:scoreboard/config/mob_controller/swap_to/l2
execute if block -519 115 1940 minecraft:bamboo_button[powered=true] run function do2:scoreboard/config/mob_controller/swap_to/l3
execute if block -518 115 1940 minecraft:bamboo_button[powered=true] run function do2:scoreboard/config/mob_controller/swap_to/l4
execute if block -517 115 1940 minecraft:bamboo_button[powered=true] run function do2:scoreboard/config/mob_controller/swap_to/backrooms



# L1 Zones
execute if score $dungeon do2.config.mc.levelEditing matches 1 if score $dungeon do2.config.mc.level1Zones matches 1 run function do2:scoreboard/config/mob_controller/per_tick/l1_zones
# L2 Zones
execute if score $dungeon do2.config.mc.levelEditing matches 2 if score $dungeon do2.config.mc.level2Zones matches 1 run function do2:scoreboard/config/mob_controller/per_tick/l1_zones
# L4 Zones
execute if score $dungeon do2.config.mc.levelEditing matches 4 if score $dungeon do2.config.mc.level4Zones matches 1 run function do2:scoreboard/config/mob_controller/per_tick/l1_zones


# L1 No Zones
execute if score $dungeon do2.config.mc.levelEditing matches 1 if score $dungeon do2.config.mc.level1Zones matches 0 run function do2:scoreboard/config/mob_controller/per_tick/l1_no_zones
# L2 No Zones
execute if score $dungeon do2.config.mc.levelEditing matches 2 if score $dungeon do2.config.mc.level2Zones matches 0 run function do2:scoreboard/config/mob_controller/per_tick/l2_no_zones
# L4 No Zones
execute if score $dungeon do2.config.mc.levelEditing matches 4 if score $dungeon do2.config.mc.level4Zones matches 0 run function do2:scoreboard/config/mob_controller/per_tick/l4_no_zones

# L3 No Zones
execute if score $dungeon do2.config.mc.levelEditing matches 3 run function do2:scoreboard/config/mob_controller/per_tick/l3_no_zones
