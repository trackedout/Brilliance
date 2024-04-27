#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Card Bought: ("},{"text":"§aEerie Silence","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:\"#3c44aa\",OriginalName:'{\"color\":\"#3C44AA\",\"text\":\"✧ Eerie Silence ✧\"}',ModifiedName:'{\"color\":\"#3C44AA\",\"text\":\"✧ Eerie Silence ✧\"}'},CustomModelData:126,CustomRoleplayData:1b,display:{Name:'{\"color\":\"#3C44AA\",\"text\":\"✧ Eerie Silence ✧\"}'},tracked:0b}}"}},{"text":")"}]
# - End Log -

# Note a card has been bought
execute as @p[tag=do2.received_shulker] run scoreboard players add @s do2.cards.bought.EES 1
execute as @p[tag=do2.received_shulker] run scoreboard players set @s do2.run.cards.bought.EES 1

execute as @p[tag=do2.received_shulker] run scoreboard players add $dungeon do2.cards.bought.EES 1
execute as @p[tag=do2.received_shulker] run scoreboard players set $dungeon do2.run.cards.bought.EES 1

execute as @p[tag=do2.received_shulker] run scoreboard players operation @s do2.lifetime.spent.embers += $dungeon do2.cards.price.EES
scoreboard players operation $dungeon do2.lifetime.spent.embers += $dungeon do2.cards.price.EES

# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_bought 19
execute as @p[tag=do2.received_shulker] run function do2:agronet/card_bought
