#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Item Bought: ("},{"text":"§bFrozen Shard","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:\"#3ab3da\",OriginalName:'{\"color\":\"#3AB3DA\",\"text\":\"❄☠ Frozen Shard ☠❄\"}',ModifiedName:'{\"color\":\"#3AB3DA\",\"text\":\"❄☠ Frozen Shard ☠❄\"}'},CustomRoleplayData:1b,CustomModelData:108,display:{Name:'{\"color\":\"#3AB3DA\",\"text\":\"❄☠ Frozen Shard ☠❄\"}'},tracked:0b}}"}},{"text":")"}]
#  - End Log -


execute as @p[tag=do2.received_shulker] run scoreboard players add @s do2.lifetime.spent.crowns 10
scoreboard players add $dungeon do2.lifetime.spent.crowns 10
