# Called when a compass is submitted at a dropoff point.
# - Start Log -
execute as @a[scores={do2.logs.player_actions=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Submitted Compass. "}]
# - End Log -

# AGRONET EVENT
function do2:external/agronet/systems/compass_submitted

# Reset their inventories.
function do2:dungeon_setup/reset_hopper_minecarts/set_inventories