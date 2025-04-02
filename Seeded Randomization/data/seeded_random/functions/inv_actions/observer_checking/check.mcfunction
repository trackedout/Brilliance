execute if block ~ ~ ~-1 minecraft:observer[facing=south] run setblock ~ ~ ~-1 stone
execute if block ~ ~ ~1 minecraft:observer[facing=north] run setblock ~ ~ ~1 stone
execute if block ~-1 ~ ~ minecraft:observer[facing=east] run setblock ~-1 ~ ~ stone
execute if block ~1 ~ ~ minecraft:observer[facing=west] run setblock ~1 ~ ~ stone
execute if block ~ ~-1 ~ minecraft:observer[facing=up] run setblock ~ ~-1 ~ stone
execute if block ~ ~1 ~ minecraft:observer[facing=down] run setblock ~ ~1 ~ stone
