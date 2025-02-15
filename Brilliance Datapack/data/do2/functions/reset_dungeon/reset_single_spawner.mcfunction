# Generate a random #(20-500)
# If # < 200, set spawner's delay to #
# If # >= 200, generate TWO #(200-800).
# Save the lowest of those TWO #
# With that new # set spawner's Delay to the #


# Generate a number between 0-480
scoreboard players set $dungeon do2.utility.randomNumberRange 481
function do2:utility/random_gen/generate_random_number
# Add 20 so it's 20-500
scoreboard players add $dungeon do2.utility.randomNum 20
execute store result storage do2:mobs spawner int 1 run scoreboard players get $dungeon do2.utility.randomNum
# If it's < 200 set the delay to the number
execute unless score $dungeon do2.utility.randomNum matches 200.. run data modify block ~ ~ ~ Delay set from storage do2:mobs spawner
execute unless score $dungeon do2.utility.randomNum matches 200.. run return 0

# If it's > 200
scoreboard objectives add do2.tests.findSmallestNumber dummy
# Generate a number between 0-600
scoreboard players set $dungeon do2.utility.randomNumberRange 601
function do2:utility/random_gen/generate_random_number
# Add 200 so it's 200-800
scoreboard players add $dungeon do2.utility.randomNum 200
# Store the number
execute store result score $dungeon do2.tests.findSmallestNumber run scoreboard players get $dungeon do2.utility.randomNum
# Do it all again
function do2:utility/random_gen/generate_random_number
scoreboard players add $dungeon do2.utility.randomNum 200
# Compare sizes.
execute unless score $dungeon do2.tests.findSmallestNumber < $dungeon do2.utility.randomNum store result score $dungeon do2.tests.findSmallestNumber run scoreboard players get $dungeon do2.utility.randomNum
execute store result storage do2:mobs spawner int 1 run scoreboard players get $dungeon do2.tests.findSmallestNumber
data modify block ~ ~ ~ Delay set from storage do2:mobs spawner
scoreboard objectives remove do2.tests.findSmallestNumber

