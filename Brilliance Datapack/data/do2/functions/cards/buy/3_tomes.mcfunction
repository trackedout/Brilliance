#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: 3 Tomes Bought: ("},{"text":"§3❄☠ Victory Tome ☠❄","hoverEvent":{"action":"show_item","value":"{id:\"minecraft:iron_nugget\",tag:{NameFormat:{italic:1,bold:0,OriginalName:'{\"bold\":false,\"italic\":true,\"text\":\"❄☠ Victory Tome ☠❄\"}',ModifiedName:'{\"bold\":false,\"italic\":true,\"text\":\"❄☠ Victory Tome ☠❄\"}'},CustomRoleplayData:1b,CustomModelData:6,display:{Name:'{\"bold\":false,\"italic\":true,\"text\":\"❄☠ Victory Tome ☠❄\"}'}},Count:3b}"}},{"text":")"}]
# - End Log -

execute as @p[tag=do2.received_shulker] run scoreboard players add @s do2.lifetime.escaped.tomes 3
execute as @p[tag=do2.received_shulker] run scoreboard players add @s do2.cards.bought.3TM 1
execute as @p[tag=do2.received_shulker] run scoreboard players set @s do2.run.cards.bought.3TM 1
execute as @p[tag=do2.received_shulker] run scoreboard players operation @s do2.lifetime.spent.embers += $dungeon do2.cards.price.3TM
scoreboard players operation $dungeon do2.lifetime.spent.embers += $dungeon do2.cards.price.3TM

# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_bought -2
execute as @p[tag=do2.received_shulker] run function do2:agronet/card_bought
