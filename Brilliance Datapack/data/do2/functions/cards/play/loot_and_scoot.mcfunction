execute as @p[tag=received_shulker] run scoreboard players add @s do2.run.cards.played.LAS 1
scoreboard players set card_played 7
execute as @p[tag=received_shulker] run function do2:agronet/card_played
