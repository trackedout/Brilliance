#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Item Bought: ("},{"text":"§bRandom Item Loot Box"},{"text":")"}]
#  - End Log -


execute as @p[tag=do2.received_shulker] run scoreboard players add @s do2.lifetime.spent.crowns 3
scoreboard players add $dungeon do2.lifetime.spent.crowns 3

execute store result score $dungeon do2.utility.receivedJackpot run data get block -502 104 1972 Items[5].Count
execute if score $dungeon do2.utility.receivedJackpot matches 63 run advancement grant @p[tag=do2.received_shulker] only do2:hidden/treasure/get_shard_mystery_box
