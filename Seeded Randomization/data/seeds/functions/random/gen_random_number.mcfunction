# Multiply it to make it bigger
scoreboard players operation $seed seeded.random.usedSeed *= $seed seeded.random.seedMultiplier
# Modulate the seed so it's in our range.
scoreboard players operation $seed seeded.random.usedSeed %= $seed seeded.random.maxSeed
# Output
scoreboard players operation $seed seeded.random.output = $seed seeded.random.usedSeed
# Output
execute unless score $seed seeded.random.maxValue matches 0 run scoreboard players operation $seed seeded.random.output %= $seed seeded.random.maxValue
execute if score $seed seeded.random.maxValue matches 0 run scoreboard players set $seed seeded.random.output 0
