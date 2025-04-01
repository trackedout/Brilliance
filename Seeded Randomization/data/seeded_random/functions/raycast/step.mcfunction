execute unless block ~ ~ ~ minecraft:air run function seeded_random:raycast/hit_block


execute if score @s seeded_random.raycast_steps matches 1.. run scoreboard players remove @s seeded_random.raycast_steps 1
execute if score @s seeded_random.raycast_steps matches 1.. if score @s seeded_random.raycast_success matches 0 positioned ^ ^ ^0.1 run function seeded_random:raycast/step
execute unless score @s seeded_random.raycast_success matches 1 if score @s seeded_random.raycast_steps matches 0 run function seeded_random:raycast/fail
