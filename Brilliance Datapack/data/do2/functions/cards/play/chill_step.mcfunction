#  - Start Log -
execute as @a[scores={do2.logs.cards=2..}] run tellraw @s ["",{"text":"[§9B§r]: Card Played: ("},{"text":"§aChill Step","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:\"#3c44aa\",OriginalName:'{\"color\":\"#3C44AA\",\"text\":\"✧ Chill Step ✧\"}',ModifiedName:'{\"color\":\"#3C44AA\",\"text\":\"✧ Chill Step ✧\"}'},CustomModelData:127,CustomRoleplayData:1b,display:{Name:'{\"color\":\"#3C44AA\",\"text\":\"✧ Chill Step ✧\"}'}}}"}},{"text":")"}]
# - End Log -

execute as @p[tag=do2.received_shulker] run scoreboard players add @s do2.run.cards.played.CHS 1
# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_played 22
execute as @p[tag=do2.received_shulker] run function do2:agronet/card_played
