# $dungeon do2.utility.arrayIndex = TARGET INDEX
# do2:utility array = FULL ARRAY
# after running do2:utility array[0] = TARGET VALUE

execute store result score arrayLength do2.utility.arrayIndex run data get storage do2:utility array

# CHECK ARRAY CAN BE ACCESSED
execute if score arrayLength do2.utility.arrayIndex matches 0 run return 0
execute if score arrayLength do2.utility.arrayIndex < $dungeon do2.utility.arrayIndex run return 0

# REMOVING BEFORE INDEX
execute if score $dungeon do2.utility.arrayIndex matches 1.. run data remove storage do2:utility array[0]
execute if score $dungeon do2.utility.arrayIndex matches 1.. run scoreboard players remove $dungeon do2.utility.arrayIndex 1
# REMOVING AFTER INDEX
execute if score $dungeon do2.utility.arrayIndex matches ..0 if data storage do2:utility array[1] run data remove storage do2:utility array[1]

# CHECK IF REPEAT
execute if score $dungeon do2.utility.arrayIndex matches ..0 if data storage do2:utility array[1] run function do2:utility/array_manipulation/get_from_index
execute if score $dungeon do2.utility.arrayIndex matches 1.. run function do2:utility/array_manipulation/get_from_index
