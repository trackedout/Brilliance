summon minecraft:tropical_fish ~ ~ ~ {Variant:235340288,Tags:["determine_variant"]}
function do2:mob_spawning/fish_counts/determine_variant/determine_variant
execute store result entity @e[type=minecraft:tropical_fish,tag=determine_variant,limit=1] Variant double 1 run scoreboard players get $dungeon do2.utility.fishVariant
tag @e[type=minecraft:tropical_fish,tag=determine_variant] remove determine_variant
