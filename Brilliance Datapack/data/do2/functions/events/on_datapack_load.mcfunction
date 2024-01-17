# - Start Log -
execute as @a[scores={do2.utility.logLevel=1..}] run tellraw @s "§r[§9B§r]: Datapack loaded."
# - End Log -

# Setup scoreboard
function do2:scoreboard/setup/all

# Make all player's who may have joined already be setup
execute as @a at @s run function do2:events/on_player_rejoin

# TangoCam (just in case)
scoreboard objectives add do2.temp.doesTangoCamExist dummy
execute if entity @a[name=tangocam] run scoreboard players set $dungeon do2.temp.doesTangoCamExist 1
execute if entity @a[name=TangoCam] run scoreboard players set $dungeon do2.temp.doesTangoCamExist 1
execute if score $dungeon do2.temp.doesTangoCamExist matches 0 run function do2:dungeon_setup/summon_tangocam
scoreboard objectives remove do2.temp.doesTangoCamExist

# Attempt to run dungeon_setup
scoreboard player set $dungeon do2.utility.dungeonRepair 1

# One time setup:
gamerule doWeatherCycle false
gamerule doDaylightCycle false
time set noon
weather clear
setworldspawn -547 113 1980 90
