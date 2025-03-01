# In case levers/scores desync. This makes scores *always* equal to the lever's position.
# Setting's bounds: -539 120 1961 x -519 112 1948


# Better Vex
execute if block -525 115 1960 minecraft:lever[powered=false] run scoreboard players set $dungeon do2.config.vexTracking 0
execute if block -525 115 1960 minecraft:lever[powered=true] run scoreboard players set $dungeon do2.config.vexTracking 1

# Fast Dungeon Reset
execute if block -527 115 1960 minecraft:lever[powered=false] run scoreboard players set $dungeon do2.config.fastReset 0
execute if block -527 115 1960 minecraft:lever[powered=true] run scoreboard players set $dungeon do2.config.fastReset 1

# Control Player's Gamemodes
execute if block -529 115 1960 minecraft:lever[powered=false] run scoreboard players set $dungeon do2.config.forceGamemode 0
execute if block -529 115 1960 minecraft:lever[powered=true] run scoreboard players set $dungeon do2.config.forceGamemode 1

# Disable Treasure on Max Clank
execute if block -531 115 1960 minecraft:lever[powered=false] run scoreboard players set $dungeon do2.config.maxClankTreasure 0
execute if block -531 115 1960 minecraft:lever[powered=true] run scoreboard players set $dungeon do2.config.maxClankTreasure 1

# Force food.
execute if block -533 115 1960 minecraft:lever[powered=false] run scoreboard players set $dungeon do2.config.forceFood 0
execute if block -533 115 1960 minecraft:lever[powered=true] run scoreboard players set $dungeon do2.config.forceFood 1

# Daylight Cycle
execute if block -535 115 1960 minecraft:lever[powered=false] run scoreboard players set $dungeon do2.config.useDaylightCycle 0
execute if block -535 115 1960 minecraft:lever[powered=true] run scoreboard players set $dungeon do2.config.useDaylightCycle 1

# Weather Cycle
execute if block -537 115 1960 minecraft:lever[powered=false] run scoreboard players set $dungeon do2.config.useWeatherCycle 0
execute if block -537 115 1960 minecraft:lever[powered=true] run scoreboard players set $dungeon do2.config.useWeatherCycle 1

