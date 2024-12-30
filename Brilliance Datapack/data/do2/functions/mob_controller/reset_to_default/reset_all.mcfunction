# SFX
playsound minecraft:block.anvil.place player @a -526 115 1944 0.2 0.1 0
particle minecraft:explosion -528 116 1944 0 1 -2 0 30 force

# Reset STORAGES to default
place template do2:config.mc.storages_default -530 121 1940 none none 1 0

# Reset CURRENT storage
# L0
execute if score $dungeon do2.config.mc.levelEditing matches 0 run function do2:mob_controller/reset_to_default/individual/backrooms

# L1
execute if score $dungeon do2.config.mc.levelEditing matches 10 if score $dungeon do2.config.mc.level1Zones matches 0 run function do2:mob_controller/reset_to_default/individual/l1_no_zones
execute if score $dungeon do2.config.mc.levelEditing matches 10 if score $dungeon do2.config.mc.level1Zones matches 1 run function do2:mob_controller/reset_to_default/individual/l1_zones

# L2
execute if score $dungeon do2.config.mc.levelEditing matches 20 if score $dungeon do2.config.mc.level2Zones matches 0 run function do2:mob_controller/reset_to_default/individual/l2_no_zones
execute if score $dungeon do2.config.mc.levelEditing matches 20 if score $dungeon do2.config.mc.level2Zones matches 1 run function do2:mob_controller/reset_to_default/individual/l2_zones

# L2_other
execute if score $dungeon do2.config.mc.levelEditing matches 21 run function do2:mob_controller/reset_to_default/individual/l2_other

# L3
execute if score $dungeon do2.config.mc.levelEditing matches 30 run function do2:mob_controller/reset_to_default/individual/l3

# L4
execute if score $dungeon do2.config.mc.levelEditing matches 40 run function do2:mob_controller/reset_to_default/individual/l4

