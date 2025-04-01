execute if score $seed seeded_random.output matches 0 store result score $seed seeded_random.utility run data get block ~ ~ ~ Items[0].Count
execute if score $seed seeded_random.output matches 1 store result score $seed seeded_random.utility run data get block ~ ~ ~ Items[1].Count
execute if score $seed seeded_random.output matches 2 store result score $seed seeded_random.utility run data get block ~ ~ ~ Items[2].Count
execute if score $seed seeded_random.output matches 3 store result score $seed seeded_random.utility run data get block ~ ~ ~ Items[3].Count
execute if score $seed seeded_random.output matches 4 store result score $seed seeded_random.utility run data get block ~ ~ ~ Items[4].Count
execute if score $seed seeded_random.output matches 5 store result score $seed seeded_random.utility run data get block ~ ~ ~ Items[5].Count
execute if score $seed seeded_random.output matches 6 store result score $seed seeded_random.utility run data get block ~ ~ ~ Items[6].Count
execute if score $seed seeded_random.output matches 7 store result score $seed seeded_random.utility run data get block ~ ~ ~ Items[7].Count
execute if score $seed seeded_random.output matches 8 store result score $seed seeded_random.utility run data get block ~ ~ ~ Items[8].Count

scoreboard players remove $seed seeded_random.utility 1

execute if score $seed seeded_random.output matches 0 store result block ~ ~ ~ Items[0].Count int 1 run scoreboard players get $seed seeded_random.utility
execute if score $seed seeded_random.output matches 1 store result block ~ ~ ~ Items[1].Count int 1 run scoreboard players get $seed seeded_random.utility
execute if score $seed seeded_random.output matches 2 store result block ~ ~ ~ Items[2].Count int 1 run scoreboard players get $seed seeded_random.utility
execute if score $seed seeded_random.output matches 3 store result block ~ ~ ~ Items[3].Count int 1 run scoreboard players get $seed seeded_random.utility
execute if score $seed seeded_random.output matches 4 store result block ~ ~ ~ Items[4].Count int 1 run scoreboard players get $seed seeded_random.utility
execute if score $seed seeded_random.output matches 5 store result block ~ ~ ~ Items[5].Count int 1 run scoreboard players get $seed seeded_random.utility
execute if score $seed seeded_random.output matches 6 store result block ~ ~ ~ Items[6].Count int 1 run scoreboard players get $seed seeded_random.utility
execute if score $seed seeded_random.output matches 7 store result block ~ ~ ~ Items[7].Count int 1 run scoreboard players get $seed seeded_random.utility
execute if score $seed seeded_random.output matches 8 store result block ~ ~ ~ Items[8].Count int 1 run scoreboard players get $seed seeded_random.utility
