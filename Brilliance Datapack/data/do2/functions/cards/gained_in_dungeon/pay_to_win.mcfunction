#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Card Gained in Dungeon: ("},{"text":"§aPay To Win","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:\"#fed83d\",OriginalName:'{\"text\":\"✲ Pay to Win ✲\"}',ModifiedName:'{\"color\":\"#FED83D\",\"text\":\"✲ Pay to Win ✲\"}'},CustomRoleplayData:1b,CustomModelData:107,display:{Name:'{\"color\":\"#FED83D\",\"text\":\"✲ Pay to Win ✲\"}'},tracked:0b}}"}},{"text":")"}]
# - End Log -

# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_bought 33
execute as @p[tag=do2.received_shulker] run function do2:external/agronet/card_bought
