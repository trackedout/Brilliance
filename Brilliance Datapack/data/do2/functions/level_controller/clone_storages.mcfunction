# Level 1
execute if score $dungeon do2.config.mc.levelEditing matches 1 if score $dungeon do2.config.mc.level1Zones matches 1 run clone -529 114 1946 -529 115 1942 -527 122 1942
execute if score $dungeon do2.config.mc.levelEditing matches 1 if score $dungeon do2.config.mc.level1Zones matches 0 run clone -529 114 1946 -529 115 1942 -527 125 1942

# Level 2
execute if score $dungeon do2.config.mc.levelEditing matches 2 if score $dungeon do2.config.mc.level2Zones matches 1 run clone -529 114 1946 -529 115 1942 -525 122 1942
execute if score $dungeon do2.config.mc.levelEditing matches 2 if score $dungeon do2.config.mc.level2Zones matches 0 run clone -529 114 1946 -529 115 1942 -525 125 1942

# Level 3
execute if score $dungeon do2.config.mc.levelEditing matches run clone -529 114 1946 -529 115 1942 -523 125 1942

# Level 4
execute if score $dungeon do2.config.mc.levelEditing matches 4 if score $dungeon do2.config.mc.level4Zones matches 1 run clone -529 114 1946 -529 115 1942 -521 122 1942
execute if score $dungeon do2.config.mc.levelEditing matches 4 if score $dungeon do2.config.mc.level4Zones matches 0 run clone -529 114 1946 -529 115 1942 -521 125 1942

# Level 5
execute if score $dungeon do2.config.mc.levelEditing matches 5 run clone -529 114 1946 -529 115 1942 -519 125 1942
