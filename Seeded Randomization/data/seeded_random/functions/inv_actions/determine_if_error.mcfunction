execute if block ~ ~ ~ minecraft:dispenser run return 1
execute if block ~ ~ ~ minecraft:dropper run return 1
execute if block ~ ~ ~ minecraft:chest run return 1
execute if block ~ ~ ~ minecraft:hopper run return 1
execute if block ~ ~ ~ minecraft:barrel run return 1
execute if block ~ ~ ~ minecraft:air run return 1
execute if block ~ ~ ~ minecraft:water run return 1
tellraw @a "Error, couldn't determine inventory action."
return 0
