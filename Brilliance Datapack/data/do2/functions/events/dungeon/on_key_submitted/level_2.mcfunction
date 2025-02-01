# - Start Log -
execute as @a[scores={do2.logs.player_actions=2..}] run tellraw @s ["",{"text":"§f[§9B§r]: Player submitted a §2Level 2§r Key "}]
# - End Log -

# Agronet event
function do2:external/agronet/logs/player_actions/on_key/level_2