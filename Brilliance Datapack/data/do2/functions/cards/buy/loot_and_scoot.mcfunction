execute as @p[tag=received_shulker] run scoreboard players add @s do2.cards.bought.LAS 1
execute as @p[tag=received_shulker] run function do2:agronet/cards/buy/loot_and_scoot
