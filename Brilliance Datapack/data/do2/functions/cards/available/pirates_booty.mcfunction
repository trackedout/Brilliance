#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"[§9B]: Card Available: ("},{"text":"§aPirates Booty","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{colorFormat:"#3c44aa",OriginalName:'{"text":"✧ Pirate\'s Booty ✧"}',ModifiedName:'{"color":"#3C44AA","text":"✧ Pirate\'s Booty ✧"}'},CustomModelData:130,CustomRoleplayData:1b,display:{Name:'{"color":"#3C44AA","text":"✧ Pirate\'s Booty ✧"}'}}"}},{"text":")"}]
# - End Log -

execute as @p[tag=received_shulker] run scoreboard players set @s do2.run.cards.availible.PIB 1

# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_available 25
execute as @p[tag=received_shulker] run function do2:agronet/card_available
