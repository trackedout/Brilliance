# - Start Log -
execute as @a[scores={do2.logs.player_actions=2..}] run tellraw @s ["",{"text":"§f[§9B§r]: Player submitted Compass at §b#23"},{"text":"§r(§b§o§nTeleport Me§r)","clickEvent":{"action":"run_command","value":"/tp @s -511 52 1958"}}]
# - End Log -

# Determine artifact data was on.
scoreboard players set @a[tag=!do2.fakePlayer] do2.run.aritfact_floor 1
scoreboard players set @a[tag=!do2.fakePlayer] do2.run.artifact_lodestone_id 23

# AGRONET EVENT
function do2:agronet/systems/compass_submitted

# Reset hopper minecart inventories.
function do2:dungeon_setup/reset_hopper_minecarts/set_inventories
