#Triggers upon CLOSING the exit doors,

# - Start Log -
tag @s add exitedLogTarget
execute at @s as @a[scores={do2.logs.gamestate=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=exitedLogTarget]"},{"text":" has exited the dungeon."}]
tag @s add exitedLogTarget
# - End Log -

kill @e[type=vex]
