# - Start Log -
tag @s add joinPlayerLogTarget
execute as @a[scores={do2.logs.spam=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: "},{"selector":"@p[tag=joinPlayerLogTarget]"},{"text":" joined the game."}]
tag @s remove joinPlayerLogTarget
# - End Log -

scoreboard players set @s do2.utility.trackLeaves 0

advancement revoke @s from do2:visible/credits/credits_root
advancement revoke @s from do2:visible/empty/empty_root
advancement revoke @s from do2:visible/dlc/dlc_root
advancement revoke @s from do2:visible/phases/phases_root
advancement revoke @s from do2:visible/treasure/treasure_root
advancement revoke @s from do2:visible/cards/cards_root
advancement revoke @s from do2:visible/survival/survival_root
advancement revoke @s from do2:visible/adventuring/adventuring_root

execute if score $dungeon do2.run.active matches 1.. unless entity @s[tag=do2.running] run function do2:scoreboard/spectator_per_run
execute if score $dungeon do2.run.active matches 1.. unless entity @s[tag=do2.running] run tag @s remove do2.received_shulker
function do2:scoreboard/triggers/on_player_join

# If player is in the settings room while room is locked out, lock the settings room. Ensure player gets TP'ed out
execute if score $dungeon do2.utility.lockConfigRoom matches 1 run function do2:scoreboard/config/config_lock

# If player is at LOBBY worldspawn when joining, Teleport them rotated properly
execute positioned -547 113 1980 if entity @s[distance=..5] at @s run tp @s ~ ~ ~ 90 0

# If player is at PORTAL worldspawn when joining, Teleport them rotated properly
execute positioned -524 103 2167 if entity @s[distance=..10] at @s run tp @s ~ ~ ~ 180 -20

# If game hasn't started. Swap the difficulty, to the user's last used difficulty.
execute if score $dungeon do2.utility.onInstance matches 1 unless score $dungeon do2.run.active matches 1.. as @p[tag=do2.received_shulker] run function do2:dungeon_setup/preset_difficulty

# Check if player needs AUDIO compatability
tag @s add do2.audio_checking
schedule function do2:vanilla_compatability/audio/interface/detect 5t append

# Check if we should enable player's ability to enter in the setting's room
tag @s add do2.practice_room_checking
schedule function do2:external/tracked_out/check_for_start_of_practice 5t append

# Agronet event
function do2:external/agronet/logs/spam/on_player_join
