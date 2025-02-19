# if ever ran manually, player receives this:
tellraw @s ["",{"text":"§fSet config [§fCards Always Available§f] to: "},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.config.cardsAlwaysAvailable"}}]

setblock -529 115 1952 minecraft:oak_wall_sign[facing=south]

execute if score $dungeon do2.config.cardsAlwaysAvailable matches ..0 run scoreboard players set $dungeon do2.config.cardsAlwaysAvailable 0
execute if score $dungeon do2.config.cardsAlwaysAvailable matches 26.. run scoreboard players set $dungeon do2.config.cardsAlwaysAvailable 26

# Config sign
execute if score $dungeon do2.config.cardsAlwaysAvailable matches 0..26 run data merge block -529 115 1952 {is_waxed:1b, front_text: {has_glowing_text: 0b, color: "black", messages: ['{"color":"#00FF00", "text":"▲▲ INCREASE ▲▲"}','{"color":"#FF00FF","text":"Cards Always"}','["",{"text":"Available:","color":"#FF00FF"},{"color":"aqua","score":{"objective":"do2.config.cardsAlwaysAvailable","name":"$dungeon"}},{"color":"aqua","text":"§f/§b26"}]','{"color":"#FF0000","text":"▼▼ DECREASE ▼▼","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/cards_always_available/display"}}']}}
