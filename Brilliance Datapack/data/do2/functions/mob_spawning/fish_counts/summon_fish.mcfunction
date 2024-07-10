scoreboard players set $dungeon do2.utility.randomNumberRange 10
function do2:random_gen/generate_random_number
execute if score $dungeon do2.utility.randomNum matches ..8 run function do2:mob_spawning/fish_counts/summon_common_variant
execute if score $dungeon do2.utility.randomNum matches 9.. run function do2:mob_spawning/fish_counts/summon_random_variant
