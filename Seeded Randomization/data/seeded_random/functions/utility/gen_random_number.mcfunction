# Multiply it to make it bigger
scoreboard players operation $seed seeded_random.usedSeed *= $seed seeded_random.seedMultiplier
# Modulate the seed so it's in our range.
scoreboard players operation $seed seeded_random.usedSeed %= $seed seeded_random.maxSeed
# Output
scoreboard players operation $seed seeded_random.output = $seed seeded_random.usedSeed
# Output
execute unless score $seed seeded_random.maxValue matches 0 run scoreboard players operation $seed seeded_random.output %= $seed seeded_random.maxValue
execute if score $seed seeded_random.maxValue matches 0 run scoreboard players set $seed seeded_random.output 0
