# Check for wand.
scoreboard players set @s seeded_random.utility 0
execute store result score @s seeded_random.utility on attacker run function seeded_random:inventories/need_wand
execute unless score @s seeded_random.utility matches 1 on attacker run tellraw @s "Need wand"
execute unless score @s seeded_random.utility matches 1 on attacker at @s run playsound minecraft:enchant.thorns.hit master @s ~ ~ ~ 1 1.5
execute unless score @s seeded_random.utility matches 1 run data remove entity @s attack
execute unless score @s seeded_random.utility matches 1 run return 0

# DELETE SELF
execute if score @s seeded_random.leftClickCd matches 1.. run function seeded_random:inventories/execute_left_click

execute unless score @s seeded_random.leftClickCd matches 1.. unless score @s seeded_random.rightClickCd matches 1.. at @s run team join seeded_random.leftClicked @e[type=shulker,distance=..2,tag=seeded_random.dispenser]
execute unless score @s seeded_random.leftClickCd matches 1.. unless score @s seeded_random.rightClickCd matches 1.. run scoreboard players set @s seeded_random.leftClickCd 40
execute if score @s seeded_random.rightClickCd matches 1.. at @s run team join seeded_random.seededInventory @e[type=shulker,distance=..2,tag=seeded_random.dispenser]
execute if score @s seeded_random.rightClickCd matches 1.. run scoreboard players set @s seeded_random.rightClickCd 0
data remove entity @s attack
