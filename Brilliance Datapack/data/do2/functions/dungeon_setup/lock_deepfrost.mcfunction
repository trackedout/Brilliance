setblock -561 115 1984 air
setblock -561 114 1984 minecraft:warped_wall_sign
fill -549 106 1970 -549 106 1971 minecraft:cyan_concrete replace
data modify block -549 106 1972 Items[6].Count set value 0
data modify block -549 106 1972 Items[7].Count set value 0
data merge block -561 114 1984 {front_text:{has_glowing_text:1b,color:"cyan",is_waxed:1b,messages:['{"text":"§fFind all §b20"}','{"text":"§f§oEaster Eggs"}','{"text":"§fto unlock"}','{"text":"§fDeepfrost"}']}}
execute if score @s[tag=do2.received_shulker] do2.config.dungeonDifficulty matches 5 run scoreboard players set @s[tag=do2.received_shulker] do2.config.dungeonDifficulty 4
