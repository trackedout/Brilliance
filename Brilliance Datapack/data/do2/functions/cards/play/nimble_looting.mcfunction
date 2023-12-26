execute as @p[tag=received_shulker] run scoreboard players add @s do2.cards.played.NIL 1
execute as @p[tag=received_shulker] run function do2:agronet/cards/play/nimble_looting
