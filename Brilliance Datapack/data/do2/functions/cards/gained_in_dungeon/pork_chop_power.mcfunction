#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Card Gained in Dungeon: ("},{"text":"§aPork Chop Power","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:\"#fed83d\",OriginalName:'{\"color\":\"gray\",\"text\":\"✲≡ Pork Chop Power ≡✲\"}',ModifiedName:'{\"color\":\"#FED83D\",\"text\":\"✲≡ Pork Chop Power ≡✲\"}'},CustomRoleplayData:1b,CustomModelData:109,display:{Name:'{\"color\":\"#FED83D\",\"text\":\"✲≡ Pork Chop Power ≡✲\"}'},tracked:0b}}"}},{"text":")"}]
 - End Log -

# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_bought 32
execute as @p[tag=do2.received_shulker] run function do2:agronet/card_bought