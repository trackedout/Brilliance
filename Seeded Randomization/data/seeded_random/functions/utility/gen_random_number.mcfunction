# Multiply it to make it bigger
scoreboard players operation $seed seeded_random.usedSeed *= $seed seeded_random.seedMultiplier
# Modulate the seed so it's in our range.
scoreboard players operation $seed seeded_random.usedSeed %= $seed seeded_random.maxSeed
# Outputted Random Number
scoreboard players operation $seed seeded_random.output = $seed seeded_random.usedSeed
# Modulate the output so it's in our max value random num
scoreboard players operation $seed seeded_random.output %= $seed seeded_random.maxValue
