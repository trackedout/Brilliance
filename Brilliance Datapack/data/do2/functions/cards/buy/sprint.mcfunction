#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"[§9B]: Card Bought: ("},{"text":"§aSprint","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{colorFormat:\"#80c71f\",OriginalName:'{\"color\":\"#80C71F\",\"text\":\"✧ Sprint ✧\"}',ModifiedName:'{\"color\":\"#80C71F\",\"text\":\"✧ Sprint ✧\"}'},CustomModelData:117,CustomRoleplayData:1b,display:{Name:'{\"color\":\"#80C71F\",\"text\":\"✧ Sprint ✧\"}'}}"}},{"text":")"}]
# - End Log -

execute as @p[tag=received_shulker] run scoreboard players add @s do2.cards.bought.SPT 1
execute as @p[tag=received_shulker] run scoreboard players set @s do2.run.cards.bought.SPT 1

# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_bought 13
execute as @p[tag=received_shulker] run function do2:agronet/card_bought
