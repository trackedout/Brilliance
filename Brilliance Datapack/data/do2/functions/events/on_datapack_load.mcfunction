# - Start Log -
execute as @a[scores={do2.logs.datapack_setup=1..}] run tellraw @s "§f[§9B§r]: Datapack loaded."
# - End Log -


# Check if I'm on the server or not.
scoreboard players set $dungeon do2.utility.onServer 0
function do2:agronet/test_for_agronet


# Setup scoreboard
function do2:scoreboard/setup/all
# Setup stats room
function do2:statistics_room/setup

# Make all player's who may have joined already be setup
execute as @a at @s run function do2:events/on_player_join

# TangoCam (just in case)
scoreboard objectives add do2.tests.doesTangoCamExist dummy
execute if entity @a[name=tangocam] run scoreboard players set $dungeon do2.tests.doesTangoCamExist 1
execute if entity @a[name=TangoCam] run scoreboard players set $dungeon do2.tests.doesTangoCamExist 1
execute unless score $dungeon do2.tests.doesTangoCamExist matches 1 run function do2:dungeon_setup/summon/summon_tangocam
scoreboard objectives remove do2.tests.doesTangoCamExist

# Attempt to run dungeon_setup
schedule function do2:postpone_dungeon_setup 1s append

# One time setup:
gamerule spawnRadius 0
execute if score $dungeon do2.config.useWorldCycle matches 1 run gamerule doDaylightCycle true
execute unless score $dungeon do2.config.useWorldCycle matches 1 run gamerule doDaylightCycle false
execute if score $dungeon do2.config.useWorldCycle matches 1 run gamerule doWeatherCycle true
execute unless score $dungeon do2.config.useWorldCycle matches 1 run gamerule doWeatherCycle false

time set noon
weather clear


# If server has agronet, than set worldspawn to be the deck area.
# Otherwise set worldspawn to be the portal
execute if score $dungeon do2.utility.onServer matches 0 run setworldspawn -524 103 2167
execute if score $dungeon do2.utility.onServer matches 1 run setworldspawn -547 115 1980

# If server has agronet, unlock the iron door. NOTE: If it's on the server, only one use
execute if score $dungeon do2.utility.onServer matches 1 run setblock -551 119 1977 minecraft:redstone_block
execute if score $dungeon do2.utility.onServer matches 0 run setblock -551 119 1977 air

# If server does not have agronet, remove the fall chamber.
execute if score $dungeon do2.utility.onServer matches 0 run fill -548 111 1980 -548 73 1980 air
execute if score $dungeon do2.utility.onServer matches 0 run fill -547 111 1981 -547 73 1981 air
execute if score $dungeon do2.utility.onServer matches 0 run fill -546 109 1980 -546 73 1980 air
execute if score $dungeon do2.utility.onServer matches 0 run fill -547 111 1979 -547 73 1979 air
execute if score $dungeon do2.utility.onServer matches 0 run fill -547 111 1980 -547 110 1980 air
execute if score $dungeon do2.utility.onServer matches 0 run fill -549 72 1978 -546 70 1982 air

# If server has agronet, create card selection station.
execute if score $dungeon do2.utility.onServer matches 1 run setblock -551 115 1982 minecraft:warped_wall_sign[facing=north,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"light_gray",has_glowing_text:1b,messages:['{"text":"Card selection"}','{"text":"station. Push"}','{"text":"button to get"}','{"text":"the shulker back."}']},is_waxed:0b}
execute if score $dungeon do2.utility.onServer matches 1 run setblock -551 114 1982 minecraft:warped_button[face=wall,facing=north,powered=false]
execute if score $dungeon do2.utility.onServer matches 1 run setblock -551 112 1982 minecraft:tinted_glass
execute if score $dungeon do2.utility.onServer matches 1 run setblock -551 111 1982 minecraft:redstone_lamp[lit=true]
execute if score $dungeon do2.utility.onServer matches 1 run setblock -551 111 1981 minecraft:redstone_block
execute if score $dungeon do2.utility.onServer matches 1 run setblock -552 112 1982 minecraft:deepslate_tiles
execute if score $dungeon do2.utility.onServer matches 1 run setblock -551 112 1983 minecraft:deepslate_tiles
execute if score $dungeon do2.utility.onServer matches 1 run setblock -551 112 1984 minecraft:deepslate_tiles
execute if score $dungeon do2.utility.onServer matches 1 run setblock -552 113 1983 minecraft:deepslate_tiles
execute if score $dungeon do2.utility.onServer matches 1 run setblock -552 113 1984 minecraft:deepslate_tiles
execute if score $dungeon do2.utility.onServer matches 1 run setblock -551 115 1984 minecraft:deepslate_tiles
execute if score $dungeon do2.utility.onServer matches 1 run setblock -551 114 1984 minecraft:note_block[instrument=harp,note=0,powered=false]
execute if score $dungeon do2.utility.onServer matches 1 run setblock -551 113 1984 minecraft:sticky_piston[extended=false,facing=north]
execute if score $dungeon do2.utility.onServer matches 0 run setblock -551 115 1982 air
execute if score $dungeon do2.utility.onServer matches 0 run setblock -551 114 1982 air
execute if score $dungeon do2.utility.onServer matches 0 run setblock -551 112 1982 minecraft:polished_basalt[axis=x]
execute if score $dungeon do2.utility.onServer matches 0 run setblock -551 111 1982 air
execute if score $dungeon do2.utility.onServer matches 0 run setblock -551 111 1981 air
execute if score $dungeon do2.utility.onServer matches 0 run setblock -552 112 1982 air
execute if score $dungeon do2.utility.onServer matches 0 run setblock -551 112 1983 air
execute if score $dungeon do2.utility.onServer matches 0 run setblock -551 112 1984 air
execute if score $dungeon do2.utility.onServer matches 0 run setblock -552 113 1983 air
execute if score $dungeon do2.utility.onServer matches 0 run setblock -552 113 1984 air
execute if score $dungeon do2.utility.onServer matches 0 run setblock -551 115 1984 air
execute if score $dungeon do2.utility.onServer matches 0 run setblock -551 114 1984 air
execute if score $dungeon do2.utility.onServer matches 0 run setblock -551 113 1984 air

# If server has agronet, create manual shulker breaker.
execute if score $dungeon do2.utility.onServer matches 1 run setblock -562 116 1982 minecraft:warped_wall_sign[facing=east,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"white",has_glowing_text:1b,messages:['{"text":"<-- Press button"}','{"text":"if in adventure"}','{"text":"mode and can\'t"}','{"text":"break shulker"}']},is_waxed:0b}
execute if score $dungeon do2.utility.onServer matches 1 run setblock -562 116 1983 minecraft:warped_button[face=wall,facing=east,powered=false]
execute if score $dungeon do2.utility.onServer matches 1 run setblock -564 116 1983 minecraft:redstone_wire[east=side,north=none,power=0,south=none,west=side]
execute if score $dungeon do2.utility.onServer matches 0 run setblock -562 116 1982 air
execute if score $dungeon do2.utility.onServer matches 0 run setblock -562 116 1983 air
execute if score $dungeon do2.utility.onServer matches 0 run setblock -564 116 1983 air


# Setup GUI storage
function do2:gui/init_storage
