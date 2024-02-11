#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"[§9B§r]: Card Available: ("},{"text":"§aChill Step","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:\"#3c44aa\",OriginalName:'{\"color\":\"#3C44AA\",\"text\":\"✧ Chill Step ✧\"}',ModifiedName:'{\"color\":\"#3C44AA\",\"text\":\"✧ Chill Step ✧\"}'},CustomModelData:127,CustomRoleplayData:1b,display:{Name:'{\"color\":\"#3C44AA\",\"text\":\"✧ Chill Step ✧\"}'}}}"}},{"text":")"}]
# - End Log -

execute as @p[tag=received_shulker] run scoreboard players set @s do2.run.cards.availible.CHS 1

# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_available 22
execute as @p[tag=received_shulker] run function do2:agronet/card_available
