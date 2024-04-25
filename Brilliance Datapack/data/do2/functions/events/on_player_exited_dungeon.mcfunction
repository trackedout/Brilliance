#Triggers upon CLOSING the exit doors, heading down to the artifact submission area.

# - Start Log -
tag @s add exitedLogTarget
execute at @s as @a[scores={do2.logs.gamestate=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=exitedLogTarget]"},{"text":" has escaped the dungeon."}]
tag @s remove exitedLogTarget
# - End Log -

kill @e[type=vex]
