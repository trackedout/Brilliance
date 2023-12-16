# called when player dies.

# store run time when player dies
scoreboard players operation @s do2.run.seconds = $dungeon do2.run.seconds

# increase total dungeon deaths by 1.
scoreboard players add $dungeon do2.run.deaths 1

# player no longer running
tag @s remove do2.running

# reset players per run advancement tracking
execute if entity @s[advancements={do2:hidden/adventuring/eat_three_uniques=false}] as @s run function do2:advancements/reset_threecoursemeal