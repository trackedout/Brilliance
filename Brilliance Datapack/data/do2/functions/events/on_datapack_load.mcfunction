# - Start Log -
execute as @a[scores={do2.logs.datapack_setup=1..}] run tellraw @s "§f[§9B§r]: Datapack loaded."
# - End Log -

# Check where I'm running.
scoreboard objectives add do2.utility.onServer dummy "Checking if this Brilliance is loaded on the server"
scoreboard players set $dungeon do2.utility.onServer 0
schedule function do2:external/agronet/test_for_agronet 1t append
scoreboard objectives add do2.utility.onInstance dummy "Checking if this Brilliance is loaded on an instance"
scoreboard players set $dungeon do2.utility.onInstance 0
schedule function do2:external/agronet/test_for_instance 1t append

# Setup scoreboard
function do2:scoreboard/setup/all
# Setup stats room
function do2:statistics_room/setup
# Update cmd blocks
function do2:utility/update_command_blocks

# Make all player's who may have joined already be setup
execute as @a at @s run function do2:events/on_player_join

# TangoCam (just in case)
scoreboard objectives add do2.tests.doesTangoCamExist dummy
execute if entity @a[name=tangocam] run scoreboard players set $dungeon do2.tests.doesTangoCamExist 1
execute if entity @a[name=TangoCam] run scoreboard players set $dungeon do2.tests.doesTangoCamExist 1
execute unless score $dungeon do2.tests.doesTangoCamExist matches 1 run function do2:external/carpet_mod/summon_tangocam
scoreboard objectives remove do2.tests.doesTangoCamExist

# Attempt to run dungeon_setup
schedule function do2:utility/postpone_dungeon_setup 1s append

# One time setup:
gamerule reducedDebugInfo true
gamerule spawnRadius 0
execute if score $dungeon do2.config.useWorldCycle matches 1 run gamerule doDaylightCycle true
execute unless score $dungeon do2.config.useWorldCycle matches 1 run gamerule doDaylightCycle false
execute if score $dungeon do2.config.useWorldCycle matches 1 run gamerule doWeatherCycle true
execute unless score $dungeon do2.config.useWorldCycle matches 1 run gamerule doWeatherCycle false
execute unless score $dungeon do2.config.useWorldCycle matches 1 run time set noon
execute unless score $dungeon do2.config.useWorldCycle matches 1 run weather clear

# Run dungeon setup associated with the onServer / onInstance flag, delayed by 2 ticks
schedule function do2:dungeon_setup/source_flag_setup 2t append


# Setup GUI storage
function do2:gui/init_storage


# Agronet event
function do2:external/agronet/logs/datapack_setup/on_datapack_load