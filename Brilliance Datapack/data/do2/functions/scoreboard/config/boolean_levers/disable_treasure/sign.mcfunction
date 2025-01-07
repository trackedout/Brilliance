# Disable Treasure on Max Clank
setblock -531 116 1960 minecraft:oak_wall_sign[facing=north]
data merge block -531 116 1960 {is_waxed:1b, front_text:{has_glowing_text:1b,color:"cyan",messages:['{"text":""}','{"text":"Disable Treasure","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/boolean_levers/disable_treasure/display"}}','{"text":"§bon §oMAX §r§bclank"}','{"text":""}']}}
