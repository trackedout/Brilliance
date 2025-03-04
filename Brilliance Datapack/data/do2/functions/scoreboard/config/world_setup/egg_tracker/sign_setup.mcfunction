# Title
setblock -527 69 2174 minecraft:oak_wall_sign[facing=east]
data merge block -527 69 2174 {is_waxed:1b,front_text:{color:'white',has_glowing_text:true,messages:['{"text":""}','{"text":"Level 4\'s"}','{"text":"Egg Tracker"}','{"text":""}']}}

# Tangofied
setblock -527 68 2175 minecraft:oak_wall_sign[facing=east]
data merge block -527 68 2175 {is_waxed:1b,front_text:{color:'green',has_glowing_text:true,messages:['{"text":""}','{"text":"Randomized"}','{"text":""}','{"text":"","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/world_setup/egg_tracker/randomized"}}']}}

# More Info
setblock -527 67 2174 minecraft:oak_wall_sign[facing=east]
data merge block -527 67 2174 {is_waxed:1b,front_text:{color:'orange',has_glowing_text:true,messages:['{"text":""}','{"text":"Emptied"}','{"text":""}','{"text":"","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/world_setup/egg_tracker/emptied"}}']}}

# Completed
setblock -527 68 2173 minecraft:oak_wall_sign[facing=east]
data merge block -527 68 2173 {is_waxed:1b,front_text:{color:'yellow',has_glowing_text:true,messages:['{"text":""}','{"text":"Completed"}','{"text":""}','{"text":"","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/world_setup/egg_tracker/completed"}}']}}

# More Info
setblock -527 67 2174 minecraft:oak_wall_sign[facing=east]
data merge block -527 67 2174 {is_waxed:1b,front_text:{color:'light_blue',has_glowing_text:true,messages:['{"text":""}','{"text":"( more info )"}','{"text":""}','{"text":"","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/world_setup/egg_tracker/more_info"}}']}}

