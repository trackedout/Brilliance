# called at start of run (when they hit pressure plate at the end of the minecart track)

# tags non-spectating players to running dungeon and stores how many to scoreboard.
execute store result score $dungeon do2.run.players run tag @a[tag=!do.spectating] add do2.running

# === dungadungadungadungadunga ===
execute as @a[tag=do.running] run log-event dungeon-started
# =================================

# do all scoreboard resets that happen per run.
execute as @a[tag=do2.running] run function do2:scoreboard/per_run

# setups dungeon clock.
scoreboard players set $dungeon do2.run.active 1
scoreboard players set $dungeon do2.run.empty_time 0
scoreboard players set $dungeon do2.run.deaths 0
scoreboard players set $dungeon do2.run.ticks 0
scoreboard players set $dungeon do2.run.seconds 0

#revoke all utility advancements. These are used for additional conditions
advancement revoke @a from do2:utility/root

#reset CERTAIN advancement progress.
scoreboard players set @a[tag=do.running] do2.adv.threecoursemeal 0
advancement revoke @s only do2:visible/adventuring/eat_three_uniques
