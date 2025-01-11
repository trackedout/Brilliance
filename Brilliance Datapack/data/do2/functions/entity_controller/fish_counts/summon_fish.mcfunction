scoreboard players set $dungeon do2.utility.randomNumberRange 10
function do2:utility/random_gen/generate_random_number
execute if score $dungeon do2.utility.randomNum matches ..8 run function do2:entity_controller/fish_counts/summon_common_variant
execute if score $dungeon do2.utility.randomNum matches 9.. run function do2:entity_controller/fish_counts/summon_random_variant
