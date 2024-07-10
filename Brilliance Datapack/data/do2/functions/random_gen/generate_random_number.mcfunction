summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid"]}
execute store result score $dungeon do2.utility.randomNum run data get entity @e[type=area_effect_cloud,tag=random_uuid,limit=1] UUID[0] 1
scoreboard players operation $dungeon do2.utility.randomNum %= $dungeon do2.utility.randomNumberRange
kill @e[type=area_effect_cloud,tag=random_uuid]
