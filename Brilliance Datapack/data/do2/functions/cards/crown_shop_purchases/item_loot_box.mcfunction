#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Item Bought: ("},{"text":"§bRandom Item Loot Box"},{"text":")"}]
#  - End Log -


execute as @p[tag=do2.received_shulker] run scoreboard players add @s do2.lifetime.spent.crowns 3
scoreboard players add $dungeon do2.lifetime.spent.crowns 3

#TODO: check if JACKPOT
