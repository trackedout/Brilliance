# - Start Log -
execute as @a[scores={do2.logs.spam=2..}] run tellraw @s ["",{"text":"§f[§9B§r]: Datapack tick. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§rEvery "},{"score":{"name":"$dungeon","objective":"do2.config.tickRate"},"color":"aqua"},{"text":" §rin game ticks"}]}},{"text":")"}]
# - End Log -

# IF the player has quit the game and is back, RUN on_player_rejoin
execute as @a unless score @s do2.utility.trackLeaves matches 0 at @s run function do2:events/on_player_join

# call on player death when running do2
execute as @a[team=do2.players, scores={do2.run.has_died=1}] run function do2:events/on_player_death

# Check if player has respawned
execute as @e[type=player,scores={do2.utility.deathCount=1..}] run function do2:events/on_player_respawned

# if all players running do2 dead, end game.
execute if score $dungeon do2.run.active matches 2.. if score $dungeon do2.run.player_deaths = $dungeon do2.run.players run function do2:events/on_game_end

# if no players running do2 but game active for 5 minutes, end game.
execute if score $dungeon do2.run.active matches 2.. if score $dungeon do2.run.timeWithNoPlayers matches 300 run function do2:events/on_game_end

# Tango mentioned this and I think we removed it on accident.
# Remove glowing effect from Evokers.
execute if score $dungeon do2.run.active matches 2.. as @e[type=minecraft:evoker] if entity @s[nbt={ActiveEffects:[{Id:24}]}] run effect clear @s minecraft:glowing
# Remove glowing effect from Witches.
execute if score $dungeon do2.run.active matches 2.. as @e[type=minecraft:witch] if entity @s[nbt={ActiveEffects:[{Id:24}]}] run effect clear @s minecraft:glowing

# Have vex track players better
execute if score $dungeon do2.config.vexTracking matches 1 run function do2:force_vex_tracking

# Control Ghosts to Spectate Player
execute if score $dungeon do2.config.forceGamemode matches 1 as @a[team=do2.ghosts] at @s if entity @s[gamemode=spectator] unless entity @s[tag=do2.staff] unless entity @s[name=TangoCam] unless entity @s[name=tangocam] run spectate @p[team=do2.players] @s
execute if score $dungeon do2.config.forceGamemode matches 1 as @a[team=do2.spectators] at @s if entity @s[gamemode=spectator] unless entity @s[tag=do2.staff] unless entity @s[name=TangoCam] unless entity @s[name=tangocam] run spectate @p[team=do2.players] @s

# If we're on the server, game isn't active. Enforce spectators to stay in lobby.
execute unless entity @e[team=do2.players] if score $dungeon do2.utility.onServer matches 1 as @a[gamemode=spectator,name=!tangocam,name=!TangoCam] at @s run function do2:ensure_spectator_location

# Force player's food.
execute if score $dungeon do2.config.forceFood matches 1 as @a[scores={do2.utility.shouldForceFood=1}] run function do2:dungeon_setup/control_player_saturation

# Check for triggers.
function do2:scoreboard/triggers/checks

# Run the mob controller panel
function do2:mob_controller/run_per_tick

# Summon Dev Markers
#function do2:dev/markers/edit_markers/summon_markers

# Statistics
function do2:statistics_room/on_tick
