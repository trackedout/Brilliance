#ran as @r[type=marker,tag=L2SLIME,tag=zone_marker] at @s

# Won't spawn if a player is within 24 blocks
execute if entity @p[distance=..24] run return 0

# Only will spawn if no OTHER manual spawned slimes exist.
execute if entity @e[type=slime,tag=do2.dungeon_slime] run return 0

# Determine slime size.
scoreboard players set $dungeon do2.utility.randomNumberRange 99
function do2:utility/random_gen/generate_random_number

# Big | 50% chance
execute if score $dungeon do2.utility.randomNum matches 0..49 run summon slime ~ ~ ~ {Size:3,CustomName:'[{"text":" "}]',CustomNameVisible:0b,Tags:["do2.manually_spawned","do2.dungeon_slime"],Team:"do2.manually_spawned_slimes"}
# Medium | 33% chance
execute if score $dungeon do2.utility.randomNum matches 50..83 run summon slime ~ ~ ~ {Size:1,CustomName:'[{"text":" "}]',CustomNameVisible:0b,Tags:["do2.manually_spawned","do2.dungeon_slime"],Team:"do2.manually_spawned_slimes"}
# Small | 16% chance
execute if score $dungeon do2.utility.randomNum matches 84.. run summon slime ~ ~ ~ {Size:0,CustomName:'[{"text":" "}]',CustomNameVisible:0b,Tags:["do2.manually_spawned","do2.dungeon_slime"],Team:"do2.manually_spawned_slimes"}

