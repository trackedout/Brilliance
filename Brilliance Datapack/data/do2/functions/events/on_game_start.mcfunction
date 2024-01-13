# called at start of run (when they hit pressure plate at the end of the minecart track)
# - Start Log -
execute as @a[scores={do2.utility.logLevel=1..}] run tellraw @s ["",{"text":"[§9B§r]: Game has started."},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§rRedstone line to detect shulker box placing has been activated."}]}},{"text":")"}]
# - End Log -

# Clear Sidebar
scoreboard objectives setdisplay sidebar

# AGRONET
function do2:agronet/game_start

# tags non-spectating players to running dungeon and stores how many to scoreboard.
execute store result score $dungeon do2.run.players run tag @a[tag=!do2.spectating] add do2.running

# === dungadungadungadungadunga ===
execute as @a[tag=do2.running] run function do2:agronet/log-event_dungeon-started
# =================================

# do all scoreboard resets that happen per run.
execute as @a[tag=do2.running] run function do2:scoreboard/player_per_run
function do2:scoreboard/dungeon_per_run

#revoke all utility advancements. These are used for additional conditions
advancement revoke @a from do2:utility/root

