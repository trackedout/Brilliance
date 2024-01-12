# - Start Log -
execute as @a[scores={do2.utility.logLevel=3..}] run tellraw @s ["",{"text":"[§9B§r]: Datapack tick. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§rEvery "},{"score":{"name":"$dungeon","objective":"do2.config.tickRate"},"color":"aqua"},{"text":" §rin game ticks"}]}},{"text":")"}]
# - End Log -

scoreboard players set $dungeon do2.utility.currentTick 0

# IF player DOESN'T have the credits tab, set up ALL advancement's roots
execute as @a[advancements={do2:visible/credits/credits_root=false}] run function do2:advancements/order_tabs

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
execute as @e[type=minecraft:evoker] if entity @s[nbt={ActiveEffects:[{Id:24}]}] run effect clear @s minecraft:glowing


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
execute as @e[tag=ShouldntSpawn] at @s if entity @p[distance=..20] run effect give @s minecraft:glowing 10 1 true

#Todo: run this only while a player is ON: level 2.
function do2:dungeon_setup/test_for_cove_dripstone
