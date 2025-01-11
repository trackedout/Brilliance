#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Card Available: ("},{"text":"§aDungeon Repairs","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:\"#3c44aa\",OriginalName:'{\"color\":\"#3C44AA\",\"text\":\"✧ Dungeon Repairs ✧\"}',ModifiedName:'{\"color\":\"#3C44AA\",\"text\":\"✧ Dungeon Repairs ✧\"}'},CustomModelData:128,CustomRoleplayData:1b,display:{Name:'{\"color\":\"#3C44AA\",\"text\":\"✧ Dungeon Repairs ✧\"}'},tracked:0b}}"}},{"text":")"}]
# - End Log -

# Note that this card has been available.
execute as @p[tag=do2.received_shulker] run scoreboard players set @s do2.run.cards.available.DUR 1
execute as @p[tag=do2.received_shulker] run scoreboard players add @s do2.cards.available.DUR 1
scoreboard players set $dungeon do2.run.cards.available.DUR 1

scoreboard players add $dungeon do2.cards.available.DUR 1


# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_available 20
execute as @p[tag=do2.received_shulker] run function do2:external/agronet/card_available
