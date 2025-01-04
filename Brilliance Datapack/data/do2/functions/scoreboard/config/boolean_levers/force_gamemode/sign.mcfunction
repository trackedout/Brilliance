# Force Gamemode
setblock -529 116 1960 minecraft:oak_wall_sign[facing=north]
data merge block -529 116 1960 {is_waxed:1b, front_text:{has_glowing_text:1b,color:"cyan",messages:['{"text":"","color":""}','{"text":"Force Player\'s","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/boolean_levers/force_gamemode/display"}}','{"text":"Gamemodes"}','{"text":""}']}}
