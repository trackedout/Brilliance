# $dungeon do2.tests.arrayIndex = TARGET INDEX
# do2:tests array = FULL ARRAY
# after running do2:tests array[0] = TARGET VALUE


# CHECK INDEX 0 EXISTS
execute unless data storage do2:tests array[0] run return 0

# REMOVING BEFORE INDEX
execute if score $dungeon do2.tests.arrayIndex matches 1.. run data remove storage do2:tests array[0]
execute if score $dungeon do2.tests.arrayIndex matches 1.. run scoreboard players remove $dungeon do2.tests.arrayIndex 1
# REMOVING AFTER INDEX
execute if score $dungeon do2.tests.arrayIndex matches ..0 if data storage do2:tests array[1] run data remove storage do2:tests array[1]

# CHECK IF REPEAT
execute if score $dungeon do2.tests.arrayIndex matches ..0 if data storage do2:tests array[1] run function do2:mob_controller/array_manipulation/get_from_index
execute if score $dungeon do2.tests.arrayIndex matches 1.. run function do2:mob_controller/array_manipulation/get_from_index
