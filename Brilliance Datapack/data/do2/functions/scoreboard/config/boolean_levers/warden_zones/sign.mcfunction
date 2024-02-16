# Use Warden Zones
setblock -535 116 1960 minecraft:oak_wall_sign[facing=north]
data merge block -535 116 1960 {front_text:{has_glowing_text:1b,color:"cyan",messages:['{"text":"","color":""}','{"text":"","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/boolean_levers/warden_zones/display"}}','{"text":"Level 4","color":"#be00be"}','{"text":"Zones"}']}}
