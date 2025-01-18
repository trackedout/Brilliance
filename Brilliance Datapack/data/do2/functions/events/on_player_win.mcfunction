# called when a player wins.

# - Start Log -
tag @s add winLogTarget
execute as @a[scores={do2.logs.gamestate=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: "},{"selector":"@p[tag=winLogTarget]"},{"text":" won. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§rPlayer reached the end and someone submitted an artifact."}]}},{"text":")"}]
tag @s remove winLogTarget
# - End Log -


# player is no longer running
tag @s remove do2.running
tag @s add do2.won
scoreboard players set @s do2.run.has_won 1
scoreboard players set $dungeon do2.run.has_won 1

# Note that they won
scoreboard players add @s do2.wins 1
scoreboard players add @s do2.win_streak 1
scoreboard players set @s do2.loss_streak 0
scoreboard players add $dungeon do2.wins 1
scoreboard players add $dungeon do2.win_streak 1
scoreboard players set $dungeon do2.loss_streak 0

# set do2.highest_win_streak if do2.win_streak is >= than it.
execute if score @s do2.win_streak >= @s do2.highest_win_streak run scoreboard players operation @s do2.highest_win_streak = @s do2.win_streak
execute if score $dungeon do2.win_streak >= $dungeon do2.highest_win_streak run scoreboard players operation $dungeon do2.highest_win_streak = $dungeon do2.win_streak

# store run time when player dies
scoreboard players operation @s do2.run.seconds = $dungeon do2.run.seconds

# increase player lifetime totals for embers and crowns collected
scoreboard players operation @s do2.lifetime.escaped.embers += @s do2.run.items.embers
scoreboard players operation $dungeon do2.lifetime.escaped.embers += @s do2.run.items.embers
scoreboard players operation @s do2.lifetime.escaped.crowns += @s do2.run.items.crowns
scoreboard players operation $dungeon do2.lifetime.escaped.crowns += @s do2.run.items.crowns

# store artifact embers as part of lifetime totals
execute as @s run function do2:events/on_player_artifact_submitted


# ADVANCEMENT STUFF GOES HERE
# - End run w/ more embers than artifact
execute if entity @s[tag=do2.received_shulker] run function do2:advancements/checks/end_more_embers_than_artifact
# - WIN X DIFFICULTY -
execute if score $dungeon do2.run.difficulty matches 1 run advancement grant @s only do2:hidden/survival/win_difficulty_1
execute if score $dungeon do2.run.difficulty matches 2 run advancement grant @s only do2:hidden/survival/win_difficulty_2
execute if score $dungeon do2.run.difficulty matches 3 run advancement grant @s only do2:hidden/survival/win_difficulty_3
execute if score $dungeon do2.run.difficulty matches 4 run advancement grant @s only do2:hidden/survival/win_difficulty_4
execute if score $dungeon do2.run.difficulty matches 5 run advancement grant @s only do2:hidden/survival/win_difficulty_5
# - WIN X LEVEL -
execute if score @s do2.run.deepest_floor matches 1 run advancement grant @s only do2:hidden/survival/win_level_1
execute if score @s do2.run.deepest_floor matches 2 run advancement grant @s only do2:hidden/survival/win_level_2
execute if score @s do2.run.deepest_floor matches 3 run advancement grant @s only do2:hidden/survival/win_level_3
execute if score @s do2.run.deepest_floor matches 4 run advancement grant @s only do2:hidden/survival/win_level_4
# =============================
