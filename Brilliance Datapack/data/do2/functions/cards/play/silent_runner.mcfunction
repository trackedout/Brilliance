execute as @p[tag=received_shulker] run scoreboard players add @s do2.run.cards.played.SIR 1
scoreboard players set card_played 27
execute as @p[tag=received_shulker] run function do2:agronet/card_played
