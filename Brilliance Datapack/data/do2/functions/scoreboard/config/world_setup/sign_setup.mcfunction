# Tp to settings
setblock -524 103 2162 minecraft:oak_sign[rotation=0]
data merge block -524 103 2162 {is_waxed:1b,front_text:{messages:['{"text":"Click me","italic":true,"color":"dark_blue","underlined":true}','{"text":"","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/world_setup/teleport_below"}}','{"text":"to customize"}','[{"text":"the "},{"text":"Citadel","color":"dark_purple"}]']}}
# Return to surface
setblock -524 68 2180 minecraft:oak_wall_sign[facing=north]
data merge block -524 68 2180 {is_waxed:1b,front_text:{color:'red',has_glowing_text:true,messages:['{"text":""}','{"text":"Return to","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/world_setup/teleport_above"}}','{"text":"the surface"}','{"text":""}']}}


# MORE OTW
