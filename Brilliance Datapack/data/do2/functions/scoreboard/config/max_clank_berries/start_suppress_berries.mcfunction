# Frozen Crypts (Level 1)

# Piston with terrain change for now, add evoker later
execute if score $dungeon do2.config.maxClankBerries matches 0 run setblock -591 49 1964 minecraft:sticky_piston[facing=east]
execute if score $dungeon do2.config.maxClankBerries matches 0 run setblock -589 49 1965 minecraft:soul_lantern
execute if score $dungeon do2.config.maxClankBerries matches 0 unless block -589 49 1964 minecraft:snow_block run setblock -590 49 1964 minecraft:snow_block
execute if score $dungeon do2.config.maxClankBerries matches 0 run setblock -590 49 1963 minecraft:snow_block
execute if score $dungeon do2.config.maxClankBerries matches 1 run setblock -589 49 1965 minecraft:air
execute if score $dungeon do2.config.maxClankBerries matches 1 run setblock -590 49 1964 minecraft:soul_lantern
execute if score $dungeon do2.config.maxClankBerries matches 1 run setblock -590 49 1963 minecraft:air
execute if score $dungeon do2.config.maxClankBerries matches 1 run setblock -591 49 1964 minecraft:snow_block

# Piston with terrain change
execute if score $dungeon do2.config.maxClankBerries matches 0 run setblock -502 55 2004 minecraft:andesite_stairs[facing=north,half=top]
execute if score $dungeon do2.config.maxClankBerries matches 1 run setblock -502 55 2004 minecraft:air


# Black Mines (Level 3)

# Piston from far above
execute if score $dungeon do2.config.maxClankBerries matches 0 run fill -645 14 1905 -645 10 1905 minecraft:deepslate[axis=y]
execute if score $dungeon do2.config.maxClankBerries matches 1 run fill -645 14 1905 -645 10 1905 minecraft:air

# Piston and move sculk vein
execute if score $dungeon do2.config.maxClankBerries matches 0 unless block -654 5 1919 minecraft:cobbled_deepslate run setblock -654 5 1919 minecraft:air
execute if score $dungeon do2.config.maxClankBerries matches 0 run setblock -654 5 1918 minecraft:sculk_vein[west=true]
execute if score $dungeon do2.config.maxClankBerries matches 0 run setblock -654 5 1920 minecraft:sculk_vein[up=true]
execute if score $dungeon do2.config.maxClankBerries matches 1 run setblock -654 5 1919 minecraft:sculk_vein[west=true]
execute if score $dungeon do2.config.maxClankBerries matches 1 run setblock -654 5 1918 minecraft:air
execute if score $dungeon do2.config.maxClankBerries matches 1 run setblock -654 5 1920 minecraft:air