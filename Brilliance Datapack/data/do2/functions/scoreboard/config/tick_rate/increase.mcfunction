execute if score $dungeon do2.config.tickRate matches ..1 run scoreboard players set $dungeon do2.config.tickRate 1
scoreboard players add $dungeon do2.config.tickRate 1
execute if score $dungeon do2.config.tickRate matches 6.. run scoreboard players set $dungeon do2.config.tickRate 6

execute if score $dungeon do2.config.tickRate matches 1 positioned -525 115 1952 run playsound minecraft:block.anvil.use voice @a[distance=..20] ~ ~ ~ 0.4 2
execute if score $dungeon do2.config.tickRate matches 2 positioned -525 115 1952 run playsound minecraft:block.anvil.use voice @a[distance=..20] ~ ~ ~ 0.4 1
execute if score $dungeon do2.config.tickRate matches 3 positioned -525 115 1952 run playsound minecraft:block.anvil.use voice @a[distance=..20] ~ ~ ~ 0.4 0.9
execute if score $dungeon do2.config.tickRate matches 4 positioned -525 115 1952 run playsound minecraft:block.anvil.use voice @a[distance=..20] ~ ~ ~ 0.4 0.8
execute if score $dungeon do2.config.tickRate matches 5 positioned -525 115 1952 run playsound minecraft:block.anvil.use voice @a[distance=..20] ~ ~ ~ 0.4 0.65
execute if score $dungeon do2.config.tickRate matches 6 positioned -525 115 1952 run playsound minecraft:block.anvil.use voice @a[distance=..20] ~ ~ ~ 0.4 0.5

function do2:scoreboard/config/tick_rate/sign
