execute if score $dungeon do2.utility.l4ShriekerScreamed matches 1.. run return 0

# - Start Log -
execute as @a[scores={do2.logs.clank=3..}] run tellraw @s ["",{"text":"§f[§9B§r]: Activated Shrieker §b#408 "},{"text":"§r(§b§o§nTeleeeeeeport Me§r)","clickEvent":{"action":"run_command","value":"/tp @s -615 -53 1904"}}]
# - End Log -

schedule function do2:events/systems/on_shrieker/reset_l4_shrieker 60t
scoreboard players set $dungeon do2.utility.l4ShriekerScreamed 1

# Agronet event
function do2:external/agronet/logs/clank/on_shrieker/408