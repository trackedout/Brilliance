#  - Start Log -
execute as @a[scores={do2.logs.cards=2..}] run tellraw @s ["",{"text":"§f[§9B§r]: Card Played: ("},{"text":"§aBeast Sense","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:\"#80c71f\",OriginalName:'{\"color\":\"#80C71F\",\"text\":\"✧ Beast Sense ✧\"}',ModifiedName:'{\"color\":\"#80C71F\",\"text\":\"✧ Beast Sense ✧\"}'},CustomModelData:115,CustomRoleplayData:1b,display:{Name:'{\"color\":\"#80C71F\",\"text\":\"✧ Beast Sense ✧\"}'},tracked:0b}}"}},{"text":")"}]
# - End Log -

# Note a card has been played.
execute as @p[tag=do2.received_shulker] run scoreboard players add @s do2.run.cards.played.BES 1
execute as @p[tag=do2.received_shulker] run scoreboard players add @s do2.cards.played.BES 1
scoreboard players add $dungeon do2.run.cards.played.BES 1
scoreboard players add $dungeon do2.cards.played.BES 1
# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_played 10
execute as @p[tag=do2.received_shulker] run function do2:agronet/card_played
