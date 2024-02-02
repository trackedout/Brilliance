
# =====================
# - FACING TO HALLWAY -
# =====================

# Brilliance Version Sign
setblock -538 115 1956 minecraft:oak_wall_sign[facing=east]
data merge block -538 115 1956 {front_text:{messages:['{"text":"","color":"black"}','{"text":"§b§oBrilliance Version."}','{"text":""}','{"text":"§9§o§n( CLICK ME )","clickEvent":{"action":"run_command","value":"function do2:version"}}']}}
# Brilliance Apply Changes Sign
setblock -538 114 1956 minecraft:oak_wall_sign[facing=east]
data merge block -538 114 1956 {front_text:{messages:['{"text":"§bManually apply"}','{"text":"§bconfig changes"}','{"text":"§bby clicking this."}','{"text":"§9§o§n( CLICK ME )","clickEvent":{"action":"run_command","value":"function do2:dungeon_setup/all"}}']}}
# Access to Logs
setblock -538 115 1954 minecraft:oak_wall_sign[facing=east]
data merge block -538 115 1954 {front_text:{messages:['{"text":"§aCustomize what"}','{"text":"§alogs you receive"}','{"text":""}','{"text":"§9§o§n( CLICK ME )","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/receive_logs/documentation"}}']}}
# Display Settings
setblock -538 116 1958 minecraft:oak_wall_sign[facing=east]
data merge block -538 116 1958 {front_text:{messages:['{"text":""}','{"text":"SETTINGS"}','{"text":"DISPLAYED"}','{"text":""}']}}

# ====================
# - SIGNS AND VALUES -
# ====================

# Balance Changes Config
setblock -537 115 1952 minecraft:oak_wall_sign[facing=south]
data merge block -537 115 1952 {front_text:{messages:['{"text":"§6Adjust"}','{"text":"§o§1Fresh Runs\'s"}','{"text":"§6Changes"}','{"text":"§9§o§n( CLICK ME )","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/fresh_runs/display"}}']}}

# Balance Changes Config
setblock -533 115 1952 minecraft:oak_wall_sign[facing=south]
data merge block -533 115 1952 {front_text:{messages:['{"text":"§6Adjust"}','{"text":"§o§3Tracked Out\'s"}','{"text":"§6Balance Changes"}','{"text":"§9§o§n( CLICK ME )","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/balance_changes/display"}}']}}
# Bats Amount Sign
function do2:scoreboard/config/amount_of_bats_display
# Egg Reward Sign.
function do2:scoreboard/config/egg_reward_display
# Endermite Display
function do2:scoreboard/config/endermite_display
# Random Night Display
function do2:scoreboard/config/random_night_chance_display

# ==================
# - BOOLEAN LEVERS -
# ==================

# Dungeon Resets Faster
setblock -527 116 1960 minecraft:oak_wall_sign[facing=north]
data merge block -527 116 1960 {front_text:{has_glowing_text:1b,color:"cyan",messages:['{"text":"","color":""}','{"text":"Dungeon Resets"}','{"text":"Faster"}','{"text":""}']}}
# Disable Treasure on Max Clank
setblock -529 116 1960 minecraft:oak_wall_sign[facing=north]
data merge block -529 116 1960 {front_text:{has_glowing_text:1b,color:"light_blue",messages:['{"text":""}','{"text":"§bDisable Treasure"}','{"text":"§bon §oMAX §r§bclank"}','{"text":""}']}}
# Reset Composters
setblock -531 116 1960 minecraft:oak_wall_sign[facing=north]
data merge block -531 116 1960 {front_text:{has_glowing_text:1b,color:"light_blue",messages:['{"text":""}','{"text":"§bReset Composters"}','{"text":"§bEvery Run"}','{"text":""}']}}
# Use L1 & L2 Zones
setblock -533 116 1960 minecraft:oak_wall_sign[facing=north]
data merge block -533 116 1960 {front_text:{has_glowing_text:1b,color:"cyan",messages:['{"text":""}','{"text":"Level 1 §b&","color":"#d9a334"}','{"text":"Level 2","color":"#fe3f3f"}','{"text":"Zones"}']}}
# Use L4 Zones
setblock -535 116 1960 minecraft:oak_wall_sign[facing=north]
data merge block -535 116 1960 {front_text:{has_glowing_text:1b,color:"cyan",messages:['{"text":"","color":""}','{"text":""}','{"text":"Level 4","color":"#be00be"}','{"text":"Zones"}']}}
# Bats Distract Wardens
setblock -537 116 1960 minecraft:oak_wall_sign[facing=north]
data merge block -537 116 1960 {front_text:{has_glowing_text:1b,color:"cyan",messages:['{"text":"","color":""}','{"text":"Bats"}','{"text":"Distract Wardens"}','{"text":""}']}}
