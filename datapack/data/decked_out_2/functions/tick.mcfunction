execute as @a[advancements={do2:visible/credits/credits_root=false}] run function do2:setup_root_advancements
execute as @a[scores={do2.utility.trackLeaves=1..}] at @s run function do2:events/on_player_rejoin
function do2:dungeon_timer

# call on player death
execute as @a[tag=do2.running, tag=do2.won, scores={do2.run.dead=1}] run function do2:events/on_win
execute as @a[tag=do2.running, scores={do2.run.dead=1}] run function do2:events/on_lose
