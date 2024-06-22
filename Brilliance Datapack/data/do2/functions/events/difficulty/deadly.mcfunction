# - Start Log -
execute as @a[scores={do2.logs.gamestate=1..}] run tellraw @s ["",{"text":"[§9B§r]: Dungeon Difficulty: §4Deadly "}]
# - End Log -

# scoreboard
scoreboard players set $dungeon do2.run.difficulty 4

# agronet
execute as @p[tag=do2.received_shulker] run function do2:agronet/difficulty/deadly
