kill @e[type=marker,tag=RandomGenerator]

summon minecraft:marker -524 115 1982 {Tags:["RandomGenerator", "RandomGenerator_NUM", "RandomGenerator_0"]}
summon minecraft:marker -524 115 1982 {Tags:["RandomGenerator", "RandomGenerator_NUM", "RandomGenerator_1"]}
summon minecraft:marker -524 115 1982 {Tags:["RandomGenerator", "RandomGenerator_NUM", "RandomGenerator_2"]}
summon minecraft:marker -524 115 1982 {Tags:["RandomGenerator", "RandomGenerator_NUM", "RandomGenerator_3"]}
summon minecraft:marker -524 115 1982 {Tags:["RandomGenerator", "RandomGenerator_NUM", "RandomGenerator_4"]}
summon minecraft:marker -524 115 1982 {Tags:["RandomGenerator", "RandomGenerator_NUM", "RandomGenerator_5"]}
summon minecraft:marker -524 115 1982 {Tags:["RandomGenerator", "RandomGenerator_NUM", "RandomGenerator_6"]}
summon minecraft:marker -524 115 1982 {Tags:["RandomGenerator", "RandomGenerator_NUM", "RandomGenerator_7"]}
summon minecraft:marker -524 115 1982 {Tags:["RandomGenerator", "RandomGenerator_NUM", "RandomGenerator_8"]}
summon minecraft:marker -524 115 1982 {Tags:["RandomGenerator", "RandomGenerator_NUM", "RandomGenerator_9"]}
summon minecraft:marker -524 115 1982 {Tags:["RandomGenerator", "RandomGenerator_10"]}
summon minecraft:marker -524 115 1982 {Tags:["RandomGenerator", "RandomGenerator_RESULT"]}

scoreboard players set @e[type=marker,tag=RandomGenerator_0] do2.utility.randomNum 0
scoreboard players set @e[type=marker,tag=RandomGenerator_1] do2.utility.randomNum 1
scoreboard players set @e[type=marker,tag=RandomGenerator_2] do2.utility.randomNum 2
scoreboard players set @e[type=marker,tag=RandomGenerator_3] do2.utility.randomNum 3
scoreboard players set @e[type=marker,tag=RandomGenerator_4] do2.utility.randomNum 4
scoreboard players set @e[type=marker,tag=RandomGenerator_5] do2.utility.randomNum 5
scoreboard players set @e[type=marker,tag=RandomGenerator_6] do2.utility.randomNum 6
scoreboard players set @e[type=marker,tag=RandomGenerator_7] do2.utility.randomNum 7
scoreboard players set @e[type=marker,tag=RandomGenerator_8] do2.utility.randomNum 8
scoreboard players set @e[type=marker,tag=RandomGenerator_9] do2.utility.randomNum 9
scoreboard players set @e[type=marker,tag=RandomGenerator_10] do2.utility.randomNum 10
