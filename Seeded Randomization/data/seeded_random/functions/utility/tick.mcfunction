scoreboard players add $seed seeded_random.ticks 1
execute if score $seed seeded_random.ticks matches 20.. run function seeded_random:utility/per_second
execute as @e[type=interaction,tag=seeded_random.dispenser] if data entity @s attack run function seeded_random:inventories/dispenser_left_click
execute as @e[type=interaction,tag=seeded_random.dispenser] if data entity @s interaction run function seeded_random:inventories/dispenser_right_click
execute as @e[type=interaction,tag=seeded_random.dropper] if data entity @s attack run function seeded_random:inventories/dropper_left_click
execute as @e[type=interaction,tag=seeded_random.dropper] if data entity @s interaction run function seeded_random:inventories/dropper_right_click
