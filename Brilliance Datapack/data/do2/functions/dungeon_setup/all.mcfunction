# - Start Log -
execute as @a[scores={do2.logs.dungeon_setup=1..}] run tellraw @s ["",{"text":"[§9B§r]: Running Dungeon Setup."}]
# - End Log -

# No Longer Trying to repair.
scoreboard players set $dungeon do2.utility.dungeonRepair 0

# - SETUP -

function do2:dungeon_setup/refill/all
execute if score $dungeon do2.config.fr.resetComposters matches 1 run function do2:dungeon_setup/reset_composters
execute if score $dungeon do2.config.fr.cakeGauntlet matches 1 run setblock -618 -47 1988 cake[bites=0]

# - Start Log -
function do2:entity_controller/generate_entities/markers/test_for_markers
execute if score $dungeon do2.config.ec.controlSummons matches 0 as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Testing for required entities. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§rIncludes:\n - Teleport Markers\n - Ravagers\n - Wardens\n - §oOne Eyed Willie§r\n - §oDavey Bones§r\n - §oEndermites§r\n - §oEvokers§r"}]}},{"text":")"}]
execute if score $dungeon do2.config.ec.controlSummons matches 0 run function do2:dungeon_setup/test_for_ravagers
execute if score $dungeon do2.config.ec.controlSummons matches 0 run function do2:dungeon_setup/test_for_wardens
execute if score $dungeon do2.config.ec.controlSummons matches 0 run function do2:dungeon_setup/test_for_other_killers
# - End Log -

execute if score $dungeon do2.config.ec.controlSummons matches 1 run function do2:entity_controller/generate_entities
execute if score $dungeon do2.config.ec.controlSummons matches 0 run schedule function do2:dungeon_setup/summon/others 3t append
execute if score $dungeon do2.config.ec.controlSummons matches 0 run schedule function do2:dungeon_setup/teleport_killers/all 3t append
function do2:advancements/egg_hunt/spawn_egg_hitboxes
function do2:scoreboard/config/balance_changes/actions
function do2:dungeon_setup/reset_hopper_minecarts/test_for_accurate_blocks
function do2:dungeon_setup/reset_hopper_minecarts/test_for_tags
function do2:dungeon_setup/reset_hopper_minecarts/set_inventories
function do2:dungeon_setup/randomize_clank_blockers/randomize_shrieker_groups

# Ensure X amount of cards are always available
fill -624 -17 2014 -624 -17 1998 air replace
schedule function do2:dungeon_setup/make_cards_always_available 1s

# Experimental
function do2:scoreboard/config/max_clank_berries/start_suppress_berries

# Other Setup
function do2:scoreboard/config/config_setup

# Whether Max Clank Disables Treasure
execute if score $dungeon do2.config.maxClankTreasure matches 1 run setblock -624 25 1990 minecraft:redstone_wire
execute unless score $dungeon do2.config.maxClankTreasure matches 1 run setblock -624 25 1990 minecraft:glass

# Reset Current Tick
scoreboard players set $dungeon do2.utility.currentTick 0

# Agronet event
function do2:external/agronet/logs/dungeon_setup/all