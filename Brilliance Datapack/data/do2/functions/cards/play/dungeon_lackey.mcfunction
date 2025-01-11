#  - Start Log -
execute as @a[scores={do2.logs.cards=2..}] run tellraw @s ["",{"text":"§f[§9B§r]: Card Played: ("},{"text":"§aDungeon Lackey","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:\"#fed83d\",OriginalName:'{\"text\":\"=✲ Dungeon Lackey ✲=\"}',ModifiedName:'{\"color\":\"#FED83D\",\"text\":\"=✲ Dungeon Lackey ✲=\"}'},display:{Name:'{\"color\":\"#FED83D\",\"text\":\"=✲ Dungeon Lackey ✲=\"}'},CustomRoleplayData:1b,RepairCost:0,CustomModelData:141,tracked:0b}}"}},{"text":")"}]
# - End Log -

# Note a card has been played.
execute as @p[tag=do2.received_shulker] run scoreboard players add @s do2.run.cards.played.DUL 1
execute as @p[tag=do2.received_shulker] run scoreboard players add @s do2.cards.played.DUL 1
scoreboard players add $dungeon do2.run.cards.played.DUL 1
scoreboard players add $dungeon do2.cards.played.DUL 1
# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_played 35
execute as @p[tag=do2.received_shulker] run function do2:external/agronet/card_played
