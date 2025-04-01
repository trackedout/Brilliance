scoreboard players set @s seeded_random.raycast_steps 100
scoreboard players set @s seeded_random.raycast_success 0
execute anchored eyes at @s run function seeded_random:raycast/step
