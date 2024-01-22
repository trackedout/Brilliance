scoreboard players set @e[type=marker,tag=RandomGenerator_RESULT] do2.utility.randomNum 0
scoreboard players operation @e[type=marker,tag=RandomGenerator_RESULT] do2.utility.randomNum += @e[type=marker,tag=RandomGenerator_NUM,limit=1,sort=random] do2.utility.randomNum
scoreboard players operation @e[type=marker,tag=RandomGenerator_RESULT] do2.utility.randomNum *= @e[type=marker,tag=RandomGenerator_10,limit=1] do2.utility.randomNum
scoreboard players operation @e[type=marker,tag=RandomGenerator_RESULT] do2.utility.randomNum += @e[type=marker,tag=RandomGenerator_NUM,limit=1,sort=random] do2.utility.randomNum
