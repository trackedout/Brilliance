# Ran when the shulkerbox is PUT into the system.
# - Start Log -
execute as @a[scores={do2.logs.gamestate=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Game has been activated. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§rRedstone line to detect shulker box placing has been activated."}]}},{"text":")"}]
# - End Log -

tag @a remove do2.spectating
tag @a remove do2.running


# Join Players' Bounds: (-565 118 1974) (-542 111 1985)
# All players withing the bound join the player's team
execute as @a[x=-565,dx=23,y=111,dy=7,z=1974,dz=11] run team join do2.players @s

# Ensure only ONE player has the do2.received_shulker tag
function do2:dungeon_setup/ensure_received_shulker_tag

# Count Cards inside of deck
execute as @p[tag=do2.received_shulker] run function do2:cards/count_cards

# Kill minecarts left in minecart ride
kill @e[type=minecart,x=-561,y=119,z=1972,dx=-13,dy=-55,dz=-46]
kill @e[type=minecart,x=-560,y=64,z=1943,dx=-58,dy=-16,dz=-13]

# Reset lecterns inside and out of the dungeon iff no player is within distance to read them
function do2:reset_dungeon/reset_lecterns

# Reset the delay of the spider spawners inside the dungeon
function do2:reset_dungeon/reset_spawners

# Fast Reset
execute if score $dungeon do2.config.fastReset matches 1 run function do2:dungeon_setup/fast_reset
execute if score $dungeon do2.config.fastReset matches 1 run setblock -542 122 1966 minecraft:redstone_block
execute if score $dungeon do2.config.fastReset matches 0 run setblock -542 122 1966 minecraft:glass

# do all scoreboard resets that happen per run.
execute as @a[team=do2.players] run function do2:scoreboard/player_per_run
function do2:scoreboard/dungeon_per_run
scoreboard players set @a[team=do2.players] do2.utility.shouldForceFood 1
scoreboard players set $dungeon do2.run.active 1

# Set up spectators
execute as @a[team=!do2.players] run team join do2.spectators @s
execute as @a[team=do2.spectators] run function do2:scoreboard/spectator_per_run

scoreboard players set $dungeon do2.utility.dungeonRepair 1
scoreboard players set $dungeon do2.run.players 0

# Lock Up Settings
scoreboard players set do2.utility.lockConfigRoom 1
function do2:scoreboard/config/config_lock

# Make sure that the redstone block keeping the iron door open is removed
setblock -551 119 1977 air

# Make sure all players are able to have map enabled
execute as @e[team=do2.players] run function do2:vanilla_compatability/gui/interface/detect

# Disable setting triggers
execute as @a[tag=!do2.fakePlayers] run trigger do2.trigger.settings add 0

# Agronet event
function do2:external/agronet/logs/gamestate/on_game_load
