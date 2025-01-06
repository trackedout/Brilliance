# Preset 256
scoreboard players set $num do2.utility.fishVariant 256

# Determine pattern color
scoreboard players set $dungeon do2.utility.randomNumberRange 16
function do2:utility/random_gen/generate_random_number
scoreboard players operation $dungeon do2.utility.fishVariant += $dungeon do2.utility.randomNum
scoreboard players operation $dungeon do2.utility.fishVariant *= $num do2.utility.fishVariant

# Determine base color
scoreboard players set $dungeon do2.utility.randomNumberRange 16
function do2:utility/random_gen/generate_random_number
scoreboard players operation $dungeon do2.utility.fishVariant += $dungeon do2.utility.randomNum
scoreboard players operation $dungeon do2.utility.fishVariant *= $num do2.utility.fishVariant

# Add fish pattern
scoreboard players set $dungeon do2.utility.randomNumberRange 6
function do2:utility/random_gen/generate_random_number
scoreboard players operation $dungeon do2.utility.fishVariant += $dungeon do2.utility.randomNum
scoreboard players operation $dungeon do2.utility.fishVariant *= $num do2.utility.fishVariant

# Add fish Size
scoreboard players set $dungeon do2.utility.randomNumberRange 2
function do2:utility/random_gen/generate_random_number
scoreboard players operation $dungeon do2.utility.fishVariant += $dungeon do2.utility.randomNum




