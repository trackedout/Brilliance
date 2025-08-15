# min of 0 to max number being 1 below randomNumberRange
# ie: randomNumberRange being 100 output being 0-99 | 100 different numbers
execute if score $dungeon do2.utility.randomNumberRange matches ..0 run scoreboard players set $dungeon do2.utility.randomNum 0
execute if score $dungeon do2.utility.randomNumberRange matches ..0 run return 0
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid"]}
execute store result score $dungeon do2.utility.randomNum run data get entity @e[type=area_effect_cloud,tag=random_uuid,limit=1] UUID[0] 1
scoreboard players operation $dungeon do2.utility.randomNum %= $dungeon do2.utility.randomNumberRange
kill @e[type=area_effect_cloud,tag=random_uuid]
