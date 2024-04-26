#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Card Available: ("},{"text":"§aStability","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:\"gray\",OriginalName:'{\"color\":\"gray\",\"text\":\"✧ Stability ✧\"}',ModifiedName:'{\"color\":\"gray\",\"text\":\"✧ Stability ✧\"}'},CustomModelData:105,CustomRoleplayData:1b,display:{Name:'{\"color\":\"gray\",\"text\":\"✧ Stability ✧\"}'}}}"}},{"text":")"}]
# - End Log -

execute as @p[tag=do2.received_shulker] run scoreboard players set @s do2.run.cards.available.STA 1

# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_available 2
execute as @p[tag=do2.received_shulker] run function do2:agronet/card_available
