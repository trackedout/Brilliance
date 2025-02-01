#  - Start Log -
execute as @a[scores={do2.logs.cards=2..}] run tellraw @s ["",{"text":"§f[§9B§r]: Card Played: ("},{"text":"§aCash Cow","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:\"#8932B8\",OriginalName:'{\"color\":\"#8932B8\",\"text\":\"✧ Cash Cow ✧\"}',ModifiedName:'{\"color\":\"#8932B8\",\"text\":\"✧ Cash Cow ✧\"}'},CustomModelData:136,CustomRoleplayData:1b,display:{Name:'{\"color\":\"#8932B8\",\"text\":\"✧ Cash Cow ✧\"}'},tracked:0b}}"}},{"text":")"}]
# - End Log -

# Note a card has been played.
execute as @p[tag=do2.received_shulker] run scoreboard players add @s do2.run.cards.played.GLM 1
execute as @p[tag=do2.received_shulker] run scoreboard players add @s do2.cards.played.GLM 1
scoreboard players add $dungeon do2.run.cards.played.GLM 1
scoreboard players add $dungeon do2.cards.played.GLM 1
# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_played 40
execute as @p[tag=do2.received_shulker] run function do2:external/agronet/card_played
