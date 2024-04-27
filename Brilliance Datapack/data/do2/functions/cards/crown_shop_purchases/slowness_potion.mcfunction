#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Item Bought: ("},{"text":"§bSlowness Potion","hoverEvent":{"action":"show_item","value":"{id:'minecraft:splash_potion', Count:1, tag:{\"Potion\": \"minecraft:strong_slowness\"}}"}},{"text":")"}]
#  - End Log -

