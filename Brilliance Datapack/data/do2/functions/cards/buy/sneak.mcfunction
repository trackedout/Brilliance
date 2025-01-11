#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Card Bought: ("},{"text":"§aSneak","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:\"gray\",OriginalName:'{\"color\":\"gray\",\"text\":\"✧ Sneak ✧\"}',ModifiedName:'{\"color\":\"gray\",\"text\":\"✧ Sneak ✧\"}'},CustomModelData:102,CustomRoleplayData:1b,display:{Name:'{\"color\":\"gray\",\"text\":\"✧ Sneak ✧\"}'},tracked:0b}}"}},{"text":")"}]
# - End Log -

# Note a card has been bought
execute as @p[tag=do2.received_shulker] run scoreboard players add @s do2.cards.bought.SNE 1
execute as @p[tag=do2.received_shulker] run scoreboard players set @s do2.run.cards.bought.SNE 1

execute as @p[tag=do2.received_shulker] run scoreboard players add $dungeon do2.cards.bought.SNE 1
execute as @p[tag=do2.received_shulker] run scoreboard players set $dungeon do2.run.cards.bought.SNE 1

execute as @p[tag=do2.received_shulker] run scoreboard players operation @s do2.lifetime.spent.embers += $dungeon do2.cards.price.SNE
scoreboard players operation $dungeon do2.lifetime.spent.embers += $dungeon do2.cards.price.SNE

# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_bought 1
execute as @p[tag=do2.received_shulker] run function do2:external/agronet/card_bought
