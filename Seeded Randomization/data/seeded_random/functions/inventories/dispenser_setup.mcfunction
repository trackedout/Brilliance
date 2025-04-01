kill @e[type=minecraft:area_effect_cloud,tag=raycast_hit]
execute if entity @e[type=interaction,distance=..2,tag=seeded_random.dispenser] run say "Already Marked"
execute if entity @e[type=interaction,distance=..2,tag=seeded_random.dispenser] run return 0
execute align xyz run summon minecraft:interaction ~0.5 ~ ~0.5 {width:1.01,height:1.01,response:1,Tags: ["seeded_random.dispenser"]}
# todo: dimension setup AND cmd block setup

