# Copy list_of_names -> preset_names
execute if score $dungeon do2.utility.ec.mobGenerationType matches 1 run data modify storage do2:mobs preset_names set from storage do2:mobs preset_ravager_names
execute if score $dungeon do2.utility.ec.mobGenerationType matches 2 run data modify storage do2:mobs preset_names set from storage do2:mobs preset_warden_names
execute if score $dungeon do2.utility.ec.mobGenerationType matches 3 run data modify storage do2:mobs preset_names set from storage do2:mobs preset_drowned_names
execute if score $dungeon do2.utility.ec.mobGenerationType matches 4 run data modify storage do2:mobs preset_names set from storage do2:mobs preset_endermite_names
execute if score $dungeon do2.utility.ec.mobGenerationType matches 5 run data modify storage do2:mobs preset_names set from storage do2:mobs preset_stray_names

# If there are no MORE preset names left, add an ID'ed numbered name.
execute unless data storage do2:mobs preset_names[0] run function do2:entity_controller/config_interface/add_mob_names/add_numbered_name
execute unless data storage do2:mobs preset_names[0] run return 0

# Generate a random number, Min = 0, Max = Amount of names in the list
execute store result score $dungeon do2.utility.randomNumberRange run data get storage do2:mobs preset_names
function do2:utility/random_gen/generate_random_number
# Remove names until do2:utility array[0] becomes the randomly chosen name.
scoreboard players operation $dungeon do2.utility.arrayIndex = $dungeon do2.utility.randomNum
data modify storage do2:utility array set from storage do2:mobs preset_names
function do2:utility/array_manipulation/get_from_index

# add name to the list
data modify storage do2:mobs mobNames append from storage do2:utility array[0]
scoreboard players add $dungeon do2.utility.ec.mobNamesCount 1


# Remove the name as a valid name for future generation this time.
data modify storage do2:utility array set from storage do2:mobs preset_names
data modify storage do2:tests newArray set value []
scoreboard players operation $dungeon do2.utility.arrayIndex = $dungeon do2.utility.randomNum
function do2:utility/array_manipulation/splice_from_index
data modify storage do2:mobs preset_names set from storage do2:tests newArray

# Copy preset_names -> list_of_names
execute if score $dungeon do2.utility.ec.mobGenerationType matches 1 run data modify storage do2:mobs preset_ravager_names set from storage do2:mobs preset_names
execute if score $dungeon do2.utility.ec.mobGenerationType matches 2 run data modify storage do2:mobs preset_warden_names set from storage do2:mobs preset_names
execute if score $dungeon do2.utility.ec.mobGenerationType matches 3 run data modify storage do2:mobs preset_drowned_names set from storage do2:mobs preset_names
execute if score $dungeon do2.utility.ec.mobGenerationType matches 4 run data modify storage do2:mobs preset_endermite_names set from storage do2:mobs preset_names
execute if score $dungeon do2.utility.ec.mobGenerationType matches 5 run data modify storage do2:mobs preset_stray_names set from storage do2:mobs preset_names


# If there STILL isn't enough mobNames for the amount of names needed, loop this function.
execute if score $dungeon do2.utility.ec.mobNamesCount < $dungeon do2.utility.ec.mobGenerationCount run function do2:entity_controller/config_interface/add_mob_names/add_name_to_list
