# Check for wand.
scoreboard players set @s seeded_random.utility 0
execute store result score @s seeded_random.utility on target run function seeded_random:inventories/need_wand
execute unless score @s seeded_random.utility matches 1 on target run tellraw @s "Need wand"
execute unless score @s seeded_random.utility matches 1 on target at @s run playsound minecraft:item.armor.equip_turtle master @s ~ ~ ~ 1 0.1
execute unless score @s seeded_random.utility matches 1 run data remove entity @s interaction
execute unless score @s seeded_random.utility matches 1 run return 0

# Edit
execute if score @s seeded_random.rightClickCd matches 1.. run say "run right click"

execute unless score @s seeded_random.rightClickCd matches 1.. unless score @s seeded_random.leftClickCd matches 1.. at @s run team join seeded_random.rightClicked @e[type=shulker,distance=..2,tag=seeded_random.dispenser]
execute unless score @s seeded_random.rightClickCd matches 1.. unless score @s seeded_random.leftClickCd matches 1.. run scoreboard players set @s seeded_random.rightClickCd 40
execute if score @s seeded_random.leftClickCd matches 1.. at @s run team join seeded_random.seededInventory @e[type=shulker,distance=..2,tag=seeded_random.dispenser]
execute if score @s seeded_random.leftClickCd matches 1.. run scoreboard players set @s seeded_random.leftClickCd 0
data remove entity @s interaction

