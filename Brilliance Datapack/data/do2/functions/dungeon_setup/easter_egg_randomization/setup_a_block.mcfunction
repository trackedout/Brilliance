# $dungeon do2.config.wc.easter_eggs_block_type = easter egg ID
# $easter_block_00 do2.config.wc.easter_eggs_block_type = block chosen
execute store result score $easter_block_00 do2.config.wc.easter_eggs_block_type run function do2:dungeon_setup/easter_egg_randomization/random_decide_block


# Make sure it doesn't match any other block, so all are unique
function do2:dungeon_setup/easter_egg_randomization/would_score_match_another
function do2:dungeon_setup/easter_egg_randomization/is_block_and_location_banned
execute if score $easter_block_00 do2.config.wc.easter_eggs_block_type matches 0 run function do2:dungeon_setup/easter_egg_randomization/setup_a_block

execute if score $dungeon do2.config.wc.easter_eggs_block_type matches 1 run scoreboard players operation $easter_block_01 do2.config.wc.easter_eggs_block_type = $easter_block_00 do2.config.wc.easter_eggs_block_type
execute if score $dungeon do2.config.wc.easter_eggs_block_type matches 2 run scoreboard players operation $easter_block_02 do2.config.wc.easter_eggs_block_type = $easter_block_00 do2.config.wc.easter_eggs_block_type
execute if score $dungeon do2.config.wc.easter_eggs_block_type matches 3 run scoreboard players operation $easter_block_03 do2.config.wc.easter_eggs_block_type = $easter_block_00 do2.config.wc.easter_eggs_block_type
execute if score $dungeon do2.config.wc.easter_eggs_block_type matches 4 run scoreboard players operation $easter_block_04 do2.config.wc.easter_eggs_block_type = $easter_block_00 do2.config.wc.easter_eggs_block_type
execute if score $dungeon do2.config.wc.easter_eggs_block_type matches 5 run scoreboard players operation $easter_block_05 do2.config.wc.easter_eggs_block_type = $easter_block_00 do2.config.wc.easter_eggs_block_type
execute if score $dungeon do2.config.wc.easter_eggs_block_type matches 6 run scoreboard players operation $easter_block_06 do2.config.wc.easter_eggs_block_type = $easter_block_00 do2.config.wc.easter_eggs_block_type
execute if score $dungeon do2.config.wc.easter_eggs_block_type matches 7 run scoreboard players operation $easter_block_07 do2.config.wc.easter_eggs_block_type = $easter_block_00 do2.config.wc.easter_eggs_block_type
execute if score $dungeon do2.config.wc.easter_eggs_block_type matches 8 run scoreboard players operation $easter_block_08 do2.config.wc.easter_eggs_block_type = $easter_block_00 do2.config.wc.easter_eggs_block_type
execute if score $dungeon do2.config.wc.easter_eggs_block_type matches 9 run scoreboard players operation $easter_block_09 do2.config.wc.easter_eggs_block_type = $easter_block_00 do2.config.wc.easter_eggs_block_type
execute if score $dungeon do2.config.wc.easter_eggs_block_type matches 10 run scoreboard players operation $easter_block_10 do2.config.wc.easter_eggs_block_type = $easter_block_00 do2.config.wc.easter_eggs_block_type
execute if score $dungeon do2.config.wc.easter_eggs_block_type matches 11 run scoreboard players operation $easter_block_11 do2.config.wc.easter_eggs_block_type = $easter_block_00 do2.config.wc.easter_eggs_block_type
execute if score $dungeon do2.config.wc.easter_eggs_block_type matches 12 run scoreboard players operation $easter_block_12 do2.config.wc.easter_eggs_block_type = $easter_block_00 do2.config.wc.easter_eggs_block_type
execute if score $dungeon do2.config.wc.easter_eggs_block_type matches 13 run scoreboard players operation $easter_block_13 do2.config.wc.easter_eggs_block_type = $easter_block_00 do2.config.wc.easter_eggs_block_type
execute if score $dungeon do2.config.wc.easter_eggs_block_type matches 14 run scoreboard players operation $easter_block_14 do2.config.wc.easter_eggs_block_type = $easter_block_00 do2.config.wc.easter_eggs_block_type
execute if score $dungeon do2.config.wc.easter_eggs_block_type matches 15 run scoreboard players operation $easter_block_15 do2.config.wc.easter_eggs_block_type = $easter_block_00 do2.config.wc.easter_eggs_block_type
execute if score $dungeon do2.config.wc.easter_eggs_block_type matches 16 run scoreboard players operation $easter_block_16 do2.config.wc.easter_eggs_block_type = $easter_block_00 do2.config.wc.easter_eggs_block_type
execute if score $dungeon do2.config.wc.easter_eggs_block_type matches 17 run scoreboard players operation $easter_block_17 do2.config.wc.easter_eggs_block_type = $easter_block_00 do2.config.wc.easter_eggs_block_type
execute if score $dungeon do2.config.wc.easter_eggs_block_type matches 18 run scoreboard players operation $easter_block_18 do2.config.wc.easter_eggs_block_type = $easter_block_00 do2.config.wc.easter_eggs_block_type
execute if score $dungeon do2.config.wc.easter_eggs_block_type matches 19 run scoreboard players operation $easter_block_19 do2.config.wc.easter_eggs_block_type = $easter_block_00 do2.config.wc.easter_eggs_block_type
execute if score $dungeon do2.config.wc.easter_eggs_block_type matches 20 run scoreboard players operation $easter_block_20 do2.config.wc.easter_eggs_block_type = $easter_block_00 do2.config.wc.easter_eggs_block_type
