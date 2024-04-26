# Reset stats screen unless
setblock -498 125 1986 oak_wall_sign[facing=south]
setblock -496 125 1986 oak_wall_sign[facing=south]
setblock -494 125 1986 oak_wall_sign[facing=south]
setblock -498 125 1994 oak_wall_sign[facing=north]
setblock -496 125 1994 oak_wall_sign[facing=north]
setblock -494 125 1994 oak_wall_sign[facing=north]

data merge block -498 125 1986 {front_text:{has_glowing_text:1b,color:"white",is_waxed:1b,messages:['{"text":""}','{"text":"View §lGeneral","color":""}','{"text":"Statistics","color":""}','{"text":"","color":"","clickEvent":{"action":"run_command","value":"/function do2:statistics_room/swap_to_screen_0"}}']},is_waxed:1b}
data merge block -496 125 1986 {front_text:{has_glowing_text:1b,color:"white",is_waxed:1b,messages:['{"text":""}','{"text":"View §eTreasure","color":""}','{"text":"Statistics","color":""}','{"text":"","color":"","clickEvent":{"action":"run_command","value":"/function do2:statistics_room/swap_to_screen_1"}}']},is_waxed:1b}
data merge block -494 125 1986 {front_text:{has_glowing_text:1b,color:"white",is_waxed:1b,messages:['{"text":""}','{"text":"View §bEmbers","color":""}','{"text":"Statistics","color":""}','{"text":"","color":"","clickEvent":{"action":"run_command","value":"/function do2:statistics_room/swap_to_screen_2"}}']},is_waxed:1b}
data merge block -498 125 1994 {front_text:{has_glowing_text:1b,color:"white",is_waxed:1b,messages:['{"text":""}','{"text":"View §5Last Run","color":""}','{"text":"Statistics","color":""}','{"text":"","color":"","clickEvent":{"action":"run_command","value":"/function do2:statistics_room/swap_to_screen_3"}}']},is_waxed:1b}

