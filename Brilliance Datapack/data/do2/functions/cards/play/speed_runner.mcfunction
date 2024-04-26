#  - Start Log -
execute as @a[scores={do2.logs.cards=2..}] run tellraw @s ["",{"text":"§f[§9B§r]: Card Played: ("},{"text":"§aSpeed Runner","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:\"#3c44aa\",OriginalName:'{\"color\":\"#3C44AA\",\"text\":\"≡ Speed Runner ≡\"}',ModifiedName:'{\"color\":\"#3C44AA\",\"text\":\"≡ Speed Runner ≡\"}'},CustomModelData:125,CustomRoleplayData:1b,display:{Name:'{\"color\":\"#3C44AA\",\"text\":\"≡ Speed Runner ≡\"}'},tracked:0b}}"}},{"text":")"}]
# - End Log -

# Note a card has been played.
execute as @p[tag=do2.received_shulker] run scoreboard players add @s do2.run.cards.played.SPR 1
execute as @p[tag=do2.received_shulker] run scoreboard players add @s do2.cards.played.SPR 1
scoreboard players add $dungeon do2.run.cards.played.SPR 1
scoreboard players add $dungeon do2.cards.played.SPR 1
# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_played 23
execute as @p[tag=do2.received_shulker] run function do2:agronet/card_played
