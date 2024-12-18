# Force player's saturation and food
setblock -535 116 1960 minecraft:oak_wall_sign[facing=north]
data merge block -535 116 1960 {front_text:{has_glowing_text:1b,color:"cyan",messages:['{"text":""}','{"text":"Force Player\'s","color":""}','{"text":"Food & Saturation","italic":"true","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/boolean_levers/force_food/display"}}','{"text":"Levels.","italic":"true"}']}}
