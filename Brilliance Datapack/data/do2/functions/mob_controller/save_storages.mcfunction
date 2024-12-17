# Level 1
execute if score $dungeon do2.config.mc.levelEditing matches 10 if score $dungeon do2.config.mc.level1Zones matches 1 run clone -530 114 1946 -530 115 1942 -528 122 1942
execute if score $dungeon do2.config.mc.levelEditing matches 10 if score $dungeon do2.config.mc.level1Zones matches 0 run clone -530 114 1946 -530 115 1942 -528 125 1942

# Level 2
execute if score $dungeon do2.config.mc.levelEditing matches 20 if score $dungeon do2.config.mc.level2Zones matches 1 run clone -530 114 1946 -530 115 1942 -526 122 1942
execute if score $dungeon do2.config.mc.levelEditing matches 20 if score $dungeon do2.config.mc.level2Zones matches 0 run clone -530 114 1946 -530 115 1942 -526 125 1942

# Level 2_other
execute if score $dungeon do2.config.mc.levelEditing matches 21 run clone -530 114 1946 -530 115 1942 -524 122 1942

# Level 3
execute if score $dungeon do2.config.mc.levelEditing matches 30 run clone -530 114 1946 -530 115 1942 -522 122 1942

# Level 4
execute if score $dungeon do2.config.mc.levelEditing matches 40 if score $dungeon do2.config.mc.level4Zones matches 1 run clone -530 114 1946 -530 115 1942 -520 122 1942
execute if score $dungeon do2.config.mc.levelEditing matches 40 if score $dungeon do2.config.mc.level4Zones matches 0 run clone -530 114 1946 -530 115 1942 -520 125 1942

# Level 0
execute if score $dungeon do2.config.mc.levelEditing matches 0 run clone -530 114 1946 -530 115 1942 -518 122 1942
