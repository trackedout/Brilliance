execute as @p[tag=received_shulker] run scoreboard players add @s do2.cards.bought.EMS 1
execute as @p[tag=received_shulker] run scoreboard players set @s do2.run.cards.bought.EMS 1
# Agronet Event Handling
scoreboard players set $dungeon do2.utility.card_bought 4
execute as @p[tag=received_shulker] run function do2:agronet/card_bought
