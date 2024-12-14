# If no more mobs need to be made, return
execute if score $dungeon do2.utility.mc.mobGenerationCount matches ..0 run return 0

# Summon mob
function do2:mob_controller/generate_mobs/summon_correct_mob

# Count how many names are in the list.
execute store result score $dungeon do2.utility.mc.mobNamesCount run data get storage do2:mobs mobNames
# Generate a random number, Min = 0, Max = Amount of names in the list
scoreboard players operation $dungeon do2.utility.randomNumberRange = $dungeon do2.utility.mc.mobNamesCount
function do2:random_gen/generate_random_number

# Remove names until do2:tests array[0] becomes the randomly chosen name.
scoreboard objectives add do2.tests.arrayIndex dummy
scoreboard players operation $dungeon do2.tests.arrayIndex = $dungeon do2.utility.randomNum
data modify storage do2:tests array set from storage do2:mobs mobNames
function do2:mob_controller/array_manipulation/get_from_index
# Merge the randomly chosen name INTO the mob
data modify entity @e[tag=mob_being_worked_on,limit=1] CustomName set from storage do2:tests array[0]

# Remove the name as a valid name for future generation this time.
data modify storage do2:tests array set from storage do2:mobs mobNames
data modify storage do2:tests newArray set value []
scoreboard players operation $dungeon do2.tests.arrayIndex = $dungeon do2.utility.randomNum
function do2:mob_controller/array_manipulation/splice_from_index
data modify storage do2:mobs mobNames set from storage do2:tests newArray

# Note a mob has been generated
tag @e[tag=mob_being_worked_on] remove mob_being_worked_on
scoreboard players remove $dungeon do2.utility.mc.mobGenerationCount 1

# delete testing items
execute if score $dungeon do2.tests.arrayIndex matches ..0 run data remove storage do2:tests array
execute if score $dungeon do2.tests.arrayIndex matches ..0 run data remove storage do2:tests newArray
scoreboard objectives remove do2.tests.arrayIndex

# If more mobs need to be summoned, run this function again
execute if score $dungeon do2.utility.mc.mobGenerationCount matches 1.. run function do2:mob_controller/generate_mobs/generate_enough_mobs
execute if score $dungeon do2.utility.mc.mobGenerationCount matches ..0 run scoreboard players set $dungeon do2.utility.mc.mobGenerationType 0
