#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"[§9B]: Card Available: ("},{"text":"§aEvasion","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{colorFormat:\"#80c71f\",OriginalName:'{\"color\":\"#80C71F\",\"text\":\"✧ Evasion ✧\"}',ModifiedName:'{\"color\":\"#80C71F\",\"text\":\"✧ Evasion ✧\"}'},CustomModelData:110,CustomRoleplayData:1b,display:{Name:'{\"color\":\"#80C71F\",\"text\":\"✧ Evasion ✧\"}'}}"}},{"text":")"}]
# - End Log -

execute as @p[tag=received_shulker] run scoreboard players set @s do2.run.cards.availible.EVA 1

# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_available 5
execute as @p[tag=received_shulker] run function do2:agronet/card_available
