# Use Daylight Cycle
setblock -535 116 1960 minecraft:oak_wall_sign[facing=north]
data merge block -535 116 1960 {is_waxed:1b, front_text:{has_glowing_text:1b,color:"cyan",messages:['{"text":"Use the"}','{"text":"Day/Night","italic":true,"clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/boolean_levers/use_daylight_cycle/display"}}','{"text":"cycle."}','{"text":""}']}}
