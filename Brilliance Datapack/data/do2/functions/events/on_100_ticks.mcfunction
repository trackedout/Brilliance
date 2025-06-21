# Should be once every 5 seconds, but could be longer depending on TPS

# - Start Log -
execute as @a[scores={do2.logs.spam=2..}] run tellraw @s ["",{"text":"[§9B§r]: Running a 100 tick mark. "}]
# - End Log -

execute if score $dungeon do2.run.active matches 0 run function do2:entity_controller/generate_entities/markers/test_for_markers

# Enable/Disable certain triggers
execute as @a run function do2:scoreboard/triggers/on_player_join

# Ensure mob switch
function do2:entity_controller/hostile_mob_switch/ensure_mob_switch

# Grant the player their visible advancements to match their actual advancements.
# But only if the advancement isn't being ordering.
execute as @a if score @s do2.utility.advancementOrdering matches 0 run function do2:advancements/grant_visible/all

# Check if deepfrost is locked. (If easter egg is randomized)
execute if score $dungeon do2.config.wc.easter_eggs matches 2 run function do2:dungeon_setup/easter_egg_randomization/determine_matching_blocks
execute if score $dungeon do2.config.wc.easter_eggs matches 2 if score $dungeon do2.config.wc.easter_eggs_block_type matches ..19 run function do2:dungeon_setup/lock_deepfrost
execute if score $dungeon do2.config.wc.easter_eggs matches 2 if score $dungeon do2.config.wc.easter_eggs_block_type matches 20 run function do2:dungeon_setup/unlock_deepfrost
