# Splits $bank into $bank1 and $bank2. even if $bank is an odd number
execute unless score $bank do2.config.cardsAlwaysAvailable matches 1.. run return 0
scoreboard players add $bank1 do2.config.cardsAlwaysAvailable 1
scoreboard players remove $bank do2.config.cardsAlwaysAvailable 1
execute unless score $bank do2.config.cardsAlwaysAvailable matches 1.. run return 0
scoreboard players add $bank2 do2.config.cardsAlwaysAvailable 1
scoreboard players remove $bank do2.config.cardsAlwaysAvailable 1
execute unless score $bank do2.config.cardsAlwaysAvailable matches 1.. run function do2:dungeon_setup/make_cards_always_available/determine_slots
