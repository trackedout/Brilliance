execute as @a[advancements={deckedout:credits/credits_root=false}] run function deckedout:setup_root_advancements
function deckedout:dungeon_timer

# call on player death
execute as @a[tag=do.running, tag=do.won, scores={do.run.dead=1}] run function deckedout:on_win
execute as @a[tag=do.running, scores={do.run.dead=1}] run function deckedout:on_lose
