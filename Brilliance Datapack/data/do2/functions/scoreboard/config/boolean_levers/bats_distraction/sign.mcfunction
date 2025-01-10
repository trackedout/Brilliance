# Bat Distraction Sign
setblock -537 116 1960 minecraft:oak_wall_sign[facing=north]
data merge block -537 116 1960 {is_waxed:1b, is_waxed:1b, front_text:{has_glowing_text:1b,color:"cyan",messages:['{"text":""}','{"text":"Bats Distract","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/boolean_levers/bats_distraction/display"}}','{"text":"Wardens"}','{"text":""}']}}
