#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Card Available: ("},{"text":"§aAdrenaline Rush","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:\"#80c71f\",OriginalName:'{\"color\":\"#80C71F\",\"text\":\"✧ Adrenaline Rush ✧\"}',ModifiedName:'{\"color\":\"#80C71F\",\"text\":\"✧ Adrenaline Rush ✧\"}'},CustomModelData:123,CustomRoleplayData:1b,display:{Name:'{\"color\":\"#80C71F\",\"text\":\"✧ Adrenaline Rush ✧\"}'},tracked:0b}}"}},{"text":")"}]
# - End Log -

# Note that this card has been available.
execute as @p[tag=do2.received_shulker] run scoreboard players set @s do2.run.cards.available.ADR 1
execute as @p[tag=do2.received_shulker] run scoreboard players add @s do2.cards.available.ADR 1
scoreboard players set $dungeon do2.run.cards.available.ADR 1

scoreboard players add $dungeon do2.cards.available.ADR 1


# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_available 18
execute as @p[tag=do2.received_shulker] run function do2:external/agronet/card_available
