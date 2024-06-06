#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Item Bought: ("},{"text":"§bSlowness Potion","hoverEvent":{"action":"show_item","value":"{id:'minecraft:splash_potion', Count:1, tag:{\"Potion\": \"minecraft:strong_slowness\"}}"}},{"text":")"}]
#  - End Log -


execute as @p[tag=do2.received_shulker] run scoreboard players add @s do2.lifetime.spent.crowns 1
scoreboard players add $dungeon do2.lifetime.spent.crowns 1

