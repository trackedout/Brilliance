# - Leaderboard -
place template do2:world_setup/leaderboard_removed -534 113 1965
kill @e[x=-534,dx=21,y=113,dy=13,z=1965,dz=10,type=!player]
# - Adventure Pig -
setblock -524 110 2010 air
execute positioned -524 110 2010 run kill @e[type=minecraft:leash_knot,distance=..2]
execute positioned -524 110 2010 run tp @e[type=pig,distance=..10] ~ -100 ~
# - Remember Impulse -
setblock -513 114 1987 polished_blackstone_bricks
setblock -513 114 1986 deepslate_bricks
setblock -513 115 1985 air
# - Soup Station Ad-
setblock -515 114 1986 deepslate_bricks
setblock -516 114 1986 deepslate_bricks
# - Blast Furnace Items -
setblock -524 112 1980 minecraft:blast_furnace[facing=west]{Items:[]}
setblock -508 112 1980 minecraft:blast_furnace[facing=west]{Items:[]}
setblock -504 112 1980 minecraft:blast_furnace[facing=west]{Items:[]}
setblock -500 112 1980 minecraft:blast_furnace[facing=west]{Items:[]}
setblock -496 112 1980 minecraft:blast_furnace[facing=west]{Items:[]}
setblock -496 112 1984 minecraft:blast_furnace[facing=west]{Items:[]}
setblock -492 112 1980 minecraft:blast_furnace[facing=south]{Items:[]}
setblock -500 112 1984 minecraft:blast_furnace[facing=west]{Items:[]}
setblock -504 112 1984 minecraft:blast_furnace[facing=west]{Items:[]}
setblock -480 109 2020 minecraft:blast_furnace[facing=east]{Items:[]}
setblock -564 109 2012 minecraft:blast_furnace[facing=south]{Items:[]}
setblock -568 109 2008 minecraft:blast_furnace[facing=north]{Items:[]}
setblock -556 109 2004 minecraft:blast_furnace[facing=east]{Items:[]}
setblock -556 109 2000 minecraft:blast_furnace[facing=east]{Items:[]}
setblock -544 109 2000 minecraft:blast_furnace[facing=east]{Items:[]}
setblock -528 109 2020 minecraft:blast_furnace[facing=east]{Items:[]}
setblock -488 108 2006 minecraft:gray_shulker_box[facing=down]{Items:[]}
# - Dungeon Door area -
data merge block -537 116 1975 {back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"white",has_glowing_text:1b,messages:['{"text":""}','{"text":"Available"}','{"text":""}','{"text":""}']},is_waxed:0b}
data merge block -537 115 1975 {back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"white",has_glowing_text:1b,messages:['{"text":""}','{"text":"In Use"}','{"text":""}','{"text":""}']},is_waxed:0b}
data merge block -537 114 1975 {back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"white",has_glowing_text:1b,messages:['{"text":""}','{"text":"Resetting"}','{"text":""}','{"text":""}']},is_waxed:0b}
setblock -536 113 1985 air
setblock -533 113 1985 air
setblock -533 114 1985 air
fill -530 113 1985 -531 113 1985 air
execute positioned -533 115 1985 run kill @e[type=minecraft:glow_item_frame,distance=..2]
execute positioned -536 114 1985 run kill @e[type=minecraft:glow_item_frame,distance=..2]
# - Scar Lackey -
setblock -498 114 1971 air
setblock -498 115 1972 minecraft:warped_wall_sign[facing=south,waterlogged=false]
data merge block -498 115 1972 {back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},is_waxed:0b}
# - Etho's afk hut -
setblock -517 123 1991 air
fill -516 124 1992 -517 122 1992 air
setblock -517 122 1993 minecraft:deepslate_bricks
