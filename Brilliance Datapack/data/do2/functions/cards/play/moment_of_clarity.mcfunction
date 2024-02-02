#  - Start Log -
execute as @a[scores={do2.logs.cards=2..}] run tellraw @s ["",{"text":"[§9B§r]: Card Played: ("},{"text":"§aMoment Of Clarity","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:\"gray\",OriginalName:'{\"color\":\"gray\",\"text\":\"✲ Moment of Clarity ✲\"}',ModifiedName:'{\"color\":\"gray\",\"text\":\"✲ Moment of Clarity ✲\"}'},CustomRoleplayData:1b,CustomModelData:106,display:{Name:'{\"color\":\"gray\",\"text\":\"✲ Moment of Clarity ✲\"}'}}}"}},{"text":")"}]
# - End Log -

execute as @p[tag=received_shulker] run scoreboard players add @s do2.run.cards.played.MOC 1
# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_played 0
execute as @p[tag=received_shulker] run function do2:agronet/card_played
