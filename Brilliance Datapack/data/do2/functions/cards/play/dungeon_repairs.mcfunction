execute as @p[tag=received_shulker] run scoreboard players add @s do2.run.cards.played.DUR 1
scoreboard players set card_played 20
execute as @p[tag=received_shulker] run function do2:agronet/card_played
