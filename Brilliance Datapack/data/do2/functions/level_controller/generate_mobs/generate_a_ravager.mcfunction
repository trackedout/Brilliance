# If no more mobs need to be made, return
execute if score $dungeon do2.utility.mobGeneration matches 0 run return

# Summon a ravager
summon minecraft:ravager -500 70 2000 {PersistenceRequired:1b, Invulnerable: 1b, Tags: ["newly_generated_mob","mob_being_worked_on"],  Health: 100f, CustomName: '{"text":"NAME-NOT-INCLUDED"}', Fire: -1s}

# Count how many names are in the list.
execute store result score $dungeon do2.utility.mobNamesCount run data get storage do2:mobs mobNames

# Generate a random number, Min = 0, Max = Amount of names in the list
scoreboard players operation $dungeon do2.utility.randomNumberRange = $dungeon do2.utility.mobNamesCount
function do2:random_gen/generate_random_number

# Copy both the SCORE and the DATA as we will be making modifications
scoreboard players operation $dungeon_2 do2.utility.mobNamesCount = $dungeon do2.utility.randomNum
data modify storage do2:mobs copy set from storage do2:mobs mobNames
# Remove names until do2:mobs copy[0] becomes the randomly chosen name.
function do2:level_controller/generate_mobs/get_from_random_number

# Merge the randomly chosen name INTO the mob
data modify entity @e[tag=mob_being_worked_on,limit=1] CustomName set from storage do2:mobs copy[0]


# Note a mob has been generated
tag @e[tag=mob_being_worked_on] remove mob_being_worked_on
scoreboard players remove $dungeon do2.utility.mobGeneration 1
# If more mobs need to be summoned, run this function again
execute if score $dungeon do2.utility.mobGeneration matches 1.. run function do2:level_controller/generate_mobs/generate_a_ravager
