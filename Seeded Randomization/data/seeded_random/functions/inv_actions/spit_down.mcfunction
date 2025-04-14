summon item ~ ~-1 ~ {Tags:["seeded_random.summoned.item"],Item:{id:"minecraft:barrier",Count:1},PickupDelay:1}
execute if score $seed seeded_random.output matches 0 run data modify entity @e[tag=seeded_random.summoned.item,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[0]
execute if score $seed seeded_random.output matches 1 run data modify entity @e[tag=seeded_random.summoned.item,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[1]
execute if score $seed seeded_random.output matches 2 run data modify entity @e[tag=seeded_random.summoned.item,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[2]
execute if score $seed seeded_random.output matches 3 run data modify entity @e[tag=seeded_random.summoned.item,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[3]
execute if score $seed seeded_random.output matches 4 run data modify entity @e[tag=seeded_random.summoned.item,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[4]
execute if score $seed seeded_random.output matches 5 run data modify entity @e[tag=seeded_random.summoned.item,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[5]
execute if score $seed seeded_random.output matches 6 run data modify entity @e[tag=seeded_random.summoned.item,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[6]
execute if score $seed seeded_random.output matches 7 run data modify entity @e[tag=seeded_random.summoned.item,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[7]
execute if score $seed seeded_random.output matches 8 run data modify entity @e[tag=seeded_random.summoned.item,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[8]

execute if score $seed seeded_random.output matches 0..8 run function seeded_random:inv_actions/remove_one_item
execute unless score $seed seeded_random.output matches 0..8 run tellraw @a "Error, random output not in range [0 - 8]"
