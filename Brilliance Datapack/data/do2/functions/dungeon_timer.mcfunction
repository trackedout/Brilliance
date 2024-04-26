# Clock timer for dungeon.
execute unless score unless score $dungeon do2.run.has_won matches 1 run scoreboard players add $dungeon do2.run.ticks 1
execute unless score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.ticks matches 20 run scoreboard players add $dungeon do2.run.seconds 1
execute unless score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.ticks matches 20 run scoreboard players set $dungeon do2.run.ticks 0

# AFK timer
execute as @p[tag=do2.running] run scoreboard players set $dungeon do2.run.timeWithNoPlayers 0
execute as @p[tag=do2.won] run scoreboard players set $dungeon do2.run.timeWithNoPlayers 0
scoreboard players add $dungeon do2.run.timeWithNoPlayers 1
