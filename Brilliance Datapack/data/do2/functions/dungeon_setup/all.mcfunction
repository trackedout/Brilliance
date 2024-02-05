# - Start Log -
execute as @a[scores={do2.logs.dungeon_setup=1..}] run tellraw @s ["",{"text":"[§9B§r]: Running Dungeon Setup."}]
# - End Log -

# No Longer Trying to repair.
scoreboard players set $dungeon do2.utility.dungeonRepair 0

# - SETUP -

execute if score $dungeon do2.config.refillDungeonType matches 1 run function do2:reset_dungeon/new_reset_dungeon_to_default
execute if score $dungeon do2.config.refillDungeonType matches 2 run function do2:reset_dungeon/new_write_to_dungeon
execute if score $dungeon do2.config.fr.refillBerries matches 1 run function do2:dungeon_setup/refill/refill_berry_bushes
execute if score $dungeon do2.config.fr.resetComposters matches 1 run function do2:dungeon_setup/reset_composters

function do2:dungeon_setup/refill/refill_guppy_geyser
function do2:dungeon_setup/test_for_ravagers
function do2:dungeon_setup/test_for_wardens
function do2:dungeon_setup/test_for_other_killers
function do2:dungeon_setup/test_for_markers
function do2:dungeon_setup/reset_hopper_minecarts/test_for_tags
function do2:dungeon_setup/reset_hopper_minecarts/set_inventories
function do2:dungeon_setup/teleport_killers/all
function do2:egg_hunt/spawn_egg_hitboxes
function do2:dungeon_setup/summon/others
function do2:scoreboard/config/balance_changes/actions
function do2:dungeon_setup/decide_day_or_night

# Other Setup:
function do2:scoreboard/config/config_setup
function do2:random_gen/random_setup

# Whether Max Clank Disables Treasure
execute if score $dungeon do2.config.maxClankTreasure matches 1 run setblock -624 25 1990 minecraft:redstone_wire
execute unless score $dungeon do2.config.maxClankTreasure matches 1 run setblock -624 25 1990 minecraft:glass

# Whether FAST reset is enabled
execute if score $dungeon do2.config.fastReset matches 1 run setblock -542 122 1966 minecraft:redstone_block
execute if score $dungeon do2.config.fastReset matches 0 run setblock -542 122 1966 minecraft:glass

# Reset Current Tick.
scoreboard players set $dungeon do2.utility.currentTick 0
