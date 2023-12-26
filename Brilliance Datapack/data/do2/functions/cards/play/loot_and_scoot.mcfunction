execute as @p[tag=received_shulker] run scoreboard players add @s do2.cards.played.LAS 1
execute as @p[tag=received_shulker] run function do2:agronet/cards/play/loot_and_scoot
