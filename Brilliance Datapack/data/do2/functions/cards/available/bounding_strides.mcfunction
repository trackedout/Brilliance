#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"[§9B§r]: Card Available: ("},{"text":"§aBounding Strides","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:\"#80c71f\",OriginalName:'{\"color\":\"#80C71F\",\"text\":\"✧ Bounding Strides ✧\"}',ModifiedName:'{\"color\":\"#80C71F\",\"text\":\"✧ Bounding Strides ✧\"}'},CustomModelData:116,CustomRoleplayData:1b,display:{Name:'{\"color\":\"#80C71F\",\"text\":\"✧ Bounding Strides ✧\"}'}}}"}},{"text":")"}]
# - End Log -

execute as @p[tag=received_shulker] run scoreboard players set @s do2.run.cards.availible.BST 1

# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_available 11
execute as @p[tag=received_shulker] run function do2:agronet/card_available
