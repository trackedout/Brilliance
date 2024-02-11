#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"[§9B§r]: Card Available: ("},{"text":"§aSwagger","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:\"#3c44aa\",OriginalName:'{\"color\":\"#3C44AA\",\"text\":\"✧ Swagger ✧\"}',ModifiedName:'{\"color\":\"#3C44AA\",\"text\":\"✧ Swagger ✧\"}'},CustomModelData:124,CustomRoleplayData:1b,display:{Name:'{\"color\":\"#3C44AA\",\"text\":\"✧ Swagger ✧\"}'}}}"}},{"text":")"}]
# - End Log -

execute as @p[tag=received_shulker] run scoreboard players set @s do2.run.cards.availible.SWA 1

# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_available 21
execute as @p[tag=received_shulker] run function do2:agronet/card_available
