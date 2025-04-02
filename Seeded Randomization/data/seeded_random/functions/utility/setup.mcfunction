setblock 0 0 0 minecraft:barrel

scoreboard objectives add seeded_random.seed dummy
scoreboard objectives add seeded_random.usedSeed dummy
scoreboard objectives add seeded_random.seedMultiplier dummy
scoreboard objectives add seeded_random.maxSeed dummy
scoreboard objectives add seeded_random.maxValue dummy
scoreboard objectives add seeded_random.output dummy
scoreboard objectives add seeded_random.utility dummy
scoreboard objectives add seeded_random.ticks dummy

# Ticks
scoreboard players set $seed seeded_random.ticks 0

# This is the SEED (should be changed)
execute unless score $seed seeded_random.seed matches 0.. run scoreboard players set $seed seeded_random.seed 16385

# This is the SEED used in caluclations so the OG seed stays the same
scoreboard players operation $seed seeded_random.usedSeed = $seed seeded_random.seed

# Multiplies the SEED to make it bigger and better randomizer
execute unless score $seed seeded_random.seedMultiplier matches 0.. run scoreboard players set $seed seeded_random.seedMultiplier 725469

# MAX value of the seed (Max integer value)
execute unless score $seed seeded_random.maxSeed matches 0.. run scoreboard players set $seed seeded_random.maxSeed 2147483647

# Max value of the random number
scoreboard players set $seed seeded_random.maxValue 0

# Output of the random
scoreboard players set $seed seeded_random.output 0

# Detect wand right clicks
scoreboard objectives add seeded_random.wand_right_click_detection minecraft.used:minecraft.carrot_on_a_stick

# Raycasting
scoreboard objectives add seeded_random.raycast_steps dummy
scoreboard objectives add seeded_random.raycast_success dummy

# Click cd
scoreboard objectives add seeded_random.leftClickCd dummy
scoreboard objectives add seeded_random.rightClickCd dummy

# Teams
team add seeded_random.seededInventory "Seeded Inventory"
team modify seeded_random.seededInventory collisionRule always
team modify seeded_random.seededInventory seeFriendlyInvisibles false
team modify seeded_random.seededInventory color gray
team add seeded_random.leftClicked "Left Clicked a Seeded Inventory"
team modify seeded_random.leftClicked collisionRule always
team modify seeded_random.leftClicked seeFriendlyInvisibles false
team modify seeded_random.leftClicked color dark_red
team add seeded_random.rightClicked "Right Clicked a Seeded Inventory"
team modify seeded_random.rightClicked collisionRule always
team modify seeded_random.rightClicked seeFriendlyInvisibles false
team modify seeded_random.rightClicked color dark_green
