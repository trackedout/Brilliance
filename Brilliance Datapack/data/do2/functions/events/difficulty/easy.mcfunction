# - Start Log -
execute as @a[scores={do2.utility.logLevel=1..}] run tellraw @s ["",{"text":"[§9B§r]: Dungeon Difficulty: §1Easy "}]
# - End Log -

# scoreboard
scoreboard players set $dungeon do2.run.difficulty 1

# agronet
function do2:agronet/difficulty/easy
