execute if score $dungeon do2.utility.l4ShriekerScreamed matches 1.. run return 0

# - Start Log -
execute as @a[scores={do2.logs.clank=3..}] run tellraw @s ["",{"text":"§f[§9B§r]: Activated Shrieker §b#402 "},{"text":"§r(§b§o§nTeleeport Me§r)","clickEvent":{"action":"run_command","value":"/tp @s -630 -51 1918"}}]
# - End Log -

schedule function do2:events/systems/on_shrieker/reset_l4_shrieker 60t
scoreboard players set $dungeon do2.utility.l4ShriekerScreamed 1

# Agronet event
function do2:external/agronet/logs/clank/on_shrieker/402