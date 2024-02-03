# Check for fish markers
execute unless entity @e[type=minecraft:marker,tag=fish_marker] run function do2:mob_spawning/fish_counts/summon_fish_markers

scoreboard players set $dungeon do2.utility.currentFishCount 0
execute as @e[type=minecraft:tropical_fish] run scoreboard players add $dungeon do2.utility.currentFishCount 1

execute if score $dungeon do2.config.amountOfFish > $dungeon do2.utility.currentFishCount at @r at @e[distance=24..64,type=marker,tag=fish_marker,limit=1,sort=random] run function do2:mob_spawning/fish_counts/summon_fish
