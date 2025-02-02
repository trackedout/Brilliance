# - Start Log -
execute as @a[scores={do2.logs.entity_controller=3..}] run tellraw @s ["",{"text":"[§9B§r]: Saving [§aEC§r] interface's data."}]
# - End Log -

# Level 1
execute if score $dungeon do2.config.ec.levelEditing matches 10 if score $dungeon do2.config.ec.level1Zones matches 1 run clone -530 114 1946 -530 115 1942 -528 122 1942
execute if score $dungeon do2.config.ec.levelEditing matches 10 if score $dungeon do2.config.ec.level1Zones matches 0 run clone -530 114 1946 -530 115 1942 -528 125 1942

# Level 2
execute if score $dungeon do2.config.ec.levelEditing matches 20 if score $dungeon do2.config.ec.level2Zones matches 1 run clone -530 114 1946 -530 115 1942 -526 122 1942
execute if score $dungeon do2.config.ec.levelEditing matches 20 if score $dungeon do2.config.ec.level2Zones matches 0 run clone -530 114 1946 -530 115 1942 -526 125 1942

# Level 2_other
execute if score $dungeon do2.config.ec.levelEditing matches 21 run clone -530 114 1946 -530 115 1942 -524 122 1942

# Level 3
execute if score $dungeon do2.config.ec.levelEditing matches 30 run clone -530 114 1946 -530 115 1942 -522 122 1942

# Level 4
execute if score $dungeon do2.config.ec.levelEditing matches 40 if score $dungeon do2.config.ec.level4Zones matches 1 run clone -530 114 1946 -530 115 1942 -520 122 1942
execute if score $dungeon do2.config.ec.levelEditing matches 40 if score $dungeon do2.config.ec.level4Zones matches 0 run clone -530 114 1946 -530 115 1942 -520 125 1942

# Level 0
execute if score $dungeon do2.config.ec.levelEditing matches 0 run clone -530 114 1946 -530 115 1942 -518 122 1942

# Agronet event
function do2:external/agronet/logs/entity_controller/save_storages