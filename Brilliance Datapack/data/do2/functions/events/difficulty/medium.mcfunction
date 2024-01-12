# - Start Log -
execute as @a[scores={do2.utility.logLevel=1..}] run tellraw @s ["",{"text":"[§9B§r]: Dungeon Difficulty: §aMedium"}]
# - End Log -

# scoreboard
scoreboard players set $dungeon do2.run.difficulty 2

# agronet
function do2:agronet/difficulty/medium
