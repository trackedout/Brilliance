# - Start Log -
execute as @a[scores={do2.logs.player_actions=2..}] run tellraw @s ["",{"text":"§f[§9B§r]: Player submitted a §2Level 4§r Key "}]
# - End Log -

scoreboard players add @p[tag=do2.recieved_shulker] do2.submissions.l4_key 1
scoreboard players add $dungeon do2.submissions.l4_key 1

# Agronet event
function do2:external/agronet/logs/player_actions/on_key/level_4
