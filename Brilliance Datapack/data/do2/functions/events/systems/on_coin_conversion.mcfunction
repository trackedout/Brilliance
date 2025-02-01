# - Start Log -
execute as @a[scores={do2.logs.player_actions=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Player converted four §acoins§r into a §acrown§r."}]
# - End Log -

scoreboard players add @a[tag=do2.received_shulker] do2.lifetime.coinsconverted 1
scoreboard players add $dungeon do2.lifetime.coinsconverted 1

# Agronet event
function do2:external/agronet/logs/player_actions/on_coin_conversion