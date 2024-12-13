# Clone Storage
function do2:mob_controller/save_storages

# Level 1
execute if score $dungeon do2.config.mc.levelEditing matches 1 if score $dungeon do2.config.mc.level1Zones matches 1 run scoreboard players set $dungeon do2.config.mc.level1Zones 2
execute if score $dungeon do2.config.mc.levelEditing matches 1 if score $dungeon do2.config.mc.level1Zones matches 0 run scoreboard players set $dungeon do2.config.mc.level1Zones 1
execute if score $dungeon do2.config.mc.levelEditing matches 1 if score $dungeon do2.config.mc.level1Zones matches 2 run scoreboard players set $dungeon do2.config.mc.level1Zones 0
execute if score $dungeon do2.config.mc.levelEditing matches 1 run function do2:mob_controller/swap_to/l1
# Level 2
execute if score $dungeon do2.config.mc.levelEditing matches 2 if score $dungeon do2.config.mc.level2Zones matches 1 run scoreboard players set $dungeon do2.config.mc.level2Zones 2
execute if score $dungeon do2.config.mc.levelEditing matches 2 if score $dungeon do2.config.mc.level2Zones matches 0 run scoreboard players set $dungeon do2.config.mc.level2Zones 1
execute if score $dungeon do2.config.mc.levelEditing matches 2 if score $dungeon do2.config.mc.level2Zones matches 2 run scoreboard players set $dungeon do2.config.mc.level2Zones 0
execute if score $dungeon do2.config.mc.levelEditing matches 2 run function do2:mob_controller/swap_to/l2
# Level 4
execute if score $dungeon do2.config.mc.levelEditing matches 4 if score $dungeon do2.config.mc.level4Zones matches 1 run scoreboard players set $dungeon do2.config.mc.level4Zones 2
execute if score $dungeon do2.config.mc.levelEditing matches 4 if score $dungeon do2.config.mc.level4Zones matches 0 run scoreboard players set $dungeon do2.config.mc.level4Zones 1
execute if score $dungeon do2.config.mc.levelEditing matches 4 if score $dungeon do2.config.mc.level4Zones matches 2 run scoreboard players set $dungeon do2.config.mc.level4Zones 0
execute if score $dungeon do2.config.mc.levelEditing matches 4 run function do2:mob_controller/swap_to/l4
 
