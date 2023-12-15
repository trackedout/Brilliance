# IF player DOESN'T have the credits tab, set up ALL advancement's roots
execute as @a[advancements={do2:visible/credits/credits_root=false}] run function do2:advancements/order_tabs
# IF the player has quit the game and is back, RUN on_player_rejoin
execute as @a[scores={do2.utility.trackLeaves=1..}] at @s run function do2:events/on_player_rejoin

# track ticks in the dungeon
execute if score $dungeon do.run.active matches 1 run function do2:dungeon_timer

# call on player death when running do2
execute as @a[tag=do2.running, tag=do2.won, scores={do2.run.dead=1}] run function do2:events/on_win
execute as @a[tag=do2.running, scores={do2.run.dead=1}] run function do2:events/on_lose

# if all players running do2 dead, end game.
execute if score $dungeon do.run.deaths = $dungeon do.run.players run function do2:events/on_game_end

# if no players running do2 but game active for 5 minutes, end game.
execute if score $dungeon do.run.empty matches 300 run function do2:events/on_game_end
