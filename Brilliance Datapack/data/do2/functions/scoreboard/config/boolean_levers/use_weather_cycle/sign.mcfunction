# Use Weather Cycle
setblock -535 116 1960 minecraft:oak_wall_sign[facing=north]
data merge block -535 116 1960 {front_text:{has_glowing_text:1b,color:"cyan",messages:['{"text":"","color":""}','{"text":"Use Weather","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/boolean_levers/use_weather_cycle/display"}}','{"text":"Cycles"}','{"text":""}']}}
