# - Start Log -
execute as @a[scores={do2.logs.gamestate=1..}] run tellraw @s ["",{"text":"[§9B§r]: Dungeon Difficulty: §6Hard"}]
# - End Log -

# scoreboard
scoreboard players set $dungeon do2.run.difficulty 3

# preference
execute as @p[tag=do2.received_shulker] run scoreboard players set @s do2.config.dungeonDifficulty 3

# agronet
execute as @p[tag=do2.received_shulker] run function do2:agronet/difficulty/hard
