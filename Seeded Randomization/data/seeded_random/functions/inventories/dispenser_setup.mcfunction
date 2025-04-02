# Marker setup
kill @e[type=minecraft:area_effect_cloud,tag=raycast_hit]
execute if entity @e[type=interaction,distance=..2,tag=seeded_random.dispenser] run say "Already Marked"
execute if entity @e[type=interaction,distance=..2,tag=seeded_random.dispenser] run return 0
execute align xyz run summon minecraft:interaction ~0.5 ~ ~0.5 {width:1.02,height:1.02,response:1,Tags: ["seeded_random.dispenser"]}
# Dimension Setup
execute positioned ~ ~ ~ in seeded_random:seeded_random run forceload add ~ ~
clone ~ ~ ~ ~ ~ ~ to seeded_random:seeded_random ~ ~ ~ replace force
execute positioned ~ ~ ~ in seeded_random:seeded_random run forceload remove ~ ~
# Make sure observers don't notice
function seeded_random:inv_actions/observer_checking/check
# Cmd setup
execute if block ~ ~ ~ dispenser[facing=north] run setblock ~ ~ ~ command_block[facing=north]{Command:"/function seeded_random:cmd_blocks/inv_point_north"}
execute if block ~ ~ ~ dispenser[facing=south] run setblock ~ ~ ~ command_block[facing=south]{Command:"/function seeded_random:cmd_blocks/inv_point_south"}
execute if block ~ ~ ~ dispenser[facing=east] run setblock ~ ~ ~ command_block[facing=east]{Command:"/function seeded_random:cmd_blocks/inv_point_east"}
execute if block ~ ~ ~ dispenser[facing=west] run setblock ~ ~ ~ command_block[facing=west]{Command:"/function seeded_random:cmd_blocks/inv_point_west"}
execute if block ~ ~ ~ dispenser[facing=up] run setblock ~ ~ ~ command_block[facing=up]{Command:"/function seeded_random:cmd_blocks/inv_point_up"}
execute if block ~ ~ ~ dispenser[facing=down] run setblock ~ ~ ~ command_block[facing=down]{Command:"/function seeded_random:cmd_blocks/inv_point_down"}

