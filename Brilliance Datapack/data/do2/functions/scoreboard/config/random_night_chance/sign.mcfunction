# if ever ran manually, player receives this:
tellraw @s ["",{"text":"§fSet config [§8Random Night Chance§f] to: "},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.config.nightTimeChance"}},{"text":"§b%"}]

setblock -527 115 1952 oak_wall_sign[facing=south]
execute if score $dungeon do2.config.nightTimeChance matches ..-5 run scoreboard players set $dungeon do2.config.nightTimeChance -5
execute if score $dungeon do2.config.nightTimeChance matches 100.. run scoreboard players set $dungeon do2.config.nightTimeChance 100

data merge block -527 115 1952 {is_waxed:1b, front_text: {has_glowing_text: 0b, color: "black", messages: ['{"color":"#00FF00","text":"▲▲ INCREASE ▲▲"}', '{"color":"#FF0000","text":"Something went"}', '{"color":"#FF0000","text":"wrong..."}', '{"color":"#FF0000","text":"▼▼ DECREASE ▼▼","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/random_night_chance/display"}}']}}

execute if score $dungeon do2.config.nightTimeChance matches -5 run data merge block -527 115 1952 {is_waxed:1b, front_text: {has_glowing_text: 0b, color: "black", messages: ['{"color":"#00FF00","text":"▲▲ INCREASE ▲▲"}', '{"color":"#FF00FF","text":"Random Chance"}', '{"color":"#FF0000","text":"DISABLED","bold":"true"}', '{"color":"#FF0000","text":"▼▼ DECREASE ▼▼","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/random_night_chance/display"}}']}}
execute if score $dungeon do2.config.nightTimeChance matches 0..100 run data merge block -527 115 1952 {is_waxed:1b, front_text: {has_glowing_text: 0b, color: "black", messages: ['{"color":"#00FF00", "text":"▲▲ INCREASE ▲▲"}','{"color":"#FF00FF","text":"Random Chance"}','["",{"text":"of Night: ","color":"#FF00FF"},{"color":"aqua","score":{"objective":"do2.config.nightTimeChance","name":"$dungeon"}},{"color":"aqua","text":"%"}]','{"color":"#FF0000","text":"▼▼ DECREASE ▼▼","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/random_night_chance/display"}}']}}
