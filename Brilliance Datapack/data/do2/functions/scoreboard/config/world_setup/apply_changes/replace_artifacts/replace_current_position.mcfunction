# Iskall's Bionic Eye of Doom === Torchy
execute if score $dungeon do2.config.wc.replaceRetiredHermits matches 1 run scoreboard players set $dungeon do2.utility.modelDataTarget 20
execute if score $dungeon do2.config.wc.replaceRetiredHermits matches 0 run scoreboard players set $dungeon do2.utility.modelDataTarget 45
function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/check_all_slots_for_matching_model_data

# Stressmonster's Wand of Gorgeousness === Hattificator #26
execute if score $dungeon do2.config.wc.replaceRetiredHermits matches 1 run scoreboard players set $dungeon do2.utility.modelDataTarget 35
execute if score $dungeon do2.config.wc.replaceRetiredHermits matches 0 run scoreboard players set $dungeon do2.utility.modelDataTarget 46
function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/check_all_slots_for_matching_model_data
