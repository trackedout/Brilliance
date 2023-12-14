# called at start of run (when they hit pressure plate at the end of the minecart track)

# tags non-spectating players to running dungeon and stores how many to scoreboard.
execute store result score $dungeon do.run.players run tag @a[tag=!do.spectating] add do2.running

# setups dungeon clock.
scoreboard players set $dungeon do2.run.dead 0
scoreboard players set $dungeon do2.run.ticks 0
scoreboard players set $dungeon do2.run.seconds 0
