# Count how many names are in the list.
execute store result score $dungeon do2.utility.ec.mobNamesCount run data get storage do2:mobs mobNames
# Generate a random number, Min = 0, Max = Amount of names in the list
scoreboard players operation $dungeon do2.utility.randomNumberRange = $dungeon do2.utility.ec.mobNamesCount
function do2:utility/random_gen/generate_random_number

# Remove names until do2:utility array[0] becomes the randomly chosen name.
scoreboard players operation $dungeon do2.utility.arrayIndex = $dungeon do2.utility.randomNum
data modify storage do2:utility array set from storage do2:mobs mobNames
function do2:utility/array_manipulation/get_from_index
# Merge the randomly chosen name INTO the mob
data modify entity @e[tag=mob_being_worked_on,limit=1] CustomName set from storage do2:utility array[0]

# Remove the name as a valid name for future generation this time.
data modify storage do2:utility array set from storage do2:mobs mobNames
data modify storage do2:tests newArray set value []
scoreboard players operation $dungeon do2.utility.arrayIndex = $dungeon do2.utility.randomNum
function do2:utility/array_manipulation/splice_from_index
data modify storage do2:mobs mobNames set from storage do2:tests newArray
