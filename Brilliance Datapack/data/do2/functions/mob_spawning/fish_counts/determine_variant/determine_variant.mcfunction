function do2:mob_spawning/fish_counts/determine_variant/add_pattern_color
scoreboard players operation $dungeon do2.utility.fishVariant *= @e[type=marker,tag=RandomGenerator_256,limit=1] do2.utility.randomNum
function do2:mob_spawning/fish_counts/determine_variant/add_base_color
scoreboard players operation $dungeon do2.utility.fishVariant *= @e[type=marker,tag=RandomGenerator_256,limit=1] do2.utility.randomNum
function do2:mob_spawning/fish_counts/determine_variant/add_pattern
scoreboard players operation $dungeon do2.utility.fishVariant *= @e[type=marker,tag=RandomGenerator_256,limit=1] do2.utility.randomNum
function do2:mob_spawning/fish_counts/determine_variant/add_size

