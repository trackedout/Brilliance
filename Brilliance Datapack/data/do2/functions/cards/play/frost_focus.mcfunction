#  - Start Log -
execute as @a[scores={do2.logs.cards=2..}] run tellraw @s ["",{"text":"[§9B]: Card Played: ("},{"text":"§aFrost Focus","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{colorFormat:"#80c71f",OriginalName:'{"color":"#80C71F","text":"✧ Frost Focus ✧"}',ModifiedName:'{"color":"#80C71F","text":"✧ Frost Focus ✧"}'},CustomModelData:112,CustomRoleplayData:1b,display:{Name:'{"color":"#80C71F","text":"✧ Frost Focus ✧"}'}}"}},{"text":")"}]
# - End Log -

execute as @p[tag=received_shulker] run scoreboard players add @s do2.run.cards.played.FRF 1
# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_played 8
execute as @p[tag=received_shulker] run function do2:agronet/card_played
