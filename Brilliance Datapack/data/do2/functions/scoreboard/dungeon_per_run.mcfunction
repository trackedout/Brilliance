# - Start Log -
execute as @a[scores={do2.logs.datapack_setup=1..}] run tellraw @s ["",{"text":"[§9B§r]: Setting up dungeon per run scores."}]
# - End Log -


scoreboard players set $dungeon do2.run.player_deaths 0
scoreboard players set $dungeon do2.run.ticks 0
scoreboard players set $dungeon do2.run.seconds 0
scoreboard players set $dungeon do2.run.empty_time 0
scoreboard players set $dungeon do2.agronet.card_bought -1
scoreboard players set $dungeon do2.agronet.card_played -1
scoreboard players set $dungeon do2.agronet.card_availible -1
scoreboard players set $dungeon do2.run.systems.clank.generated 0
scoreboard players set $dungeon do2.run.systems.clank.blocked 0
scoreboard players set $dungeon do2.run.systems.hazard.generated 0
scoreboard players set $dungeon do2.run.systems.hazard.blocked 0
scoreboard players set $dungeon do2.run.systems.hazard.activated 0
scoreboard players set $dungeon do2.run.systems.treasure.released 0
scoreboard players set $dungeon do2.run.systems.embers.released 0
