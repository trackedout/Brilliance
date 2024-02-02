#  - Start Log -
execute as @a[scores={do2.logs.cards=2..}] run tellraw @s ["",{"text":"[§9B§r]: Card Played: ("},{"text":"§aPay To Win","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:\"#fed83d\",OriginalName:'{\"text\":\"✲ Pay to Win ✲\"}',ModifiedName:'{\"color\":\"#FED83D\",\"text\":\"✲ Pay to Win ✲\"}'},CustomRoleplayData:1b,CustomModelData:107,display:{Name:'{\"color\":\"#FED83D\",\"text\":\"✲ Pay to Win ✲\"}'}}}"}},{"text":")"}]
# - End Log -

execute as @p[tag=received_shulker] run scoreboard players add @s do2.run.cards.played.P2W 1
# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_played 31
execute as @p[tag=received_shulker] run function do2:agronet/card_played
