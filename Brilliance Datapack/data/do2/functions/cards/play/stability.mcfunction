execute as @p[tag=received_shulker] run scoreboard players add @s do2.run.cards.played.STA 1
execute as @p[tag=received_shulker] run function do2:agronet/cards/play/stability
