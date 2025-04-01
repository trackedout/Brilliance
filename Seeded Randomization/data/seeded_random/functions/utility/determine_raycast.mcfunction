execute unless entity @e[type=area_effect_cloud,tag=raycast_hit] run say "No target."
execute unless entity @e[type=area_effect_cloud,tag=raycast_hit] run return 0

execute at @e[type=area_effect_cloud,tag=raycast_hit] if block ~ ~ ~ dispenser run function seeded_random:inventories/dispenser_setup
execute at @e[type=area_effect_cloud,tag=raycast_hit] if block ~ ~ ~ dropper run function seeded_random:inventories/dropper_setup
execute at @e[type=area_effect_cloud,tag=raycast_hit] unless block ~ ~ ~ dropper unless block ~ ~ ~ dispenser run say "Invalid Target"
execute at @e[type=area_effect_cloud,tag=raycast_hit] unless block ~ ~ ~ dropper unless block ~ ~ ~ dispenser run kill @e[type=area_effect_cloud,tag=raycast_hit]

