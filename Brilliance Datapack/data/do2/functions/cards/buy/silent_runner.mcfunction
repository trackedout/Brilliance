execute as @p[tag=received_shulker] run scoreboard players add @s do2.cards.bought.SIR 1
execute as @p[tag=received_shulker] run scoreboard players set @s do2.run.cards.bought.SIR 1
# Agronet Event Handling
scoreboard players set card_bought 27
execute as @p[tag=received_shulker] run function do2:agronet/card_bought
