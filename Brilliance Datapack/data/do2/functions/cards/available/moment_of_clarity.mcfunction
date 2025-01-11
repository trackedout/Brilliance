#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Card Available: ("},{"text":"§aMoment Of Clarity","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:\"gray\",OriginalName:'{\"color\":\"gray\",\"text\":\"✲ Moment of Clarity ✲\"}',ModifiedName:'{\"color\":\"gray\",\"text\":\"✲ Moment of Clarity ✲\"}'},CustomRoleplayData:1b,CustomModelData:106,display:{Name:'{\"color\":\"gray\",\"text\":\"✲ Moment of Clarity ✲\"}'},tracked:0b}}"}},{"text":")"}]
# - End Log -

# Note that this card has been available.
execute as @p[tag=do2.received_shulker] run scoreboard players set @s do2.run.cards.available.MOC 1
execute as @p[tag=do2.received_shulker] run scoreboard players add @s do2.cards.available.MOC 1
scoreboard players set $dungeon do2.run.cards.available.MOC 1

scoreboard players add $dungeon do2.cards.available.MOC 1


# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_available 0
execute as @p[tag=do2.received_shulker] run function do2:external/agronet/card_available
