#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Card Bought: ("},{"text":"§aReckless Charge","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:"#80c71f",OriginalName:'{"color":"#80C71F","text":"✧ Reckless Charge ✧"}',ModifiedName:'{"color":"#80C71F","text":"✧ Reckless Charge ✧"}'},CustomModelData:119,CustomRoleplayData:1b,display:{Name:'{"color":"#80C71F","text":"✧ Reckless Charge ✧"}'},tracked:0b}}"}},{"text":")"}]
# - End Log -

# Note a card has been bought
execute as @p[tag=do2.received_shulker] run scoreboard players add @s do2.cards.bought.REC 1
execute as @p[tag=do2.received_shulker] run scoreboard players set @s do2.run.cards.bought.REC 1

execute as @p[tag=do2.received_shulker] run scoreboard players add $dungeon do2.cards.bought.REC 1
execute as @p[tag=do2.received_shulker] run scoreboard players set $dungeon do2.run.cards.bought.REC 1

# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_bought 12
execute as @p[tag=do2.received_shulker] run function do2:agronet/card_bought
