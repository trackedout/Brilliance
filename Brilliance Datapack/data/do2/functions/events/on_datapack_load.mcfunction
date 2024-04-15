# - Start Log -
execute as @a[scores={do2.logs.datapack_setup=1..}] run tellraw @s "§r[§9B§r]: Datapack loaded."
# - End Log -

# Setup scoreboard
function do2:scoreboard/setup/all

# Make all player's who may have joined already be setup
execute as @a at @s run function do2:events/on_player_join

# TangoCam (just in case)
scoreboard objectives add do2.temp.doesTangoCamExist dummy
execute if entity @a[name=tangocam] run scoreboard players set $dungeon do2.temp.doesTangoCamExist 1
execute if entity @a[name=TangoCam] run scoreboard players set $dungeon do2.temp.doesTangoCamExist 1
execute unless score $dungeon do2.temp.doesTangoCamExist matches 1 run function do2:dungeon_setup/summon/summon_tangocam
scoreboard objectives remove do2.temp.doesTangoCamExist

# Attempt to run dungeon_setup
scoreboard players set $dungeon do2.utility.dungeonRepair 1

# One time setup:
gamerule spawnRadius 0
gamerule doWeatherCycle true
gamerule doDaylightCycle true
time set noon
weather clear


# Check if I'm on the server or not.
function do2:agronet/test_for_agronet

# If server has agronet, than set worldspawn to be the deck area.
# Otherwise set worldspawn to be the portal
execute if score $dungeon do2.utility.onServer matches 0 run setworldspawn -524 103 2167
execute if score $dungeon do2.utility.onServer matches 1 run setworldspawn -547 115 1980

# Setup GUI storage
function do2:gui/init_storage
