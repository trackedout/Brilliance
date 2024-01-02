execute as @p[tag=received_shulker] run scoreboard players add @s do2.cards.bought.MOC 1
execute as @p[tag=received_shulker] run scoreboard players set @s do2.run.cards.bought.MOC 1
# Agronet Event Handling
scoreboard players set card_bought 0
execute as @p[tag=received_shulker] run function do2:agronet/card_bought
