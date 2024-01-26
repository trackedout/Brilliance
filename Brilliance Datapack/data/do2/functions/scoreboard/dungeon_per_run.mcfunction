# - Start Log -
execute as @a[scores={do2.logs.datapack_setup=1..}] run tellraw @s ["",{"text":"[§9B§r]: Setting up dungeon per run scores."}]
# - End Log -

# setups dungeon clock.
scoreboard players set $dungeon do2.run.active 1
scoreboard players set $dungeon do2.run.empty_time 0
scoreboard players set $dungeon do2.run.player_deaths 0
scoreboard players set $dungeon do2.run.ticks 0
scoreboard players set $dungeon do2.run.seconds 0
scoreboard players set $dungeon do2.utility.card_bought 0
