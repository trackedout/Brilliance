#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"[§9B§r]: Card Available: ("},{"text":"§aDeepfrost","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:\"#3c44aa\",OriginalName:'{\"color\":\"#3C44AA\",\"text\":\"✧ Deepfrost ✧\"}',ModifiedName:'{\"color\":\"#3C44AA\",\"text\":\"✧ Deepfrost ✧\"}'},CustomModelData:134,CustomRoleplayData:1b,display:{Name:'{\"color\":\"#3C44AA\",\"text\":\"✧ Deepfrost ✧\"}'}}}"}},{"text":")"}]
# - End Log -

execute as @p[tag=received_shulker] run scoreboard players set @s do2.run.cards.availible.DEF 1

# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_available 29
execute as @p[tag=received_shulker] run function do2:agronet/card_available
