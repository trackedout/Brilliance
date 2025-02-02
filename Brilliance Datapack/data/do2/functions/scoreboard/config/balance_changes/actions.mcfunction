# - Start Log -
execute as @a[scores={do2.logs.dungeon_setup=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Setting up balance changes according to configuration."}]
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

# Less Loot on Max Clank
execute if score $dungeon do2.config.bc.lessLootMaxClank matches 1 run setblock -626 23 1977 minecraft:redstone_wire
execute if score $dungeon do2.config.bc.lessLootMaxClank matches 0 run setblock -626 23 1977 minecraft:glass

# Suit Up Resistance
execute unless score $dungeon do2.config.bc.suitUpRes matches 0 run setblock -555 25 1917 minecraft:stripped_warped_hyphae
execute if score $dungeon do2.config.bc.suitUpRes matches 0 run setblock -555 25 1917 minecraft:glass

setblock -492 3 1942 minecraft:air
setblock -614 -25 1881 minecraft:air
setblock -581 5 1942 minecraft:air
setblock -599 39 1996 minecraft:air
setblock -579 5 2044 minecraft:air
setblock -498 12 2042 minecraft:air

execute unless score $dungeon do2.config.bc.suitUpRes matches 1 run setblock -492 3 1942 minecraft:beacon{Primary:11,Secondary:11}
execute unless score $dungeon do2.config.bc.suitUpRes matches 1 run setblock -614 -25 1881 minecraft:beacon{Primary:11,Secondary:11}
execute unless score $dungeon do2.config.bc.suitUpRes matches 1 run setblock -581 5 1942 minecraft:beacon{Primary:11,Secondary:11}
execute unless score $dungeon do2.config.bc.suitUpRes matches 1 run setblock -599 39 1996 minecraft:beacon{Primary:11,Secondary:11}
execute unless score $dungeon do2.config.bc.suitUpRes matches 1 run setblock -579 5 2044 minecraft:beacon{Primary:11,Secondary:11}
execute unless score $dungeon do2.config.bc.suitUpRes matches 1 run setblock -498 12 2042 minecraft:beacon{Primary:11,Secondary:11}

execute if score $dungeon do2.config.bc.suitUpRes matches 1 run setblock -492 3 1942 minecraft:beacon{Primary:11,Secondary:-1}
execute if score $dungeon do2.config.bc.suitUpRes matches 1 run setblock -614 -25 1881 minecraft:beacon{Primary:11,Secondary:-1}
execute if score $dungeon do2.config.bc.suitUpRes matches 1 run setblock -581 5 1942 minecraft:beacon{Primary:11,Secondary:-1}
execute if score $dungeon do2.config.bc.suitUpRes matches 1 run setblock -599 39 1996 minecraft:beacon{Primary:11,Secondary:-1}
execute if score $dungeon do2.config.bc.suitUpRes matches 1 run setblock -579 5 2044 minecraft:beacon{Primary:11,Secondary:-1}
execute if score $dungeon do2.config.bc.suitUpRes matches 1 run setblock -498 12 2042 minecraft:beacon{Primary:11,Secondary:-1}

# Staircase Embers
execute if score $dungeon do2.config.bc.staircaseEmbers matches 1 run setblock -601 -24 1916 minecraft:calcite
execute if score $dungeon do2.config.bc.staircaseEmbers matches 1 run setblock -601 8 1941 minecraft:calcite
execute if score $dungeon do2.config.bc.staircaseEmbers matches 1 run setblock -601 18 1968 minecraft:calcite

execute if score $dungeon do2.config.bc.staircaseEmbers matches 0 run setblock -601 -24 1916 minecraft:glass
execute if score $dungeon do2.config.bc.staircaseEmbers matches 0 run setblock -601 8 1941 minecraft:glass
execute if score $dungeon do2.config.bc.staircaseEmbers matches 0 run setblock -601 18 1968 minecraft:glass

# Agronet event
function do2:external/agronet/logs/dungeon_setup/balance_changes