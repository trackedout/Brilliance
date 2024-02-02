#  - Start Log -
execute as @a[scores={do2.logs.cards=2..}] run tellraw @s ["",{"text":"[§9B]: Card Played: ("},{"text":"§aStability","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{colorFormat:"gray",OriginalName:'{"color":"gray","text":"✧ Stability ✧"}',ModifiedName:'{"color":"gray","text":"✧ Stability ✧"}'},CustomModelData:105,CustomRoleplayData:1b,display:{Name:'{"color":"gray","text":"✧ Stability ✧"}'}}"}},{"text":")"}]
# - End Log -

execute as @p[tag=received_shulker] run scoreboard players add @s do2.run.cards.played.STA 1
# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_played 2
execute as @p[tag=received_shulker] run function do2:agronet/card_played
