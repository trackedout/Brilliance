scoreboard players set @s seeded_random.raycast_success 1
scoreboard players set @s seeded_random.raycast_steps 0
summon minecraft:area_effect_cloud ~ ~ ~ {Duration: 2147483647, Tags: ["raycast_hit"]}
