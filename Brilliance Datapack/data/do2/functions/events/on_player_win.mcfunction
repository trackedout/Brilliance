# called when player submits artifact.
tag @s do2.won
scoreboard players add @s do2.wins 1
scoreboard players add @s do2.streak 1

# ACHIEVEMENT STUFF GOES HERE
execute if score @s do2.wins matches 1 run advancement grant @s only do2:hidden/survival/win_1_times
execute if score @s do2.wins matches 10 run advancement grant @s only do2:hidden/survival/win_10_times
execute if score @s do2.wins matches 20 run advancement grant @s only do2:hidden/survival/win_20_times
execute if score @s do2.wins matches 30 run advancement grant @s only do2:hidden/survival/win_30_times
execute if score @s do2.wins matches 40 run advancement grant @s only do2:hidden/survival/win_40_times
execute if score @s do2.wins matches 50 run advancement grant @s only do2:hidden/survival/win_50_times
execute if score @s do2.wins matches 65 run advancement grant @s only do2:hidden/survival/win_65_times
execute if score @s do2.wins matches 80 run advancement grant @s only do2:hidden/survival/win_80_times
execute if score @s do2.wins matches 100 run advancement grant @s only do2:hidden/survival/win_100_times
# =
execute if score @s do2.streak matches 3 run advancement grant @s only do2:hidden/survival/win_streak_3
execute if score @s do2.streak matches 5 run advancement grant @s only do2:hidden/survival/win_streak_5
execute if score @s do2.streak matches 7 run advancement grant @s only do2:hidden/survival/win_streak_7
execute if score @s do2.streak matches 10 run advancement grant @s only do2:hidden/survival/win_streak_10
# =
execute if score $dungeon do2.run.difficulty matches 1 run advancement grant @s only do2:hidden/survival/win_difficulty_1
execute if score $dungeon do2.run.difficulty matches 2 run advancement grant @s only do2:hidden/survival/win_difficulty_2
execute if score $dungeon do2.run.difficulty matches 3 run advancement grant @s only do2:hidden/survival/win_difficulty_3
execute if score $dungeon do2.run.difficulty matches 4 run advancement grant @s only do2:hidden/survival/win_difficulty_4
execute if score $dungeon do2.run.difficulty matches 5 run advancement grant @s only do2:hidden/survival/win_difficulty_5
# = TODO: (need to refactor since if the artifact is on level 3 but the player goes to level 4 for some reason this will count as a level 4 run)
execute if score $dungeon do2.run.deepest_floor matches 1 run advancement grant @s only do2:hidden/survival/win_level_1
execute if score $dungeon do2.run.deepest_floor matches 1 run advancement grant @s only do2:hidden/survival/win_level_2
execute if score $dungeon do2.run.deepest_floor matches 1 run advancement grant @s only do2:hidden/survival/win_level_3
execute if score $dungeon do2.run.deepest_floor matches 1 run advancement grant @s only do2:hidden/survival/win_level_4
# =============================