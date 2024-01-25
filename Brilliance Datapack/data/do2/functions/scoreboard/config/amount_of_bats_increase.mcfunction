execute if score $dungeon do2.config.amountOfBats matches ..0 run scoreboard players set $dungeon do2.config.amountOfBats 0
scoreboard players add $dungeon do2.config.amountOfBats 1
execute if score $dungeon do2.config.amountOfBats matches 15.. run scoreboard players set $dungeon do2.config.amountOfBats 15
function do2:scoreboard/config/amount_of_bats_display
