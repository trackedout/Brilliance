# Clone Storage
function do2:entity_controller/config_interface/save_storages

# Level 1
execute if score $dungeon do2.config.ec.levelEditing matches 10 if score $dungeon do2.config.ec.level1Zones matches 1 run scoreboard players set $dungeon do2.config.ec.level1Zones 2
execute if score $dungeon do2.config.ec.levelEditing matches 10 if score $dungeon do2.config.ec.level1Zones matches 0 run scoreboard players set $dungeon do2.config.ec.level1Zones 1
execute if score $dungeon do2.config.ec.levelEditing matches 10 if score $dungeon do2.config.ec.level1Zones matches 2 run scoreboard players set $dungeon do2.config.ec.level1Zones 0
execute if score $dungeon do2.config.ec.levelEditing matches 10 run function do2:entity_controller/config_interface/swap_to/l1
# Level 2
execute if score $dungeon do2.config.ec.levelEditing matches 20 if score $dungeon do2.config.ec.level2Zones matches 1 run scoreboard players set $dungeon do2.config.ec.level2Zones 2
execute if score $dungeon do2.config.ec.levelEditing matches 20 if score $dungeon do2.config.ec.level2Zones matches 0 run scoreboard players set $dungeon do2.config.ec.level2Zones 1
execute if score $dungeon do2.config.ec.levelEditing matches 20 if score $dungeon do2.config.ec.level2Zones matches 2 run scoreboard players set $dungeon do2.config.ec.level2Zones 0
execute if score $dungeon do2.config.ec.levelEditing matches 20 run function do2:entity_controller/config_interface/swap_to/l2
# Level 4
execute if score $dungeon do2.config.ec.levelEditing matches 40 if score $dungeon do2.config.ec.level4Zones matches 1 run scoreboard players set $dungeon do2.config.ec.level4Zones 2
execute if score $dungeon do2.config.ec.levelEditing matches 40 if score $dungeon do2.config.ec.level4Zones matches 0 run scoreboard players set $dungeon do2.config.ec.level4Zones 1
execute if score $dungeon do2.config.ec.levelEditing matches 40 if score $dungeon do2.config.ec.level4Zones matches 2 run scoreboard players set $dungeon do2.config.ec.level4Zones 0
execute if score $dungeon do2.config.ec.levelEditing matches 40 run function do2:entity_controller/config_interface/swap_to/l4
 
