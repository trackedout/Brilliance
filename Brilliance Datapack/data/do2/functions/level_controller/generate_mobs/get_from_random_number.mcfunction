# If NO MORE need to be removed, return out of this function.
execute if score $dungeon_2 do2.utility.mobNamesCount matches ..0 run return 0
# Remove ONE from both the SCORE
scoreboard players remove $dungeon_2 do2.utility.mobNamesCount 1
# And remove ONE from the array
data remove storage do2:mobs copy[0]
# If MORE is needed to be remove, repeat this function
execute unless score $dungeon_2 do2.utility.mobNamesCount matches ..0 run function do2:level_controller/generate_mobs/get_from_random_number
