# Use Daylight Cycle
setblock -533 116 1960 minecraft:oak_wall_sign[facing=north]
data merge block -533 116 1960 {front_text:{has_glowing_text:1b,color:"cyan",messages:['{"text":"","color":""}','{"text":"Use Day/Night","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/boolean_levers/use_daylight_cycle/display"}}','{"text":"Cycles"}','{"text":""}']}}
