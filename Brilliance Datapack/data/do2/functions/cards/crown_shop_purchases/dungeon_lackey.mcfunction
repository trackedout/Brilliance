#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Card Bought: ("},{"text":"§aDungeon Lackey","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:\"#fed83d\",OriginalName:'{\"text\":\"=✲ Dungeon Lackey ✲=\"}',ModifiedName:'{\"color\":\"#FED83D\",\"text\":\"=✲ Dungeon Lackey ✲=\"}'},display:{Name:'{\"color\":\"#FED83D\",\"text\":\"=✲ Dungeon Lackey ✲=\"}'},CustomRoleplayData:1b,RepairCost:0,CustomModelData:141,tracked:0b}}"}},{"text":")"}]
# - End Log -

# Note a card has been bought
execute as @p[tag=do2.received_shulker] run scoreboard players add @s do2.cards.bought.DUL 1

execute as @p[tag=do2.received_shulker] run scoreboard players add $dungeon do2.cards.bought.DUL 1

execute as @p[tag=do2.received_shulker] run scoreboard players add @s do2.lifetime.spent.crowns 8
scoreboard players add $dungeon do2.lifetime.spent.crowns 8

# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_bought 35
execute as @p[tag=do2.received_shulker] run function do2:external/agronet/card_bought
