# when a pumpkin is served to the witch hut, RESULT: Treat

# - Start Log -
execute as @a[scores={do2.logs.player_actions=2..}] run tellraw @s ["",{"text":"§f[§9B§r]: Trick or Treat Result: §2TREAT"}]
# - End Log -

# Agronet event
function do2:external/agronet/logs/player_actions/on_treat