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
