execute if score $dungeon do2.config.cardsAlwaysAvailable matches 15.. run scoreboard players set $dungeon do2.config.cardsAlwaysAvailable 15
scoreboard players remove $dungeon do2.config.cardsAlwaysAvailable 1
execute if score $dungeon do2.config.cardsAlwaysAvailable matches ..0 run scoreboard players set $dungeon do2.config.cardsAlwaysAvailable 0
execute positioned -529 115 1952 run playsound do2:events.card_reveal voice @a[distance=..20] ~ ~ ~ 1 0.1

function do2:scoreboard/config/cards_always_available/sign
