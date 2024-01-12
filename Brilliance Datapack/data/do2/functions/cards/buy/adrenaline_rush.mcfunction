# - Start Log -
# TODO: do all cards.
#execute as @a[scores={do2.utility.logLevel=1..}] run tellraw @s ["",{"text":"[§9B]: Card Bought: ("},{"text":"§aAdrenaline Rush","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{CustomModelData:123, display:{Name:'[{\"color\":\"#80C71F\",\"text\":\"✧ Adrenaline Rush ✧\"}]'}}}"}},{"text":")"}]
# - End Log -

execute as @p[tag=received_shulker] run scoreboard players add @s do2.cards.bought.ADR 1
execute as @p[tag=received_shulker] run scoreboard players set @s do2.run.cards.bought.ADR 1
# Agronet Event Handling
scoreboard players set $dungeon do2.utility.card_bought 18
execute as @p[tag=received_shulker] run function do2:agronet/card_bought
