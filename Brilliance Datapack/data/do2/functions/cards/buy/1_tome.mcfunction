#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"[§9B§r]: Tome Bought: ("},{"text":"§3❄☠ Victory Tome ☠❄","hoverEvent":{"action":"show_item","value":"{id:"minecraft:iron_nugget",tag:{NameFormat:{italic:1,bold:0,OriginalName:'{"bold":false,"italic":true,"text":"❄☠ Victory Tome ☠❄"}',ModifiedName:'{"bold":false,"italic":true,"text":"❄☠ Victory Tome ☠❄"}'},CustomRoleplayData:1b,CustomModelData:6,display:{Name:'{"bold":false,"italic":true,"text":"❄☠ Victory Tome ☠❄"}'}},Count:1b}"}},{"text":")"}]
# - End Log -

execute as @p[tag=received_shulker] run scoreboard players add @s do2.cards.bought.1TM 1
execute as @p[tag=received_shulker] run scoreboard players set @s do2.run.cards.bought.1TM 1

# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_bought -1
execute as @p[tag=received_shulker] run function do2:agronet/card_bought
