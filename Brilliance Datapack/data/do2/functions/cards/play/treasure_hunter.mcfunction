#  - Start Log -
execute as @a[scores={do2.logs.cards=2..}] run tellraw @s ["",{"text":"[§9B§r]: Card Played: ("},{"text":"§aTreasure Hunter","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:\"gray\",OriginalName:'{\"color\":\"gray\",\"text\":\"✧ Treasure Hunter ✧\"}',ModifiedName:'{\"color\":\"gray\",\"text\":\"✧ Treasure Hunter ✧\"}'},CustomModelData:103,CustomRoleplayData:1b,display:{Name:'{\"color\":\"gray\",\"text\":\"✧ Treasure Hunter ✧\"}'}}}"}},{"text":")"}]
# - End Log -

execute as @p[tag=received_shulker] run scoreboard players add @s do2.run.cards.played.TRH 1
# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_played 3
execute as @p[tag=received_shulker] run function do2:agronet/card_played
