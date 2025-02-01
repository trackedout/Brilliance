# Should be once every 5 seconds, but could be longer depending on TPS

# - Start Log -
execute as @a[scores={do2.logs.spam=2..}] run tellraw @s ["",{"text":"[§9B§r]: Running a 100 tick mark. "}]
# - End Log -


# Lock/Unlock Settings room
execute if score $dungeon do2.run.active matches 0 run function do2:scoreboard/config/config_unlock
execute if score $dungeon do2.run.active matches 1.. run function do2:scoreboard/config/config_lock

execute if score $dungeon do2.config.ec.controlSummons matches 0 if score $dungeon do2.run.active matches 0 run function do2:dungeon_setup/legacy/test_for_ravagers
execute if score $dungeon do2.config.ec.controlSummons matches 0 if score $dungeon do2.run.active matches 0 run function do2:dungeon_setup/legacy/test_for_wardens
execute if score $dungeon do2.config.ec.controlSummons matches 0 if score $dungeon do2.run.active matches 0 run function do2:dungeon_setup/legacy/test_for_other_killers
execute if score $dungeon do2.run.active matches 0 run function do2:entity_controller/generate_entities/markers/test_for_markers

# Enable/Disable certain triggers
execute as @a run function do2:scoreboard/triggers/on_player_join

# Ensure mob switch
function do2:entity_controller/hostile_mob_switch/ensure_mob_switch
