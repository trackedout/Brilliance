#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Item Bought: ("},{"text":"§bShop Refresh"},{"text":")"}]
#  - End Log -


execute as @p[tag=do2.received_shulker] run scoreboard players add @s do2.lifetime.spent.crowns 2
scoreboard players add $dungeon do2.lifetime.spent.crowns 2

