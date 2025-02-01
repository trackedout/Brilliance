execute unless entity @s[tag=do2.received_shulker] run return 0
execute if score $dungeon do2.run.active matches 1.. run return 0

# Only allow the dungeon difficulty config to be run once per dungeon instance
execute if score $dungeon do2.config.dungeonDifficulty matches 1 run return 0
scoreboard players set $dungeon do2.config.dungeonDifficulty 1

# Default to easy difficulty
execute unless score @s do2.config.dungeonDifficulty matches 0.. run scoreboard players set @s do2.config.dungeonDifficulty 0

data merge block -557 113 1987 {Items:[]}
data merge block -558 113 1987 {Items:[]}
data merge block -559 113 1987 {Items:[]}
data merge block -560 113 1987 {Items:[]}
data merge block -561 113 1987 {Items:[]}

data merge block -557 113 1988 {Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
data merge block -558 113 1988 {Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
data merge block -559 113 1988 {Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
data merge block -560 113 1988 {Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
data merge block -561 113 1988 {Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}

#  Check for Deepfrost_allowed
#execute unless score $dungeon do2.config.eggsUnlockDeepfrost matches 1 run function do2:dungeon_setup/unlock_deepfrost
#execute if score $dungeon do2.config.eggsUnlockDeepfrost matches 1 run function do2:dungeon_setup/lock_deepfrost
#execute if score $dungeon do2.config.eggsUnlockDeepfrost matches 1 if entity @s[advancements={do2:hidden/adventuring/find_17_eggs=true}] run function do2:dungeon_setup/unlock_deepfrost

# Default to easy difficulty
execute unless score @s do2.config.dungeonDifficulty matches 1..5 run data merge block -557 113 1988 {Items:[]}
execute unless score @s do2.config.dungeonDifficulty matches 1..5 run data merge block -557 113 1987 {Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}

execute if score @s do2.config.dungeonDifficulty matches 1 run data merge block -557 113 1988 {Items:[]}
execute if score @s do2.config.dungeonDifficulty matches 1 run data merge block -557 113 1987 {Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
execute if score @s do2.config.dungeonDifficulty matches 2 run data merge block -558 113 1988 {Items:[]}
execute if score @s do2.config.dungeonDifficulty matches 2 run data merge block -558 113 1987 {Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
execute if score @s do2.config.dungeonDifficulty matches 3 run data merge block -559 113 1988 {Items:[]}
execute if score @s do2.config.dungeonDifficulty matches 3 run data merge block -559 113 1987 {Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
execute if score @s do2.config.dungeonDifficulty matches 4 run data merge block -560 113 1988 {Items:[]}
execute if score @s do2.config.dungeonDifficulty matches 4 run data merge block -560 113 1987 {Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
execute if score @s do2.config.dungeonDifficulty matches 5 run data merge block -561 113 1988 {Items:[]}
execute if score @s do2.config.dungeonDifficulty matches 5 run data merge block -561 113 1987 {Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
