# - Start Log -
execute as @a[scores={do2.logs.player_actions=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Player submitted bomb. "}]
# - End Log -

advancement grant @a[team=do2.players] only do2:hidden/adventuring/open_basalt_door

scoreboard players add @p[tag=do2.recieved_shulker] do2.submissions.bombs 1
scoreboard players add $dungeon do2.submissions.bombs 1

# Agronet event
function do2:external/agronet/logs/player_actions/on_door_bomb,kjk
