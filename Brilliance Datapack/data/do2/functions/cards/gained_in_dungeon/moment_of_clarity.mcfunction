#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Card Gained in Dungeon: ("},{"text":"§aMoment Of Clarity","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:\"gray\",OriginalName:'{\"color\":\"gray\",\"text\":\"✲ Moment of Clarity ✲\"}',ModifiedName:'{\"color\":\"gray\",\"text\":\"✲ Moment of Clarity ✲\"}'},CustomRoleplayData:1b,CustomModelData:106,display:{Name:'{\"color\":\"gray\",\"text\":\"✲ Moment of Clarity ✲\"}'},tracked:0b}}"}},{"text":")"}]
# - End Log -

# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_bought 31
execute as @p[tag=do2.received_shulker] run function do2:external/agronet/card_bought
