#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Card Gained in Dungeon: ("},{"text":"§aTactical Approach","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:\"#fed83d\",OriginalName:'{\"color\":\"#FED83D\",\"text\":\"✲≡ Tactical Approach ≡✲\"}',ModifiedName:'{\"color\":\"#FED83D\",\"text\":\"✲≡ Tactical Approach ≡✲\"}'},CustomRoleplayData:1b,CustomModelData:108,display:{Name:'{\"color\":\"#FED83D\",\"text\":\"✲≡ Tactical Approach ≡✲\"}'},tracked:0b}}"}},{"text":")"}]
# - End Log -

# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_bought 34
execute as @p[tag=do2.received_shulker] run function do2:agronet/card_bought