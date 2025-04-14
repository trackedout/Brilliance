say "transfer_up"
execute unless score $seed seeded_random.output matches 0..8 run tellraw @a "Error, random output not in range [0 - 8]"
execute unless score $seed seeded_random.output matches 0..8 run return 0

# TRANSFER from block ~ ~ ~ to the block UP
execute positioned ~ ~ ~ in seeded_random:seeded_random run forceload add ~ ~
execute in seeded_random:seeded_random unless entity @e[type=minecraft:chest_boat,distance=..2,limit=1,sort=nearest] run summon minecraft:chest_boat ~ ~ ~ {NoGravity:1b,Tags:["seeded_random:temp_inventory"],Items:[]}
execute in seeded_random:seeded_random run data modify entity @e[type=minecraft:chest_boat,distance=..2,limit=1,sort=nearest] Items set value []
execute if score $seed seeded_random.output matches 0 in seeded_random:seeded_random run data modify entity @e[type=minecraft:chest_boat,distance=..2,limit=1,sort=nearest] Items append from block ~ ~ ~ Items[0]
execute if score $seed seeded_random.output matches 1 in seeded_random:seeded_random run data modify entity @e[type=minecraft:chest_boat,distance=..2,limit=1,sort=nearest] Items append from block ~ ~ ~ Items[1]
execute if score $seed seeded_random.output matches 2 in seeded_random:seeded_random run data modify entity @e[type=minecraft:chest_boat,distance=..2,limit=1,sort=nearest] Items append from block ~ ~ ~ Items[2]
execute if score $seed seeded_random.output matches 3 in seeded_random:seeded_random run data modify entity @e[type=minecraft:chest_boat,distance=..2,limit=1,sort=nearest] Items append from block ~ ~ ~ Items[3]
execute if score $seed seeded_random.output matches 4 in seeded_random:seeded_random run data modify entity @e[type=minecraft:chest_boat,distance=..2,limit=1,sort=nearest] Items append from block ~ ~ ~ Items[4]
execute if score $seed seeded_random.output matches 5 in seeded_random:seeded_random run data modify entity @e[type=minecraft:chest_boat,distance=..2,limit=1,sort=nearest] Items append from block ~ ~ ~ Items[5]
execute if score $seed seeded_random.output matches 6 in seeded_random:seeded_random run data modify entity @e[type=minecraft:chest_boat,distance=..2,limit=1,sort=nearest] Items append from block ~ ~ ~ Items[6]
execute if score $seed seeded_random.output matches 7 in seeded_random:seeded_random run data modify entity @e[type=minecraft:chest_boat,distance=..2,limit=1,sort=nearest] Items append from block ~ ~ ~ Items[7]
execute if score $seed seeded_random.output matches 8 in seeded_random:seeded_random run data modify entity @e[type=minecraft:chest_boat,distance=..2,limit=1,sort=nearest] Items append from block ~ ~ ~ Items[8]
execute in seeded_random:seeded_random as @e[type=minecraft:chest_boat,distance=..2,limit=1,sort=nearest] run data modify entity @s Items[0].Count set value 1
execute in seeded_random:seeded_random as @e[type=minecraft:chest_boat,distance=..2,limit=1,sort=nearest] run data modify entity @s Items[0].Slot set value 0

execute in seeded_random:seeded_random as @e[type=minecraft:chest_boat,distance=..2,limit=1,sort=nearest] in minecraft:overworld run data modify block ~ ~1 ~ Items append from entity @s Items[0]
#execute in seeded_random:seeded_random as @e[type=minecraft:chest_boat,distance=..2,limit=1,sort=nearest] run kill @s
execute positioned ~ ~ ~ in seeded_random:seeded_random run forceload remove ~ ~

execute in seeded_random:seeded_random run function seeded_random:inv_actions/remove_one_item
