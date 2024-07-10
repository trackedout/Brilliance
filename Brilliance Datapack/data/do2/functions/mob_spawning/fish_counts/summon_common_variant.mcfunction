
scoreboard players set $dungeon do2.utility.randomNumberRange 22
function do2:random_gen/generate_random_number

execute if score $dungeon do2.utility.randomNum matches 0 run summon minecraft:tropical_fish ~ ~ ~ {Variant:65536,Tags:["do2.manually_spawned"]}
execute if score $dungeon do2.utility.randomNum matches 1 run summon minecraft:tropical_fish ~ ~ ~ {Variant:459008,Tags:["do2.manually_spawned"]}
execute if score $dungeon do2.utility.randomNum matches 2 run summon minecraft:tropical_fish ~ ~ ~ {Variant:917504,Tags:["do2.manually_spawned"]}
execute if score $dungeon do2.utility.randomNum matches 3 run summon minecraft:tropical_fish ~ ~ ~ {Variant:918273,Tags:["do2.manually_spawned"]}
execute if score $dungeon do2.utility.randomNum matches 4 run summon minecraft:tropical_fish ~ ~ ~ {Variant:918529,Tags:["do2.manually_spawned"]}
execute if score $dungeon do2.utility.randomNum matches 5 run summon minecraft:tropical_fish ~ ~ ~ {Variant:16778497,Tags:["do2.manually_spawned"]}
execute if score $dungeon do2.utility.randomNum matches 6 run summon minecraft:tropical_fish ~ ~ ~ {Variant:50660352,Tags:["do2.manually_spawned"]}
execute if score $dungeon do2.utility.randomNum matches 7 run summon minecraft:tropical_fish ~ ~ ~ {Variant:50726144,Tags:["do2.manually_spawned"]}
execute if score $dungeon do2.utility.randomNum matches 8 run summon minecraft:tropical_fish ~ ~ ~ {Variant:67108865,Tags:["do2.manually_spawned"]}
execute if score $dungeon do2.utility.randomNum matches 9 run summon minecraft:tropical_fish ~ ~ ~ {Variant:67110144,Tags:["do2.manually_spawned"]}
execute if score $dungeon do2.utility.randomNum matches 10 run summon minecraft:tropical_fish ~ ~ ~ {Variant:67371009,Tags:["do2.manually_spawned"]}
execute if score $dungeon do2.utility.randomNum matches 11 run summon minecraft:tropical_fish ~ ~ ~ {Variant:67699456,Tags:["do2.manually_spawned"]}
execute if score $dungeon do2.utility.randomNum matches 12 run summon minecraft:tropical_fish ~ ~ ~ {Variant:67764993,Tags:["do2.manually_spawned"]}
execute if score $dungeon do2.utility.randomNum matches 13 run summon minecraft:tropical_fish ~ ~ ~ {Variant:101253888,Tags:["do2.manually_spawned"]}
execute if score $dungeon do2.utility.randomNum matches 14 run summon minecraft:tropical_fish ~ ~ ~ {Variant:117441025,Tags:["do2.manually_spawned"]}
execute if score $dungeon do2.utility.randomNum matches 15 run summon minecraft:tropical_fish ~ ~ ~ {Variant:117441793,Tags:["do2.manually_spawned"]}
execute if score $dungeon do2.utility.randomNum matches 16 run summon minecraft:tropical_fish ~ ~ ~ {Variant:117506305,Tags:["do2.manually_spawned"]}
execute if score $dungeon do2.utility.randomNum matches 17 run summon minecraft:tropical_fish ~ ~ ~ {Variant:117899265,Tags:["do2.manually_spawned"]}
execute if score $dungeon do2.utility.randomNum matches 18 run summon minecraft:tropical_fish ~ ~ ~ {Variant:118161664,Tags:["do2.manually_spawned"]}
execute if score $dungeon do2.utility.randomNum matches 19 run summon minecraft:tropical_fish ~ ~ ~ {Variant:185008129,Tags:["do2.manually_spawned"]}
execute if score $dungeon do2.utility.randomNum matches 20 run summon minecraft:tropical_fish ~ ~ ~ {Variant:234882305,Tags:["do2.manually_spawned"]}
execute if score $dungeon do2.utility.randomNum matches 21 run summon minecraft:tropical_fish ~ ~ ~ {Variant:235340288,Tags:["do2.manually_spawned"]}
execute if score $dungeon do2.utility.randomNum matches 22.. run function do2:mob_spawning/fish_counts/summon_common_variant
