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

# Remove glowing effect from Evokers.
execute if score $dungeon do2.run.active matches 2.. as @e[type=minecraft:evoker] if entity @s[nbt={ActiveEffects:[{Id:24}]}] run effect clear @s minecraft:glowing
# Remove glowing effect from Witches.
execute if score $dungeon do2.run.active matches 2.. as @e[type=minecraft:witch] if entity @s[nbt={ActiveEffects:[{Id:24}]}] run effect clear @s minecraft:glowing

# Have vex track players better
execute if score $dungeon do2.config.vexTracking matches 1 run function do2:entity_controller/force_vex_tracking

# Spectate Controller
execute if score $dungeon do2.config.forceGamemode matches 1 run function do2:spectating_controller/spectator_logic

# Force player's food.
execute if score $dungeon do2.config.forceFood matches 1 as @a[scores={do2.utility.shouldForceFood=1}] run function do2:dungeon_setup/control_player_saturation

# Suppress berry growth if config is enabled and max clank has been reached
execute if score $dungeon do2.config.maxClankBerries matches 0 if score $dungeon do2.run.systems.maxclank.released matches 1.. if score $dungeon do2.run.active matches 1.. run function do2:scoreboard/config/max_clank_berries/tick_suppress_berries

# Check for triggers.
function do2:scoreboard/triggers/checks

# Run the mob controller panel
function do2:entity_controller/config_interface/run_per_tick

# Statistics
function do2:statistics_room/on_tick

# Count players on the server.
scoreboard players set $dungeon do2.utility.playerCount 0
execute as @a[tag=!do2.fakePlayer] run scoreboard players add $dungeon do2.utility.playerCount 1
execute if score $dungeon do2.utility.playerCount matches 1.. run tag TangoCam add do2.afterPlayerJoin
execute if score $dungeon do2.utility.playerCount matches 1.. run tag tangocam add do2.afterPlayerJoin