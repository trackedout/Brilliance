execute as @a[advancements={decked_out_2:visible/credits/credits_root=false}] run function decked_out_2:setup_root_advancements
execute as @a[scores={do.utility.trackLeaves=1..}] at @s run function decked_out_2:on_player_rejoin
function decked_out_2:dungeon_timer

# call on player death
execute as @a[tag=do.running, tag=do.won, scores={do.run.dead=1}] run function decked_out_2:on_win
execute as @a[tag=do.running, scores={do.run.dead=1}] run function decked_out_2:on_lose
