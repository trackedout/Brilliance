# if ever ran manually, player receives this:
tellraw @s ["",{"text":"§fSet config [§fAmount of Bats§f] to: "},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.config.amountOfBats"}}]

setblock -531 115 1952 minecraft:oak_wall_sign[facing=south]

execute if score $dungeon do2.config.amountOfBats matches ..0 run scoreboard players set $dungeon do2.config.amountOfBats 0
execute if score $dungeon do2.config.amountOfBats matches 15.. run scoreboard players set $dungeon do2.config.amountOfBats 15

# Config sign
execute if score $dungeon do2.config.amountOfBats matches 0..15 run data merge block -531 115 1952 {is_waxed:1b, front_text: {has_glowing_text: 0b, color: "black", messages: ['{"color":"#00FF00", "text":"▲▲ INCREASE ▲▲"}','{"color":"#FF00FF","text":"Amount of Bats:"}','["",{"color":"#aqua","score":{"objective":"do2.config.amountOfBats","name":"$dungeon"}},{"color":"aqua","text":"§f/§b%"}]','{"color":"#FF0000","text":"▼▼ DECREASE ▼▼","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/amount_of_bats/display"}}']}}


# Debug sign,
setblock -585 31 1912 minecraft:oak_sign[rotation=0]
execute if score $dungeon do2.config.amountOfBats matches 0..15 run data merge block -585 31 1912 {is_waxed:1b, front_text: {has_glowing_text: 0b, color: "black", messages: ['{"color":"#00FF00", "text":"Amount of Bats"}','{"color":"#00FF00","text":"Currently here:"}','["",{"color":"#aqua","score":{"objective":"do2.config.amountOfBats","name":"$dungeon"}},{"color":"aqua","text":"§f/§b15"}]','{"text":""}']}}
