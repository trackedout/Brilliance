# when a pumpkin is served to the witch hut
# - Start Log -
execute as @a[scores={do2.logs.player_actions=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Pumpkin submitted to witch hut. "}]
# - End Log -

# Agronet event
function do2:external/agronet/logs/player_actions/on_trick_or_treat