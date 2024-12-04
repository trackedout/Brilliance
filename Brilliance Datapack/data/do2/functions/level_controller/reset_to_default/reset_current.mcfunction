playsound minecraft:block.amethyst_cluster.place player @a -526 115 1944 1 0.5 0
particle minecraft:cloud -528 116 1944 0 1 2 0 1000 force
# L1
execute if score $dungeon do2.config.mc.levelEditing matches 1 if score $dungeon do2.config.mc.level1Zones matches 0 run function do2:level_controller/reset_to_default/individual/l1_no_zones
execute if score $dungeon do2.config.mc.levelEditing matches 1 if score $dungeon do2.config.mc.level1Zones matches 1 run function do2:level_controller/reset_to_default/individual/l1_zones
# L2
execute if score $dungeon do2.config.mc.levelEditing matches 2 if score $dungeon do2.config.mc.level2Zones matches 0 run function do2:level_controller/reset_to_default/individual/l2_no_zones
execute if score $dungeon do2.config.mc.levelEditing matches 2 if score $dungeon do2.config.mc.level2Zones matches 1 run function do2:level_controller/reset_to_default/individual/l2_zones

# L3
execute if score $dungeon do2.config.mc.levelEditing matches 3 run function do2:level_controller/reset_to_default/individual/l3

# L4
execute if score $dungeon do2.config.mc.levelEditing matches 4 run function do2:level_controller/reset_to_default/individual/l4

# L5
execute if score $dungeon do2.config.mc.levelEditing matches 5 run function do2:level_controller/reset_to_default/individual/backrooms
