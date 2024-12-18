# Generate a random #(1-25)
# If # < 10, set spawner's delay to #
# If # >= 10, generate TWO #(10-40).
# Save the lowest of those TWO #
# With that new # set spawner's Delay to the #

# Generate a number between 0-24
scoreboard players set $dungeon do2.utility.randomNumberRange 25
function do2:random_gen/generate_random_number
# Add 1 so it's 1-25
scoreboard players add $dungeon do2.utility.randomNum
execute store result storage do2:mobs spawner int 1 run scoreboard players get $dungeon do2.utility.randomNum
# If it's < 10 set the delay to the number
execute unless score $dungeon do2.utility.randomNum matches 10.. run data modify block ~ ~ ~ Delay set from storage do2:mobs spawner
execute unless score $dungeon do2.utility.randomNum matches 10.. run return 0

# If it's > 10
scoreboard objectives add do2.tests.findSmallestNumber dummy
# Generate a number between 0-30
scoreboard players set $dungeon do2.utility.randomNumberRange 31
function do2:random_gen/generate_random_number
# Add 10 so it's 10-40
scoreboard players add $dungeon do2.utility.randomNum 10
# Store the number
execute store result score $dungeon do2.tests.findSmallestNumber run scoreboard players get $dungeon do2.utility.randomNum
# Do it all again
function do2:random_gen/generate_random_number
scoreboard players add $dungeon do2.utility.randomNum 10
# Compare sizes.
execute unless score $dungeon do2.tests.findSmallestNumber < $dungeon do2.utility.randomNum store result score $dungeon do2.tests.findSmallestNumber run scoreboard players get $dungeon do2.utility.randomNum
execute store result storage do2:mobs spawner int 1 run scoreboard players get $dungeon do2.tests.findSmallestNumber
data modify block ~ ~ ~ Delay set from storage do2:mobs spawner
scoreboard objectives remove do2.tests.findSmallestNumber

