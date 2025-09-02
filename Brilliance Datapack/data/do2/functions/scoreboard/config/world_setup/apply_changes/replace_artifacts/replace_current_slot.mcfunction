# Figure out what index we are on, and run a different index for each.
# Chests can only a maximum of 27 indexes (counting from 0 to 26) but bulk is only the first 9. But for all edge cases we'll support chests too.
execute if score $index do2.utility.modelDataTarget matches 0 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/indexes/index_0
execute if score $index do2.utility.modelDataTarget matches 1 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/indexes/index_1
execute if score $index do2.utility.modelDataTarget matches 2 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/indexes/index_2
execute if score $index do2.utility.modelDataTarget matches 3 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/indexes/index_3
execute if score $index do2.utility.modelDataTarget matches 4 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/indexes/index_4
execute if score $index do2.utility.modelDataTarget matches 5 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/indexes/index_5
execute if score $index do2.utility.modelDataTarget matches 6 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/indexes/index_6
execute if score $index do2.utility.modelDataTarget matches 7 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/indexes/index_7
execute if score $index do2.utility.modelDataTarget matches 8 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/indexes/index_8
execute if score $index do2.utility.modelDataTarget matches 9 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/indexes/index_9
execute if score $index do2.utility.modelDataTarget matches 10 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/indexes/index_10
execute if score $index do2.utility.modelDataTarget matches 11 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/indexes/index_11
execute if score $index do2.utility.modelDataTarget matches 12 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/indexes/index_12
execute if score $index do2.utility.modelDataTarget matches 13 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/indexes/index_13
execute if score $index do2.utility.modelDataTarget matches 14 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/indexes/index_14
execute if score $index do2.utility.modelDataTarget matches 15 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/indexes/index_15
execute if score $index do2.utility.modelDataTarget matches 16 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/indexes/index_16
execute if score $index do2.utility.modelDataTarget matches 17 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/indexes/index_17
execute if score $index do2.utility.modelDataTarget matches 18 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/indexes/index_18
execute if score $index do2.utility.modelDataTarget matches 19 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/indexes/index_19
execute if score $index do2.utility.modelDataTarget matches 20 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/indexes/index_20
execute if score $index do2.utility.modelDataTarget matches 21 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/indexes/index_21
execute if score $index do2.utility.modelDataTarget matches 22 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/indexes/index_22
execute if score $index do2.utility.modelDataTarget matches 23 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/indexes/index_23
execute if score $index do2.utility.modelDataTarget matches 24 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/indexes/index_24
execute if score $index do2.utility.modelDataTarget matches 25 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/indexes/index_25
execute if score $index do2.utility.modelDataTarget matches 26 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/indexes/index_26

