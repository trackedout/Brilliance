# - Start Log -
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: Setting up balance changes according to configuration."}]
# - End Log -

# New Snow Hazard
execute if score $dungeon do2.config.bc.snowHazard matches 1 run setblock -587 43 1975 minecraft:powered_rail[shape=north_south]
execute if score $dungeon do2.config.bc.snowHazard matches 0 run setblock -587 43 1975 minecraft:glass

# Ship uses L2's Treasure Line
execute if score $dungeon do2.config.bc.l2ShipTreasureLine matches 1 run setblock -571 40 2014 minecraft:redstone_block
execute if score $dungeon do2.config.bc.l2ShipTreasureLine matches 0 run setblock -571 40 2014 minecraft:glass

# Balanced TnT Dive's Loot
execute if score $dungeon do2.config.bc.balancedTnTDiveLoot matches 1 run data modify block -578 16 1967 Items set value [{Slot: 0b, id: "minecraft:stone", Count: 1b}, {Slot: 1b, id: "minecraft:stone_sword", Count: 1b}, {Slot: 2b, id: "minecraft:stone_sword", Count: 1b}, {Slot: 3b, id: "minecraft:stone_sword", Count: 1b}]
execute if score $dungeon do2.config.bc.balancedTnTDiveLoot matches 0 run data modify block -578 16 1967 Items set value [{Slot: 0b, id: "minecraft:stone", Count: 1b}, {Slot: 1b, id: "minecraft:stone_sword", Count: 1b}, {Slot: 2b, id: "minecraft:stone_sword", Count: 1b}, {Slot: 3b, id: "minecraft:stone_sword", Count: 1b}, {Slot: 4b, id: "minecraft:stone_sword", Count: 1b}]

