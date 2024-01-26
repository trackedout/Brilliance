# - Start Log -
execute as @a[scores={do2.logs.gamestate=1..}] run tellraw @s ["",{"text":"[§9B§r]: Dungeon Difficulty: §6Hard"}]
# - End Log -

# scoreboard
scoreboard players set $dungeon do2.run.difficulty 3

# agronet
function do2:agronet/difficulty/hard
