
# =====================
# - FACING TO HALLWAY -
# =====================

# Brilliance Version Sign
setblock -538 115 1956 minecraft:oak_wall_sign[facing=east]
data merge block -538 115 1956 {front_text:{messages:['{"text":"","color":"black"}','{"text":"§b§oBrilliance Version."}','{"text":""}','{"text":"§9§o§n( CLICK ME )","clickEvent":{"action":"run_command","value":"function do2:version"}}']}}
# Brilliance Apply Changes Sign
setblock -538 115 1958 minecraft:oak_wall_sign[facing=east]
data merge block -538 115 1958 {front_text:{messages:['{"text":"§bManually apply"}','{"text":"§bconfig changes"}','{"text":"§bby clicking this."}','{"text":"§9§o§n( CLICK ME )","clickEvent":{"action":"run_command","value":"execute as @e[type=!player,limit=1] run function do2:dungeon_setup/all"}}']}}
# Access to Logs
setblock -538 115 1954 minecraft:oak_wall_sign[facing=east]
data merge block -538 115 1954 {front_text:{messages:['{"text":"§aCustomize what"}','{"text":"§alogs you receive"}','{"text":""}','{"text":"§9§o§n( CLICK ME )","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/receive_logs/documentation"}}']}}

# ====================
# - SIGNS AND VALUES -
# ====================
function do2:scoreboard/config/fresh_runs/sign
function do2:scoreboard/config/balance_changes/sign
function do2:scoreboard/config/amount_of_bats/sign
function do2:scoreboard/config/egg_rewards/sign
function do2:scoreboard/config/endermites/sign
function do2:scoreboard/config/random_night_chance/sign
function do2:scoreboard/config/tick_rate/sign

# ==================
# - BOOLEAN LEVERS -
# ==================

function do2:scoreboard/config/boolean_levers/update_scores
function do2:scoreboard/config/boolean_levers/better_vex/sign
function do2:scoreboard/config/boolean_levers/fast_reset/sign
function do2:scoreboard/config/boolean_levers/force_gamemode/sign
function do2:scoreboard/config/boolean_levers/disable_treasure/sign
function do2:scoreboard/config/boolean_levers/use_world_cycles/sign
function do2:scoreboard/config/boolean_levers/force_food/sign
function do2:scoreboard/config/boolean_levers/bats_distraction/sign

# ====================
# - LEVEL CONTROLLER -
# ====================
# Reset Selected to Default
setblock -522 115 1950 minecraft:warped_wall_sign[facing=east]
data merge block -522 115 1950 {front_text:{messages:['{"text":"","color":"black"}','{"text":"§b§oReset selected"}','{"text":"to defaults"}','{"text":""}','{"text":"§9§o§n( CLICK ME )","clickEvent":{"action":"run_command","value":"function do2:level_controller/reset_to_default/reset_current"}}']}}
# Reset All to Default
setblock -522 115 1951 minecraft:warped_wall_sign[facing=east]
data merge block -522 115 1950 {front_text:{messages:['{"text":"","color":"black"}','{"text":"§b§oReset all"}','{"text":"to defaults"}','{"text":""}','{"text":"§9§o§n( CLICK ME )","clickEvent":{"action":"run_command","value":"function do2:level_controller/reset_to_default/reset_all"}}']}}
