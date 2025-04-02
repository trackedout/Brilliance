execute as @e[type=interaction,tag=seeded_random.dispenser] at @s run function seeded_random:utility/display_dispenser
execute as @e[type=interaction,tag=seeded_random.dropper] at @s run function seeded_random:utility/display_dropper

effect give @e[type=minecraft:shulker,tag=seeded_random.dispenser] minecraft:glowing 2 1 true
effect give @e[type=minecraft:shulker,tag=seeded_random.dropper] minecraft:glowing 2 1 true
