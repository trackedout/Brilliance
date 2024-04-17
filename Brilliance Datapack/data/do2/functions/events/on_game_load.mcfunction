# Ran when the shulkerbox is PUT into the system.
# - Start Log -
execute as @a[scores={do2.logs.gamestate=1..}] run tellraw @s ["",{"text":"[§9B§r]: Game has been activated. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§rRedstone line to detect shulker box placing has been activated."}]}},{"text":")"}]
# - End Log -

tag @a remove do2.spectating
tag @a remove do2.running


# Join Players' Bounds: (-565 118 1974) (-542 111 1985)
# All players withing the bound join the player's team
execute as @a[x=-565,dx=23,y=111,dy=7,z=1974,dz=11] run team join do2.players @s

# Ensure only ONE player has the do2.received_shulker tag
function do2:dungeon_setup/ensure_received_shulker_tag

# Fast Reset
execute if score $dungeon do2.config.fastReset matches 1 run function do2:dungeon_setup/fast_reset
execute if score $dungeon do2.config.fastReset matches 1 run setblock -542 122 1966 minecraft:redstone_block
execute if score $dungeon do2.config.fastReset matches 0 run setblock -542 122 1966 minecraft:glass

# do all scoreboard resets that happen per run.
execute as @a[team=do2.players] run function do2:scoreboard/player_per_run
function do2:scoreboard/dungeon_per_run
scoreboard players set @a[team=do2.players] do2.utility.shouldForceFood 1

# Set up spectators
execute as @a[team=!do2.players] run team join do2.spectators @s
execute as @a[team=do2.spectators] run function do2:scoreboard/spectator_per_run

scoreboard players set $dungeon do2.utility.dungeonRepair 1
scoreboard players set $dungeon do2.run.players 0

# Lock Up Settings
function do2:scoreboard/config/config_unlock

# Make sure that the redstone block keeping the iron door open is removed
setblock -551 119 1977
