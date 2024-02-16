# Use Ravager Zones
setblock -533 116 1960 minecraft:oak_wall_sign[facing=north]
data merge block -533 116 1960 {front_text:{has_glowing_text:1b,color:"cyan",messages:['{"text":"","color":""}','{"text":"Level 1 §b&","color":"#d9a334","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/boolean_levers/ravager_zones/display"}}','{"text":"Level 2","color":"#fe3f3f"}','{"text":"Zones"}']}}
