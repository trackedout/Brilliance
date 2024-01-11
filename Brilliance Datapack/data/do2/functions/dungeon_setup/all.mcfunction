# Called  on_datapack_load.

gamerule mobGriefing false
function do2:dungeon_setup/refill/refill_droppers
function do2:dungeon_setup/refill/refill_berry_bushes
function do2:dungeon_setup/test_for_ravagers
function do2:dungeon_setup/test_for_wardens
function do2:dungeon_setup/test_for_killers
function do2:dungeon_setup/test_for_markers
function do2:dungeon_setup/teleport_killers/all
function do2:egg_hunt/spawn_egg_hitboxes


# Do nothing if tips are not broken - all other blocks must be there.
execute if block -554 15 1961 minecraft:pointed_dripstone if block -554 16 1961 minecraft:pointed_dripstone if block -554 16 1963 minecraft:pointed_dripstone if block -553 16 1960 minecraft:pointed_dripstone if block -553 17 1960 minecraft:pointed_dripstone if block -553 17 1962 minecraft:pointed_dripstone if block -552 15 1959 minecraft:pointed_dripstone if block -552 16 1959 minecraft:pointed_dripstone if block -552 20 1961 minecraft:pointed_dripstone if block -552 21 1961 minecraft:pointed_dripstone if block -552 16 1962 minecraft:pointed_dripstone if block -552 16 1963 minecraft:pointed_dripstone if block -552 17 1963 minecraft:pointed_dripstone if block -552 15 1964 minecraft:pointed_dripstone if block -552 16 1964 minecraft:pointed_dripstone if block -549 17 1961 minecraft:pointed_dripstone if block -549 18 1961 minecraft:pointed_dripstone run return 0

# Don't fix while player is close by. Blocks appearing looks weird, and can be really unfun to get blocked by it.
execute positioned -552 15 1961 if entity @p[distance=..16] run return 0
function do2:dungeon_setup/fix_cove_dripstone
