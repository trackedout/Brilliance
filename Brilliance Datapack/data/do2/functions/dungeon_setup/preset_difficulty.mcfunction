execute unless entity @s[tag=do2.received_shulker] run return 0
execute if score $dungeon do2.run.active matches 1.. run return 0

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

# Default to easy difficulty
execute if score @s do2.config.dungeonDifficulty matches 0 run data merge block -557 113 1988 {Items:[]}
execute if score @s do2.config.dungeonDifficulty matches 0 run data merge block -557 113 1987 {Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}

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
