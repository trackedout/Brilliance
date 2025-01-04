# Vex Tracks Players Better
setblock -525 116 1960 minecraft:oak_wall_sign[facing=north]
data merge block -525 116 1960 {is_waxed:1b, front_text:{has_glowing_text:1b,color:"cyan",messages:['{"text":"","color":""}','{"text":"Vex Tracks","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/boolean_levers/better_vex/display"}}','{"text":"Players Better"}','{"text":""}']}}
