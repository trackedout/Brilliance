# Brilliance Version Sign
setblock -486 115 1930 minecraft:oak_wall_sign[facing=south]
data merge block -486 115 1930 {front_text:{messages:['{"text":"","color":"black"}','{"text":"§b§oBrilliance Version."}','{"text":"§9§o§n( CLICK ME )","clickEvent":{"action":"run_command","value":"execute as @p run function do2:version"}}','{"text":""}']}}

# Brilliance Apply Changes Sign
setblock -486 114 1930 minecraft:oak_wall_sign[facing=south]
data merge block -486 114 1930 {front_text:{messages:['{"text":"§bManually apply"}','{"text":"§bconfig changes"}','{"text":"§bby clicking this."}','{"text":"§9§o§n( CLICK ME )"}']}}

# Access to Logs
setblock -482 115 1931 minecraft:oak_wall_sign[facing=west]
data merge block -482 115 1931 {front_text:{messages:['{"text":"§9§o§n( CLICK ME )","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/set_log_level/initial"}}','{"text":"§aGain access to"}','{"text":"§aLevel 1 Logs"}','{"text":""}']}}

# Egg Reward Sign.
function do2:scoreboard/config/egg_reward_display

# Endermite Display
function do2:scoreboard/config/endermite_display

# Use Zones (global)
setblock -490 116 1936 minecraft:oak_wall_sign[facing=east]
data merge block -490 116 1936 {front_text:{has_glowing_text:1b,messages:['{"text":""}','{"text":"§bUse Zones"}','{"text":""}','{"text":""}']}}

# Use Zones (global)
setblock -490 116 1932 minecraft:oak_wall_sign[facing=east]
data merge block -490 116 1932 {front_text:{has_glowing_text:1b,messages:['{"text":""}','{"text":"§bBats Distract"}','{"text":"§bWardens"}','{"text":""}']}}

