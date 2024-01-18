execute if score $dungeon do2.config.tickRate matches 20.. run scoreboard players set $dungeon do2.config.tickRate 6
scoreboard players remove $dungeon do2.config.tickRate 1
execute if score $dungeon do2.config.tickRate matches ..0 run scoreboard players set $dungeon do2.config.tickRate 0
function do2:scoreboard/config/tick_rate_display
