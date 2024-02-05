scoreboard players set @e[type=marker,tag=RandomGenerator_RESULT] do2.utility.randomNum 0
tag @e[tag=RandomGenerator_Using] remove RandomGenerator_Using
tag @e[tag=RandomGenerator_0] add RandomGenerator_Using
tag @e[tag=RandomGenerator_1] add RandomGenerator_Using
tag @e[tag=RandomGenerator_2] add RandomGenerator_Using
tag @e[tag=RandomGenerator_3] add RandomGenerator_Using
tag @e[tag=RandomGenerator_4] add RandomGenerator_Using
tag @e[tag=RandomGenerator_5] add RandomGenerator_Using
scoreboard players operation $dungeon do2.utility.fishVariant += @e[type=marker,tag=RandomGenerator_Using,limit=1,sort=random] do2.utility.randomNum


