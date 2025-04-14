# triggers when Rusty gets repaired.

# - Start Log -
execute as @a[scores={do2.logs.player_actions=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Rusty Repaired. "}]
# - End Log -

execute positioned -521 -2 2007 as @p[team=do2.players,distance=..10] run scoreboard players add @s do2.rustyrepairs 1
scoreboard players add $dungeon do2.rustyrepairs 1

# Agronet event
function do2:external/agronet/logs/player_actions/on_rusty_repair
