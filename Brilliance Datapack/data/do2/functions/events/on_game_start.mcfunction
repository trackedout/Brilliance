# called at start of run (when they hit pressure plate at the end of the minecart track)
execute positioned -622 49 1942 run tp @a[distance=7..,team=do2.players] ~ ~ ~

# Don't allow this event to be called more than once.
execute unless score $dungeon do2.run.players matches 0 run return 0

# - Start Log -
execute as @a[scores={do2.logs.gamestate=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Game has started. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§rPlayer stepped on pressure plate."}]}},{"text":")"}]
# - End Log -

#Finish setup
function do2:dungeon_setup/after_player_starts

# Clear Sidebar
scoreboard objectives setdisplay sidebar

# Replay Mod
function do2:replay_mod/start

# tags non-spectating players to running dungeon and stores how many to scoreboard.
execute store result score $dungeon do2.run.players run tag @a[team=do2.players] add do2.running

# === dungadungadungadungadunga ===
execute as @a[tag=do2.running] run function do2:agronet/game_start
# =================================

# Adjust scoreboards
scoreboard players set $dungeon do2.run.active 1
function do2:scoreboard/dungeon_per_run
scoreboard players set @a[team=do2.players] do2.utility.shouldForceFood 0
scoreboard players add @a[team=do2.players] do2.runs 1
scoreboard players add $dungeon do2.runs 1

#revoke all utility advancements. These are used for additional conditions
advancement revoke @a from do2:utility/root

# Make TangoCam spectator.
gamemode spectator TangoCam
gamemode spectator tangocam
