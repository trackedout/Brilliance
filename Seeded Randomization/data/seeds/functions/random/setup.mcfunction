setblock 0 0 0 minecraft:barrel

scoreboard objectives add seeded.random.seed dummy
scoreboard objectives add seeded.random.usedSeed dummy
scoreboard objectives add seeded.random.seedMultiplier dummy
scoreboard objectives add seeded.random.maxSeed dummy
scoreboard objectives add seeded.random.maxValue dummy
scoreboard objectives add seeded.random.output dummy
scoreboard objectives add seeded.utility dummy

# This is the SEED (should be changed)
execute unless score $seed seeded.random.seed matches 0.. run scoreboard players set $seed seeded.random.seed 16385

# This is the SEED used in caluclations so the OG seed stays the same
scoreboard players operation $seed seeded.random.usedSeed = $seed seeded.random.seed

# Multiplies the SEED to make it bigger and better randomizer
execute unless score $seed seeded.random.seedMultiplier matches 0.. run scoreboard players set $seed seeded.random.seedMultiplier 725469

# MAX value of the seed (Max integer value)
execute unless score $seed seeded.random.maxSeed matches 0.. run scoreboard players set $seed seeded.random.maxSeed 2147483647

# Max value of the random number
scoreboard players set $seed seeded.random.maxValue 0

# Output of the random
scoreboard players set $seed seeded.random.output 0

