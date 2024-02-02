#  - Start Log -
execute as @a[scores={do2.logs.cards=2..}] run tellraw @s ["",{"text":"[§9B]: Card Played: ("},{"text":"§aSneak","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{colorFormat:\"gray\",OriginalName:'{\"color\":\"gray\",\"text\":\"✧ Sneak ✧\"}',ModifiedName:'{\"color\":\"gray\",\"text\":\"✧ Sneak ✧\"}'},CustomModelData:102,CustomRoleplayData:1b,display:{Name:'{\"color\":\"gray\",\"text\":\"✧ Sneak ✧\"}'}}"}},{"text":")"}]
# - End Log -

execute as @p[tag=received_shulker] run scoreboard players add @s do2.run.cards.played.SNE 1
# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_played 1
execute as @p[tag=received_shulker] run function do2:agronet/card_played
