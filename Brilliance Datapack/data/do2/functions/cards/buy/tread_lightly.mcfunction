#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"[§9B§r]: Card Bought: ("},{"text":"§aTread Lightly","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:\"#80c71f\",OriginalName:'{\"color\":\"#80C71F\",\"text\":\"✧ Tread Lightly ✧\"}',ModifiedName:'{\"color\":\"#80C71F\",\"text\":\"✧ Tread Lightly ✧\"}'},CustomModelData:113,CustomRoleplayData:1b,display:{Name:'{\"color\":\"#80C71F\",\"text\":\"✧ Tread Lightly ✧\"}'}}}"}},{"text":")"}]
# - End Log -

execute as @p[tag=received_shulker] run scoreboard players add @s do2.cards.bought.TRL 1
execute as @p[tag=received_shulker] run scoreboard players set @s do2.run.cards.bought.TRL 1

# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_bought 6
execute as @p[tag=received_shulker] run function do2:agronet/card_bought
