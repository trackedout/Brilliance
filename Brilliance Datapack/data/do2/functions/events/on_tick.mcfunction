# IF player DOESN'T have the credits tab, set up ALL advancement's roots
execute as @a[advancements={do2:visible/credits/credits_root=false}] run function do2:advancements/order_tabs

# this needs to be ran frequently, OR when ever the hidden triggers, it calls a function to auto grant the visible one.
execute as @a run function do2:advancements/grant_visible/all

# IF the player has quit the game and is back, RUN on_player_rejoin
execute as @a[scores={do2.utility.trackLeaves=1..}] at @s run function do2:events/on_player_rejoin

# track ticks/seconds in the dungeon. Also handles if dungeon is empty.
execute if score $dungeon do2.run.active matches 1 run function do2:dungeon_timer

# call on player death when running do2
execute as @a[tag=do2.running, scores={do2.run.has_died=1}] run function do2:events/on_player_death

# if all players running do2 dead, end game.
execute if score $dungeon do2.run.player_deaths = $dungeon do2.run.players run function do2:events/on_game_end

# if no players running do2 but game active for 5 minutes, end game.
execute if score $dungeon do2.run.empty matches 300 run function do2:events/on_game_end

# For every UNTRACKED item, (item entities not tagged)
# Mark the item as UNTRACKED
execute as @e[type=item,tag=!tracked] run function do2:as_item_entity

# - For Dev Stuff -
# Reveal Markers Control
execute as @a[tag=marker_controller] run function do2:dungeon_setup/teleport_ravagers/dev/controller
# Disable AI for monsters (so we can spot bad light levels)
execute as @e[type=minecraft:zombie] run tag @s add ShouldntSpawn
execute as @e[type=minecraft:spider] run tag @s add ShouldntSpawn
execute as @e[type=minecraft:skeleton] run tag @s add ShouldntSpawn
execute as @e[type=minecraft:enderman] run tag @s add ShouldntSpawn
execute as @e[type=minecraft:creeper] run tag @s add ShouldntSpawn

execute as @e[tag=ShouldntSpawn] run data merge entity @s {NoAI:1b}
execute as @e[tag=ShouldntSpawn] run data merge entity @s {CustomName: '{"text":"Light Levels here let me spawn."}'}
# Enable this after EVERYTHING is excavated.
#execute as @e[tag=ShouldntSpawn] if entity @p[distance=..20] run effect give @s minecraft:glowing 1 1 true
