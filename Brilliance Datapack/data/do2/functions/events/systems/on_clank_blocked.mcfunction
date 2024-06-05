# Ran when clank is BLOCKED
# - Start Log -
execute as @a[scores={do2.logs.clank=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Blocked §8Clank§r."}]
# - End Log -

# update scoreboard
scoreboard players add @a[tag=do2.received_shulker] do2.run.systems.clank.blocked 1
scoreboard players add @a[tag=do2.received_shulker] do2.systems.clank.blocked 1

# AGRONET event
function do2:agronet/systems/clank_blocked
