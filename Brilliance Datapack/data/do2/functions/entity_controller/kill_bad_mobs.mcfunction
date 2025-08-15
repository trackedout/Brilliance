# Axolotls
execute as @e[type=minecraft:axolotl,tag=!do2.manually_spawned] at @s run tp @s ~ -200 ~
# Tropical Fish
execute as @e[type=minecraft:tropical_fish,nbt=!{FromBucket:1b},tag=!do2.manually_spawned] at @s run tp @s ~ -200 ~
# Mooshrooms
execute as @e[type=minecraft:mooshroom,tag=!do2.manually_spawned] at @s run tp @s ~ -200 ~
# Monsters
execute as @e[type=minecraft:witch,tag=!do2.manually_spawned] at @s run tp @s ~ -200 ~
execute as @e[type=minecraft:zombie,tag=!do2.manually_spawned] at @s run tp @s ~ -200 ~
execute as @e[type=minecraft:zombie_villager,tag=!do2.manually_spawned] at @s run tp @s ~ -200 ~
execute as @e[type=minecraft:spider,tag=!do2.manually_spawned] at @s run tp @s ~ -200 ~
execute as @e[type=minecraft:creeper,tag=!do2.manually_spawned] at @s run tp @s ~ -200 ~
execute as @e[type=minecraft:enderman,tag=!do2.manually_spawned] at @s run tp @s ~ -200 ~
execute as @e[type=minecraft:skeleton,tag=!do2.manually_spawned] at @s run tp @s ~ -200 ~
# Wandering Traders
execute as @e[type=minecraft:wandering_trader,tag=!do2.manually_spawned] at @s run tp @s ~ -200 ~
execute as @e[type=minecraft:trader_llama,tag=!do2.manually_spawned] at @s run tp @s ~ -200 ~
# Pillagers
execute as @e[type=minecraft:pillager,tag=!do2.manually_spawned] at @s run tp @s ~ -200 ~
# Skeleton Horses
execute as @e[type=minecraft:skeleton_horse,tag=!do2.manually_spawned] at @s run tp @s ~ -200 ~

# Slimes are unique cuz they split and we need our manual spawned but then split slimes to stay
execute as @e[type=minecraft:slime, name=" "] run team join do2.manually_spawned_slimes @s
execute as @e[type=minecraft:slime, name=" "] run tag @s add do2.manually_spawned
execute as @e[type=minecraft:slime,tag=!do2.manually_spawned] at @s run tp @s ~ -200 ~
