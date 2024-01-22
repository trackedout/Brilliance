# Brilliance Version Sign
setblock -486 115 1930 minecraft:oak_wall_sign[facing=south]
data merge block -486 115 1930 {front_text:{messages:['{"text":"","color":"black"}','{"text":"§b§oBrilliance Version."}','{"text":"§9§o§n( CLICK ME )","clickEvent":{"action":"run_command","value":"function do2:version"}}','{"text":""}']}}

# Brilliance Apply Changes Sign
setblock -486 114 1930 minecraft:oak_wall_sign[facing=south]
data merge block -486 114 1930 {front_text:{messages:['{"text":"§bManually apply"}','{"text":"§bconfig changes"}','{"text":"§bby clicking this."}','{"text":"§9§o§n( CLICK ME )","clickEvent":{"action":"run_command","value":"function do2:dungeon_setup/all"}}']}}

# Access to Logs
setblock -482 115 1931 minecraft:oak_wall_sign[facing=west]
data merge block -482 115 1931 {front_text:{messages:['{"text":"§9§o§n( CLICK ME )","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/set_log_level/initial"}}','{"text":"§aGain access to"}','{"text":"§aLevel 1 Logs"}','{"text":""}']}}

# Egg Reward Sign.
function do2:scoreboard/config/egg_reward_display

# Endermite Display
function do2:scoreboard/config/endermite_display

# Reset Composters
setblock -490 116 1937 minecraft:oak_wall_sign[facing=east]
data merge block -490 116 1937 {front_text:{has_glowing_text:1b,color:"light_blue",messages:['{"text":""}','{"text":"§bReset Composters"}','{"text":"§bEvery Run"}','{"text":""}']}}

# Use L1 & L2 Zones
setblock -490 116 1935 minecraft:oak_wall_sign[facing=east]
data merge block -490 116 1935 {front_text:{has_glowing_text:1b,color:"cyan",messages:['{"text":"USE"}','{"text":"Level 1 §b&","color":"#d9a334"}','{"text":"Level 2","color":"#fe3f3f"}','{"text":"ZONES"}']}}

# Use L4 Zones
setblock -490 116 1933 minecraft:oak_wall_sign[facing=east]
data merge block -490 116 1933 {front_text:{has_glowing_text:1b,color:"cyan",messages:['{"text":"","color":""}','{"text":""}','{"text":"Level 4","color":"#be00be"}','{"text":"ZONES"}']}}

# Disable Treasure on Max Clank
setblock -490 116 1939 minecraft:oak_wall_sign[facing=east]
data merge block -490 116 1939 {front_text:{has_glowing_text:1b,color:"light_blue",messages:['{"text":""}','{"text":"§bDisable Treasure"}','{"text":"§bon §oMAX §r§bclank"}','{"text":""}']}}

