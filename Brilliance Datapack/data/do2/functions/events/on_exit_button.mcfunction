# - Start Log -
tag @s add exitLogTarget
execute at @s as @a[scores={do2.logs.gamestate=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=exitLogTarget]"},{"text":" has exited the dungeon."}]
tag @s remove exitLogTarget
# - End Log -

execute as @e[type=player,gamemode=!spectator,limit=1,sort=nearest] run function do2:agronet/shut_down_server
