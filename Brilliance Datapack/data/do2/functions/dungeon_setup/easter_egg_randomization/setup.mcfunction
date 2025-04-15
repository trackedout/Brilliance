# Set all 20 blocks to be 0 for now. So setup doesn't confuse old blocks with current blocks.
scoreboard players set $easter_block_01 do2.config.wc.easter_eggs_block_type 0
scoreboard players set $easter_block_02 do2.config.wc.easter_eggs_block_type 0
scoreboard players set $easter_block_03 do2.config.wc.easter_eggs_block_type 0
scoreboard players set $easter_block_04 do2.config.wc.easter_eggs_block_type 0
scoreboard players set $easter_block_05 do2.config.wc.easter_eggs_block_type 0
scoreboard players set $easter_block_06 do2.config.wc.easter_eggs_block_type 0
scoreboard players set $easter_block_07 do2.config.wc.easter_eggs_block_type 0
scoreboard players set $easter_block_08 do2.config.wc.easter_eggs_block_type 0
scoreboard players set $easter_block_09 do2.config.wc.easter_eggs_block_type 0
scoreboard players set $easter_block_10 do2.config.wc.easter_eggs_block_type 0
scoreboard players set $easter_block_11 do2.config.wc.easter_eggs_block_type 0
scoreboard players set $easter_block_12 do2.config.wc.easter_eggs_block_type 0
scoreboard players set $easter_block_13 do2.config.wc.easter_eggs_block_type 0
scoreboard players set $easter_block_14 do2.config.wc.easter_eggs_block_type 0
scoreboard players set $easter_block_15 do2.config.wc.easter_eggs_block_type 0
scoreboard players set $easter_block_16 do2.config.wc.easter_eggs_block_type 0
scoreboard players set $easter_block_17 do2.config.wc.easter_eggs_block_type 0
scoreboard players set $easter_block_18 do2.config.wc.easter_eggs_block_type 0
scoreboard players set $easter_block_19 do2.config.wc.easter_eggs_block_type 0
scoreboard players set $easter_block_20 do2.config.wc.easter_eggs_block_type 0

# Setup all 20 blocks
execute store result score $easter_block_01 do2.config.wc.easter_eggs_block_type run function do2:dungeon_setup/easter_egg_randomization/random_decide_block
execute store result score $easter_block_02 do2.config.wc.easter_eggs_block_type run function do2:dungeon_setup/easter_egg_randomization/random_decide_block
execute store result score $easter_block_03 do2.config.wc.easter_eggs_block_type run function do2:dungeon_setup/easter_egg_randomization/random_decide_block
execute store result score $easter_block_04 do2.config.wc.easter_eggs_block_type run function do2:dungeon_setup/easter_egg_randomization/random_decide_block
execute store result score $easter_block_05 do2.config.wc.easter_eggs_block_type run function do2:dungeon_setup/easter_egg_randomization/random_decide_block
execute store result score $easter_block_06 do2.config.wc.easter_eggs_block_type run function do2:dungeon_setup/easter_egg_randomization/random_decide_block
execute store result score $easter_block_07 do2.config.wc.easter_eggs_block_type run function do2:dungeon_setup/easter_egg_randomization/random_decide_block
execute store result score $easter_block_08 do2.config.wc.easter_eggs_block_type run function do2:dungeon_setup/easter_egg_randomization/random_decide_block
execute store result score $easter_block_09 do2.config.wc.easter_eggs_block_type run function do2:dungeon_setup/easter_egg_randomization/random_decide_block
execute store result score $easter_block_10 do2.config.wc.easter_eggs_block_type run function do2:dungeon_setup/easter_egg_randomization/random_decide_block
execute store result score $easter_block_11 do2.config.wc.easter_eggs_block_type run function do2:dungeon_setup/easter_egg_randomization/random_decide_block
execute store result score $easter_block_12 do2.config.wc.easter_eggs_block_type run function do2:dungeon_setup/easter_egg_randomization/random_decide_block
execute store result score $easter_block_13 do2.config.wc.easter_eggs_block_type run function do2:dungeon_setup/easter_egg_randomization/random_decide_block
execute store result score $easter_block_14 do2.config.wc.easter_eggs_block_type run function do2:dungeon_setup/easter_egg_randomization/random_decide_block
execute store result score $easter_block_15 do2.config.wc.easter_eggs_block_type run function do2:dungeon_setup/easter_egg_randomization/random_decide_block
execute store result score $easter_block_16 do2.config.wc.easter_eggs_block_type run function do2:dungeon_setup/easter_egg_randomization/random_decide_block
execute store result score $easter_block_17 do2.config.wc.easter_eggs_block_type run function do2:dungeon_setup/easter_egg_randomization/random_decide_block
execute store result score $easter_block_18 do2.config.wc.easter_eggs_block_type run function do2:dungeon_setup/easter_egg_randomization/random_decide_block
execute store result score $easter_block_19 do2.config.wc.easter_eggs_block_type run function do2:dungeon_setup/easter_egg_randomization/random_decide_block
execute store result score $easter_block_20 do2.config.wc.easter_eggs_block_type run function do2:dungeon_setup/easter_egg_randomization/random_decide_block

