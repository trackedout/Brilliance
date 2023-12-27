execute as @p[tag=received_shulker] run scoreboard players add @s do2.run.cards.played.P2W 1
scoreboard players set card_played 31
execute as @p[tag=received_shulker] run function do2:agronet/card_played
