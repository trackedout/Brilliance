#  - Start Log -
execute as @a[scores={do2.logs.cards=2..}] run tellraw @s ["",{"text":"[§9B]: Card Played: ("},{"text":"§aBeast Sense","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{colorFormat:"#80c71f",OriginalName:'{"color":"#80C71F","text":"✧ Beast Sense ✧"}',ModifiedName:'{"color":"#80C71F","text":"✧ Beast Sense ✧"}'},CustomModelData:115,CustomRoleplayData:1b,display:{Name:'{"color":"#80C71F","text":"✧ Beast Sense ✧"}'}}"}},{"text":")"}]
# - End Log -

execute as @p[tag=received_shulker] run scoreboard players add @s do2.run.cards.played.BES 1
# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_played 10
execute as @p[tag=received_shulker] run function do2:agronet/card_played
