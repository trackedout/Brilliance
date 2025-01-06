# - Start Log -
execute as @a[scores={do2.logs.entity_controller=3..}] run tellraw @s ["",{"text":"[§9B§r]: Resetting [§aEC§r] to default."}]
# - End Log -

# SFX
playsound minecraft:block.anvil.place player @a -526 115 1944 0.2 0.1 0
particle minecraft:explosion -528 116 1944 0 1 -2 0 30 force

# Reset STORAGES to default
place template do2:config.ec.storages_default -530 121 1940 none none 1 0

# Reset CURRENT storage
# L0
execute if score $dungeon do2.config.ec.levelEditing matches 0 run function do2:entity_controller/config_interface/reset_to_default/individual/backrooms

# L1
execute if score $dungeon do2.config.ec.levelEditing matches 10 if score $dungeon do2.config.ec.level1Zones matches 0 run function do2:entity_controller/config_interface/reset_to_default/individual/l1_no_zones
execute if score $dungeon do2.config.ec.levelEditing matches 10 if score $dungeon do2.config.ec.level1Zones matches 1 run function do2:entity_controller/config_interface/reset_to_default/individual/l1_zones

# L2
execute if score $dungeon do2.config.ec.levelEditing matches 20 if score $dungeon do2.config.ec.level2Zones matches 0 run function do2:entity_controller/config_interface/reset_to_default/individual/l2_no_zones
execute if score $dungeon do2.config.ec.levelEditing matches 20 if score $dungeon do2.config.ec.level2Zones matches 1 run function do2:entity_controller/config_interface/reset_to_default/individual/l2_zones

# L2_other
execute if score $dungeon do2.config.ec.levelEditing matches 21 run function do2:entity_controller/config_interface/reset_to_default/individual/l2_other

# L3
execute if score $dungeon do2.config.ec.levelEditing matches 30 run function do2:entity_controller/config_interface/reset_to_default/individual/l3

# L4
execute if score $dungeon do2.config.ec.levelEditing matches 40 run function do2:entity_controller/config_interface/reset_to_default/individual/l4

