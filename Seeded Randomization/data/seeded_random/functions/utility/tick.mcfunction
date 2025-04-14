scoreboard players add $seed seeded_random.ticks 1
execute if score $seed seeded_random.ticks matches 20.. run function seeded_random:utility/per_second
execute as @e[type=interaction,tag=seeded_random.dispenser] if data entity @s attack run function seeded_random:inventories/dispenser_left_click
execute as @e[type=interaction,tag=seeded_random.dispenser] if data entity @s interaction run function seeded_random:inventories/dispenser_right_click
execute as @e[type=interaction,tag=seeded_random.dropper] if data entity @s attack run function seeded_random:inventories/dropper_left_click
execute as @e[type=interaction,tag=seeded_random.dropper] if data entity @s interaction run function seeded_random:inventories/dropper_right_click

execute as @e[type=interaction,tag=seeded_random.dispenser] if score @s seeded_random.leftClickCd matches 1.. run scoreboard players remove @s seeded_random.leftClickCd 1
execute as @e[type=interaction,tag=seeded_random.dispenser] if score @s seeded_random.rightClickCd matches 1.. run scoreboard players remove @s seeded_random.rightClickCd 1
execute as @e[type=interaction,tag=seeded_random.dropper] if score @s seeded_random.leftClickCd matches 1.. run scoreboard players remove @s seeded_random.leftClickCd 1
execute as @e[type=interaction,tag=seeded_random.dropper] if score @s seeded_random.rightClickCd matches 1.. run scoreboard players remove @s seeded_random.rightClickCd 1
execute as @e[type=interaction,tag=seeded_random.dispenser] unless score @s seeded_random.leftClickCd matches 1.. unless score @s seeded_random.rightClickCd matches 1.. at @s run team join seeded_random.seededInventory @e[type=shulker,distance=..2,tag=seeded_random.dispenser]
execute as @e[type=interaction,tag=seeded_random.dropper] unless score @s seeded_random.leftClickCd matches 1.. unless score @s seeded_random.rightClickCd matches 1.. at @s run team join seeded_random.seededInventory @e[type=shulker,distance=..2,tag=seeded_random.dropper]

# Dev tools
#execute as @a at @s if entity @s[nbt={SelectedItem:{id:"minecraft:end_rod"}}] if dimension seeded_random:seeded_random in minecraft:overworld run tp @s ~ ~ ~
#execute as @a at @s if entity @s[nbt={SelectedItem:{id:"minecraft:blaze_rod"}}] if dimension minecraft:overworld in seeded_random:seeded_random run tp @s ~ ~ ~
