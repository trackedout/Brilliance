# called at start of run (when they hit pressure plate at the end of the minecart track)
tag @s add do2.running

scoreboard players set $dungeon do2.run.dead 0
scoreboard players set $dungeon do2.run.ticks 0
scoreboard players set $dungeon do2.run.seconds 0
