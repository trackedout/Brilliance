#  - Start Log -
execute as @a[scores={do2.logs.cards=2..}] run tellraw @s ["",{"text":"§f[§9B§r]: Card Played: ("},{"text":"§aChill Step","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:\"#3c44aa\",OriginalName:'{\"color\":\"#3C44AA\",\"text\":\"✧ Chill Step ✧\"}',ModifiedName:'{\"color\":\"#3C44AA\",\"text\":\"✧ Chill Step ✧\"}'},CustomModelData:127,CustomRoleplayData:1b,display:{Name:'{\"color\":\"#3C44AA\",\"text\":\"✧ Chill Step ✧\"}'},tracked:0b}}"}},{"text":")"}]
# - End Log -

# Note a card has been played.
execute as @p[tag=do2.received_shulker] run scoreboard players add @s do2.run.cards.played.CHS 1
execute as @p[tag=do2.received_shulker] run scoreboard players add @s do2.cards.played.CHS 1
scoreboard players add $dungeon do2.run.cards.played.CHS 1
scoreboard players add $dungeon do2.cards.played.CHS 1
# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_played 22
execute as @p[tag=do2.received_shulker] run function do2:external/agronet/card_played
