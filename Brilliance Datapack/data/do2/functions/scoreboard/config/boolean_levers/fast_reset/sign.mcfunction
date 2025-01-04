# Dungeon Resets Faster
setblock -527 116 1960 minecraft:oak_wall_sign[facing=north]
data merge block -527 116 1960 {is_waxed:1b, front_text:{has_glowing_text:1b,color:"cyan",messages:['{"text":"","color":""}','{"text":"Dungeon Resets","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/boolean_levers/fast_reset/display"}}','{"text":"Faster"}','{"text":""}']}}
