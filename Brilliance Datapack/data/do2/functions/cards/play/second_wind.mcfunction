#  - Start Log -
execute as @a[scores={do2.logs.cards=2..}] run tellraw @s ["",{"text":"§f[§9B§r]: Card Played: ("},{"text":"§aSecond Wind","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:\"#80c71f\",OriginalName:'{\"color\":\"#80C71F\",\"text\":\"✧ Second Wind ✧\"}',ModifiedName:'{\"color\":\"#80C71F\",\"text\":\"✧ Second Wind ✧\"}'},CustomModelData:114,CustomRoleplayData:1b,display:{Name:'{\"color\":\"#80C71F\",\"text\":\"✧ Second Wind ✧\"}'},tracked:0b}}"}},{"text":")"}]
# - End Log -

# Note a card has been played.
execute as @p[tag=do2.received_shulker] run scoreboard players add @s do2.run.cards.played.SEW 1
execute as @p[tag=do2.received_shulker] run scoreboard players add @s do2.cards.played.SEW 1
scoreboard players add $dungeon do2.run.cards.played.SEW 1
scoreboard players add $dungeon do2.cards.played.SEW 1
# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_played 9
execute as @p[tag=do2.received_shulker] run function do2:external/agronet/card_played
