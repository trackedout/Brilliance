#  - Start Log -
execute as @a[scores={do2.logs.cards=2..}] run tellraw @s ["",{"text":"[§9B]: Card Played: ("},{"text":"§aFuzzy Bunny Slippers","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{colorFormat:"#3c44aa",OriginalName:'{"color":"#3C44AA","text":"≡ Fuzzy Bunny Slippers ≡"}',ModifiedName:'{"color":"#3C44AA","text":"≡ Fuzzy Bunny Slippers ≡"}'},CustomModelData:133,CustomRoleplayData:1b,display:{Name:'{"color":"#3C44AA","text":"≡ Fuzzy Bunny Slippers ≡"}'}}"}},{"text":")"}]
# - End Log -

execute as @p[tag=received_shulker] run scoreboard players add @s do2.run.cards.played.FBS 1
# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_played 28
execute as @p[tag=received_shulker] run function do2:agronet/card_played
