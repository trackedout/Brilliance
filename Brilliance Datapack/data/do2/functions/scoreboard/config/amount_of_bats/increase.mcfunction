execute if score $dungeon do2.config.amountOfBats matches ..0 run scoreboard players set $dungeon do2.config.amountOfBats 0
scoreboard players add $dungeon do2.config.amountOfBats 1
execute if score $dungeon do2.config.amountOfBats matches 15.. run scoreboard players set $dungeon do2.config.amountOfBats 15
execute positioned -531 115 1952 run playsound minecraft:entity.bat.ambient voice @a[distance=..20] ~ ~ ~ 0.8 1

function do2:scoreboard/config/amount_of_bats/sign
