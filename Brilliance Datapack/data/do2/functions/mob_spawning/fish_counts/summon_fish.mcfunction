function do2:random_gen/get_random_num
execute if score @e[type=marker,tag=RandomGenerator_RESULT,limit=1] do2.utility.randomNum matches ..8 run function do2:mob_spawning/fish_counts/summon_common_variant
execute if score @e[type=marker,tag=RandomGenerator_RESULT,limit=1] do2.utility.randomNum matches 9.. run function do2:mob_spawning/fish_counts/summon_random_variant
