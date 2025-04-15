# Title
setblock -524 70 2168 minecraft:oak_wall_sign[facing=south]
data merge block -524 70 2168 {is_waxed:1b,front_text:{color:'white',has_glowing_text:true,messages:['{"text":""}','{"text":"hermit_changes Hermits"}','{"text":"Artifacts/Eggs"}','{"text":""}']}}

# - Leaderboard -
setblock -527 69 2168 minecraft:oak_wall_sign[facing=south]
data merge block -527 69 2168 {is_waxed:1b,front_text:{color:'yellow',has_glowing_text:true,messages:['{"text":""}','{"text":"Leaderboard"}','{"text":""}','{"text":""}']}}
# removed
setblock -527 68 2168 minecraft:oak_wall_sign[facing=south]
data merge block -527 68 2168 {is_waxed:1b,front_text:{color:'red',has_glowing_text:true,messages:['{"text":""}','{"text":"EMPTY"}','{"text":""}','{"text":"","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/world_setup/hermit_changes/leaderboard_removed"}}']}}
# default
setblock -527 67 2168 minecraft:oak_wall_sign[facing=south]
data merge block -527 67 2168 {is_waxed:1b,front_text:{color:'green',has_glowing_text:true,messages:['{"text":""}','{"text":"SHOWN"}','{"text":""}','{"text":"","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/world_setup/hermit_changes/leaderboard_default"}}']}}

# - Cubbies -
setblock -525 69 2168 minecraft:oak_wall_sign[facing=south]
data merge block -525 69 2168 {is_waxed:1b,front_text:{color:'blue',has_glowing_text:true,messages:['{"text":""}','{"text":"Cubbies"}','{"text":""}','{"text":""}']}}
# removed
setblock -525 68 2168 minecraft:oak_wall_sign[facing=south]
data merge block -525 68 2168 {is_waxed:1b,front_text:{color:'red',has_glowing_text:true,messages:['{"text":""}','{"text":"RESET"}','{"text":""}','{"text":"","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/world_setup/hermit_changes/cubbies_removed"}}']}}
# default
setblock -525 67 2168 minecraft:oak_wall_sign[facing=south]
data merge block -525 67 2168 {is_waxed:1b,front_text:{color:'green',has_glowing_text:true,messages:['{"text":""}','{"text":"PRESERVE"}','{"text":""}','{"text":"","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/world_setup/hermit_changes/cubbies_default"}}']}}

# - The Queue -
setblock -523 69 2168 minecraft:oak_wall_sign[facing=south]
data merge block -523 69 2168 {is_waxed:1b,front_text:{color:'orange',has_glowing_text:true,messages:['{"text":""}','{"text":"The Queue"}','{"text":""}','{"text":""}']}}
# removed
setblock -523 68 2168 minecraft:oak_wall_sign[facing=south]
data merge block -523 68 2168 {is_waxed:1b,front_text:{color:'red',has_glowing_text:true,messages:['{"text":""}','{"text":"REMOVE"}','{"text":""}','{"text":"","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/world_setup/hermit_changes/queue_removed"}}']}}
# default
setblock -523 67 2168 minecraft:oak_wall_sign[facing=south]
data merge block -523 67 2168 {is_waxed:1b,front_text:{color:'green',has_glowing_text:true,messages:['{"text":""}','{"text":"KEEP"}','{"text":""}','{"text":"","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/world_setup/hermit_changes/queue_default"}}']}}

# - Museum Tower -
setblock -521 69 2168 minecraft:oak_wall_sign[facing=south]
data merge block -521 69 2168 {is_waxed:1b,front_text:{color:'purple',has_glowing_text:true,messages:['{"text":""}','{"text":"Museum Tower"}','{"text":""}','{"text":""}']}}
# removed
setblock -521 68 2168 minecraft:oak_wall_sign[facing=south]
data merge block -521 68 2168 {is_waxed:1b,front_text:{color:'red',has_glowing_text:true,messages:['{"text":""}','{"text":"DESTROY"}','{"text":""}','{"text":"","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/world_setup/hermit_changes/museum_removed"}}']}}
# default
setblock -521 67 2168 minecraft:oak_wall_sign[facing=south]
data merge block -521 67 2168 {is_waxed:1b,front_text:{color:'green',has_glowing_text:true,messages:['{"text":""}','{"text":"RETURN"}','{"text":""}','{"text":"","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/world_setup/hermit_changes/museum_default"}}']}}

