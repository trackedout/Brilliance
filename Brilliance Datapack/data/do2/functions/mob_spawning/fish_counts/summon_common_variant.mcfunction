scoreboard players set @e[type=marker,tag=RandomGenerator_RESULT] do2.utility.randomNum 0
tag @e[tag=RandomGenerator_Using] remove RandomGenerator_Using
tag @e[tag=RandomGenerator_0] add RandomGenerator_Using
tag @e[tag=RandomGenerator_1] add RandomGenerator_Using
tag @e[tag=RandomGenerator_2] add RandomGenerator_Using
tag @e[tag=RandomGenerator_3] add RandomGenerator_Using
tag @e[tag=RandomGenerator_4] add RandomGenerator_Using
tag @e[tag=RandomGenerator_5] add RandomGenerator_Using
tag @e[tag=RandomGenerator_6] add RandomGenerator_Using
tag @e[tag=RandomGenerator_7] add RandomGenerator_Using
tag @e[tag=RandomGenerator_8] add RandomGenerator_Using
tag @e[tag=RandomGenerator_9] add RandomGenerator_Using
tag @e[tag=RandomGenerator_10] add RandomGenerator_Using
tag @e[tag=RandomGenerator_11] add RandomGenerator_Using
tag @e[tag=RandomGenerator_12] add RandomGenerator_Using
tag @e[tag=RandomGenerator_13] add RandomGenerator_Using
tag @e[tag=RandomGenerator_14] add RandomGenerator_Using
tag @e[tag=RandomGenerator_15] add RandomGenerator_Using
tag @e[tag=RandomGenerator_16] add RandomGenerator_Using
tag @e[tag=RandomGenerator_17] add RandomGenerator_Using
tag @e[tag=RandomGenerator_18] add RandomGenerator_Using
tag @e[tag=RandomGenerator_19] add RandomGenerator_Using
tag @e[tag=RandomGenerator_20] add RandomGenerator_Using
tag @e[tag=RandomGenerator_21] add RandomGenerator_Using
scoreboard players operation @e[type=marker,tag=RandomGenerator_RESULT] do2.utility.randomNum += @e[type=marker,tag=RandomGenerator_Using,limit=1,sort=random] do2.utility.randomNum

execute if score @e[tag=RandomGenerator_RESULT,limit=1] do2.utility.randomNum matches 0 run summon minecraft:tropical_fish ~ ~ ~ {Variant:65536}
execute if score @e[tag=RandomGenerator_RESULT,limit=1] do2.utility.randomNum matches 1 run summon minecraft:tropical_fish ~ ~ ~ {Variant:459008}
execute if score @e[tag=RandomGenerator_RESULT,limit=1] do2.utility.randomNum matches 2 run summon minecraft:tropical_fish ~ ~ ~ {Variant:917504}
execute if score @e[tag=RandomGenerator_RESULT,limit=1] do2.utility.randomNum matches 3 run summon minecraft:tropical_fish ~ ~ ~ {Variant:918273}
execute if score @e[tag=RandomGenerator_RESULT,limit=1] do2.utility.randomNum matches 4 run summon minecraft:tropical_fish ~ ~ ~ {Variant:918529}
execute if score @e[tag=RandomGenerator_RESULT,limit=1] do2.utility.randomNum matches 5 run summon minecraft:tropical_fish ~ ~ ~ {Variant:16778497}
execute if score @e[tag=RandomGenerator_RESULT,limit=1] do2.utility.randomNum matches 6 run summon minecraft:tropical_fish ~ ~ ~ {Variant:50660352}
execute if score @e[tag=RandomGenerator_RESULT,limit=1] do2.utility.randomNum matches 7 run summon minecraft:tropical_fish ~ ~ ~ {Variant:50726144}
execute if score @e[tag=RandomGenerator_RESULT,limit=1] do2.utility.randomNum matches 8 run summon minecraft:tropical_fish ~ ~ ~ {Variant:67108865}
execute if score @e[tag=RandomGenerator_RESULT,limit=1] do2.utility.randomNum matches 9 run summon minecraft:tropical_fish ~ ~ ~ {Variant:67110144}
execute if score @e[tag=RandomGenerator_RESULT,limit=1] do2.utility.randomNum matches 10 run summon minecraft:tropical_fish ~ ~ ~ {Variant:67371009}
execute if score @e[tag=RandomGenerator_RESULT,limit=1] do2.utility.randomNum matches 11 run summon minecraft:tropical_fish ~ ~ ~ {Variant:67699456}
execute if score @e[tag=RandomGenerator_RESULT,limit=1] do2.utility.randomNum matches 12 run summon minecraft:tropical_fish ~ ~ ~ {Variant:67764993}
execute if score @e[tag=RandomGenerator_RESULT,limit=1] do2.utility.randomNum matches 13 run summon minecraft:tropical_fish ~ ~ ~ {Variant:101253888}
execute if score @e[tag=RandomGenerator_RESULT,limit=1] do2.utility.randomNum matches 14 run summon minecraft:tropical_fish ~ ~ ~ {Variant:117441025}
execute if score @e[tag=RandomGenerator_RESULT,limit=1] do2.utility.randomNum matches 15 run summon minecraft:tropical_fish ~ ~ ~ {Variant:117441793}
execute if score @e[tag=RandomGenerator_RESULT,limit=1] do2.utility.randomNum matches 16 run summon minecraft:tropical_fish ~ ~ ~ {Variant:117506305}
execute if score @e[tag=RandomGenerator_RESULT,limit=1] do2.utility.randomNum matches 17 run summon minecraft:tropical_fish ~ ~ ~ {Variant:117899265}
execute if score @e[tag=RandomGenerator_RESULT,limit=1] do2.utility.randomNum matches 18 run summon minecraft:tropical_fish ~ ~ ~ {Variant:118161664}
execute if score @e[tag=RandomGenerator_RESULT,limit=1] do2.utility.randomNum matches 19 run summon minecraft:tropical_fish ~ ~ ~ {Variant:185008129}
execute if score @e[tag=RandomGenerator_RESULT,limit=1] do2.utility.randomNum matches 20 run summon minecraft:tropical_fish ~ ~ ~ {Variant:234882305}
execute if score @e[tag=RandomGenerator_RESULT,limit=1] do2.utility.randomNum matches 21 run summon minecraft:tropical_fish ~ ~ ~ {Variant:235340288}
execute if score @e[tag=RandomGenerator_RESULT,limit=1] do2.utility.randomNum matches 22.. run function do2:mob_spawning/fish_counts/summon_common_variant