# Set easter egg blocks to their randomly determined parts.
scoreboard players operation $easter_block_00 do2.config.wc.easter_eggs_block_type = $easter_block_01 do2.config.wc.easter_eggs_block_type
execute positioned -531 48 1974 run function do2:dungeon_setup/easter_egg_randomization/turn_score_to_block
scoreboard players operation $easter_block_00 do2.config.wc.easter_eggs_block_type = $easter_block_02 do2.config.wc.easter_eggs_block_type
execute positioned -507 18 1969 run function do2:dungeon_setup/easter_egg_randomization/turn_score_to_block
scoreboard players operation $easter_block_00 do2.config.wc.easter_eggs_block_type = $easter_block_03 do2.config.wc.easter_eggs_block_type
execute positioned -552 14 1967 run function do2:dungeon_setup/easter_egg_randomization/turn_score_to_block
scoreboard players operation $easter_block_00 do2.config.wc.easter_eggs_block_type = $easter_block_04 do2.config.wc.easter_eggs_block_type
execute positioned -519 47 1956 run function do2:dungeon_setup/easter_egg_randomization/turn_score_to_block
scoreboard players operation $easter_block_00 do2.config.wc.easter_eggs_block_type = $easter_block_05 do2.config.wc.easter_eggs_block_type
execute positioned -642 -9 1915 run function do2:dungeon_setup/easter_egg_randomization/turn_score_to_block
scoreboard players operation $easter_block_00 do2.config.wc.easter_eggs_block_type = $easter_block_06 do2.config.wc.easter_eggs_block_type
execute positioned -606 3 1883 run function do2:dungeon_setup/easter_egg_randomization/turn_score_to_block
scoreboard players operation $easter_block_00 do2.config.wc.easter_eggs_block_type = $easter_block_07 do2.config.wc.easter_eggs_block_type
execute positioned -576 -3 1905 run function do2:dungeon_setup/easter_egg_randomization/turn_score_to_block
scoreboard players operation $easter_block_00 do2.config.wc.easter_eggs_block_type = $easter_block_08 do2.config.wc.easter_eggs_block_type
execute positioned -596 12 2037 run function do2:dungeon_setup/easter_egg_randomization/turn_score_to_block
scoreboard players operation $easter_block_00 do2.config.wc.easter_eggs_block_type = $easter_block_09 do2.config.wc.easter_eggs_block_type
execute positioned -562 12 1936 run function do2:dungeon_setup/easter_egg_randomization/turn_score_to_block
scoreboard players operation $easter_block_00 do2.config.wc.easter_eggs_block_type = $easter_block_10 do2.config.wc.easter_eggs_block_type
execute positioned -540 36 2004 run function do2:dungeon_setup/easter_egg_randomization/turn_score_to_block
scoreboard players operation $easter_block_00 do2.config.wc.easter_eggs_block_type = $easter_block_11 do2.config.wc.easter_eggs_block_type
execute positioned -535 47 1972 run function do2:dungeon_setup/easter_egg_randomization/turn_score_to_block
scoreboard players operation $easter_block_00 do2.config.wc.easter_eggs_block_type = $easter_block_12 do2.config.wc.easter_eggs_block_type
execute positioned -542 18 1983 run function do2:dungeon_setup/easter_egg_randomization/turn_score_to_block
scoreboard players operation $easter_block_00 do2.config.wc.easter_eggs_block_type = $easter_block_13 do2.config.wc.easter_eggs_block_type
execute positioned -621 -7 1928 run function do2:dungeon_setup/easter_egg_randomization/turn_score_to_block
scoreboard players operation $easter_block_00 do2.config.wc.easter_eggs_block_type = $easter_block_14 do2.config.wc.easter_eggs_block_type
execute positioned -554 50 2027 run function do2:dungeon_setup/easter_egg_randomization/turn_score_to_block
scoreboard players operation $easter_block_00 do2.config.wc.easter_eggs_block_type = $easter_block_15 do2.config.wc.easter_eggs_block_type
execute positioned -540 19 2010 run function do2:dungeon_setup/easter_egg_randomization/turn_score_to_block
scoreboard players operation $easter_block_00 do2.config.wc.easter_eggs_block_type = $easter_block_16 do2.config.wc.easter_eggs_block_type
execute positioned -628 48 2000 run function do2:dungeon_setup/easter_egg_randomization/turn_score_to_block
scoreboard players operation $easter_block_00 do2.config.wc.easter_eggs_block_type = $easter_block_17 do2.config.wc.easter_eggs_block_type
execute positioned -526 14 1931 run function do2:dungeon_setup/easter_egg_randomization/turn_score_to_block
scoreboard players operation $easter_block_00 do2.config.wc.easter_eggs_block_type = $easter_block_18 do2.config.wc.easter_eggs_block_type
execute positioned -657 4 1914 run function do2:dungeon_setup/easter_egg_randomization/turn_score_to_block
scoreboard players operation $easter_block_00 do2.config.wc.easter_eggs_block_type = $easter_block_19 do2.config.wc.easter_eggs_block_type
execute positioned -504 46 2018 run function do2:dungeon_setup/easter_egg_randomization/turn_score_to_block
scoreboard players operation $easter_block_00 do2.config.wc.easter_eggs_block_type = $easter_block_20 do2.config.wc.easter_eggs_block_type
execute positioned -632 3 1925 run function do2:dungeon_setup/easter_egg_randomization/turn_score_to_block
