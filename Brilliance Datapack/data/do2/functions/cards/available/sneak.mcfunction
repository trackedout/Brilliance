#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Card Available: ("},{"text":"§aSneak","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:\"gray\",OriginalName:'{\"color\":\"gray\",\"text\":\"✧ Sneak ✧\"}',ModifiedName:'{\"color\":\"gray\",\"text\":\"✧ Sneak ✧\"}'},CustomModelData:102,CustomRoleplayData:1b,display:{Name:'{\"color\":\"gray\",\"text\":\"✧ Sneak ✧\"}'}}}"}},{"text":")"}]
# - End Log -

execute as @p[tag=do2.received_shulker] run scoreboard players set @s do2.run.cards.available.SNE 1

# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_available 1
execute as @p[tag=do2.received_shulker] run function do2:agronet/card_available
