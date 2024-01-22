# - Start Log -
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: Running Dungeon Setup."}]
# - End Log -

scoreboard players set $dungeon do2.utility.dungeonRepair 0

function do2:dungeon_setup/refill/refill_droppers
function do2:dungeon_setup/refill/refill_berry_bushes
function do2:dungeon_setup/refill/refill_guppy_geyser
function do2:dungeon_setup/test_for_ravagers
function do2:dungeon_setup/test_for_wardens
function do2:dungeon_setup/test_for_other_killers
function do2:dungeon_setup/test_for_markers
function do2:dungeon_setup/reset_hopper_minecarts/test_for_tags
function do2:dungeon_setup/reset_hopper_minecarts/set_inventories
function do2:dungeon_setup/teleport_killers/all
function do2:egg_hunt/spawn_egg_hitboxes
function do2:dungeon_setup/summon_others
function do2:scoreboard/config/config_setup

# Whether Max Clank Disables Treasure
execute if score $dungeon do2.config.maxClankTreasure matches 1 run setblock -624 25 1990 minecraft:redstone_wire
execute unless score $dungeon do2.config.maxClankTreasure matches 1 run setblock -624 25 1990 minecraft:glass

scoreboard players set $dungeon do2.utility.currentTick 0
