# - Start Log -
execute as @a[scores={do2.logs.spam=2..}] run tellraw @s ["",{"text":"[§9B§r]: Datapack tick. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§rEvery "},{"score":{"name":"$dungeon","objective":"do2.config.tickRate"},"color":"aqua"},{"text":" §rin game ticks"}]}},{"text":")"}]
# - End Log -

# IF the player has quit the game and is back, RUN on_player_rejoin
execute as @a unless score @s do2.utility.trackLeaves matches 0 at @s run function do2:events/on_player_join
# call on player death when running do2
execute as @a[tag=do2.running, scores={do2.run.has_died=1}] run function do2:events/on_player_death

# if all players running do2 dead, end game.
execute if score $dungeon do2.run.active matches 1 if score $dungeon do2.run.player_deaths = $dungeon do2.run.players run function do2:events/on_game_end

# if no players running do2 but game active for 5 minutes, end game.
execute if score $dungeon do2.run.active matches 1 if score $dungeon do2.run.empty matches 300 run function do2:events/on_game_end

# Tango mentioned this and I think we removed it on accident.
# Remove glowing effect from Evokers.
execute if score $dungeon do2.run.active matches 1 as @e[type=minecraft:evoker] if entity @s[nbt={ActiveEffects:[{Id:24}]}] run effect clear @s minecraft:glowing

# Have vex track players better
execute if score $dungeon do2.config.vexTracking matches 1 run function do2:force_vex_tracking

# Update the various sideboards display.
function do2:scoreboard/config/config_display
function do2:scoreboard/stats_display

# Check for triggers.
function do2:scoreboard/triggers/checks
