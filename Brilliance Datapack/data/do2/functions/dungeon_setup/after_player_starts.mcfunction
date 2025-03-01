# Ran once player STARTS the game.
# Everything in this file should count as "Dungeon" setup.

# set day/night
function do2:dungeon_setup/decide_day_or_night

# Decide daylight cycle gamerule
execute if score $dungeon do2.config.useDaylightCycle matches 1 run gamerule doDaylightCycle true
execute unless score $dungeon do2.config.useDaylightCycle matches 1 run gamerule doDaylightCycle false

# Decide weather cycle gamerule
execute if score $dungeon do2.config.useWeatherCycle matches 1 run gamerule doWeatherCycle true
execute unless score $dungeon do2.config.useWeatherCycle matches 1 run gamerule doWeatherCycle false
