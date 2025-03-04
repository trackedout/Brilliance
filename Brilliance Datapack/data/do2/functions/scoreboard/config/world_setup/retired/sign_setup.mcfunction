# Title
setblock -521 69 2174 minecraft:oak_wall_sign[facing=west]
data merge block -521 69 2174 {is_waxed:1b,front_text:{color:'white',has_glowing_text:true,messages:['{"text":""}','{"text":"Retired Hermits"}','{"text":"Artifacts/Eggs"}','{"text":""}']}}

# Default
setblock -521 68 2173 minecraft:oak_wall_sign[facing=west]
data merge block -521 68 2173 {is_waxed:1b,front_text:{color:'brown',has_glowing_text:true,messages:['{"text":""}','{"text":"Defaulted"}','{"text":""}','{"text":"","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/world_setup/retired/defaulted"}}']}}

# More Info
setblock -521 68 2174 minecraft:oak_wall_sign[facing=west]
data merge block -521 68 2174 {is_waxed:1b,front_text:{color:'light_blue',has_glowing_text:true,messages:['{"text":""}','{"text":"( more info )"}','{"text":""}','{"text":"","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/world_setup/retired/more_info"}}']}}

# Tangofied
setblock -521 68 2175 minecraft:oak_wall_sign[facing=west]
data merge block -521 68 2175 {is_waxed:1b,front_text:{color:'purple',has_glowing_text:true,messages:['{"text":""}','{"text":"Tangofied"}','{"text":""}','{"text":"","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/world_setup/retired/tangofied"}}']}}
