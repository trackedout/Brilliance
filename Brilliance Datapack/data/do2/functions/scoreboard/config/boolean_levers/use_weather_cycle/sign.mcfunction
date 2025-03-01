# Use Weather Cycle
setblock -533 116 1960 minecraft:oak_wall_sign[facing=north]
data merge block -537 116 1960 {is_waxed:1b, front_text:{has_glowing_text:1b,color:"cyan",messages:['{"text":"Use the"}','{"text":"Weather","italic":true,"clickEvent":{"action":"run_command","value":""}}','{"text":"cycle.","italic":true}','{"text":""}']}}
