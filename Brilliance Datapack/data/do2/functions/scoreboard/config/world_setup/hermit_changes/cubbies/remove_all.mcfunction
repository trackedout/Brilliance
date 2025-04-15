# Kill entities inside, then again for any dropped items from stuff being dropped
function do2:scoreboard/config/world_setup/hermit_changes/cubbies/clear_entities_inside_cubbies
schedule function do2:scoreboard/config/world_setup/hermit_changes/cubbies/clear_entities_inside_cubbies 2t append


# Keralis
place template do2:world_setup/cubbies/empty_cubby -479 108 1998
fill -476 116 1997 -473 111 1996 air
fill -468 116 2000 -467 110 2005 air
fill -470 117 2005 -475 117 1999 air
fill -476 118 2000 -476 117 2004 air replace polished_blackstone_slab
fill -470 116 2007 -477 111 2007 air
# Xisuma's cubby
place template do2:world_setup/cubbies/empty_cubby -479 108 2008
# Docm's Cubby
place template do2:world_setup/cubbies/empty_cubby -479 108 2018

# False
place template do2:world_setup/cubbies/empty_cubby -480 108 2027 clockwise_90 none
fill -482 107 2030 -486 107 2035 air
# Cub
place template do2:world_setup/cubbies/empty_cubby -490 108 2027 clockwise_90 none
# Beef
place template do2:world_setup/cubbies/empty_cubby -500 108 2027 clockwise_90 none
# Stress
place template do2:world_setup/cubbies/empty_cubby -510 108 2027 clockwise_90 none
# XBCrafted
place template do2:world_setup/cubbies/empty_cubby -530 108 2027 clockwise_90 none
# Gem
place template do2:world_setup/cubbies/empty_cubby -540 108 2027 clockwise_90 none
fill -549 110 2030 -549 113 2033 air
fill -539 114 2030 -539 110 2036 air
# Iskall
place template do2:world_setup/cubbies/empty_cubby -550 108 2027 clockwise_90 none
fill -553 107 2038 -550 103 2028 air
fill -555 107 2028 -558 103 2038 air
fill -554 104 2037 -554 104 2029 air
# Ren
place template do2:world_setup/cubbies/empty_cubby -560 108 2027 clockwise_90 none
# Jevin
place template do2:world_setup/cubbies/empty_cubby -569 108 2026 180 none
fill -572 107 2025 -573 107 2024 air
fill -578 117 2019 -573 117 2025 air
# Joe
place template do2:world_setup/cubbies/empty_cubby -569 108 2016 180 none
fill -575 108 2019 -561 106 2000 air replace minecraft:white_wool
fill -578 105 2020 -554 105 2000 air
fill -578 104 2020 -554 104 2000 air
fill -578 103 2020 -554 103 2000 air
fill -578 102 2020 -554 102 2000 air
fill -571 107 2010 -575 106 2014 air
# Etho
place template do2:world_setup/cubbies/empty_cubby -569 108 2006 180 none
# Hypno
place template do2:world_setup/cubbies/empty_small_cubby -568 108 1989
# Bdubs
place template do2:world_setup/cubbies/empty_small_cubby -558 108 1989
# Cleo
place template do2:world_setup/cubbies/empty_cubby -548 108 1997 counterclockwise_90 none
# Scar
place template do2:world_setup/cubbies/empty_cubby -538 108 1997 counterclockwise_90 none
fill -536 117 1993 -532 117 1989 air
# Zedaph
place template do2:world_setup/cubbies/empty_cubby -518 108 1997 counterclockwise_90 none
# Pearl
place template do2:world_setup/cubbies/empty_cubby -508 108 1997 counterclockwise_90 none
# Grian
place template do2:world_setup/cubbies/empty_cubby -498 108 1997 counterclockwise_90 none
fill -499 111 1997 -499 110 1997 air
fill -499 113 1992 -499 109 1995 air replace
# Impulse
place template do2:world_setup/cubbies/empty_cubby -488 108 1997 counterclockwise_90 none
fill -484 107 1994 -487 107 1992 air


# Walls are messed up, because I only saved one empty cubby, and used it for all of the cubbies despite the wall art shifting from O to M,
# This fixes it.
place template do2:world_setup/cubbies/wall_m -572 115 2018
place template do2:world_setup/cubbies/wall_o -572 115 2008
place template do2:world_setup/cubbies/wall_m -572 115 1998
place template do2:world_setup/cubbies/wall_o -560 115 1994 clockwise_90
place template do2:world_setup/cubbies/wall_m -550 115 1994 clockwise_90
place template do2:world_setup/cubbies/wall_o -540 115 1994 clockwise_90
place template do2:world_setup/cubbies/wall_m -530 115 1994 clockwise_90
place template do2:world_setup/cubbies/wall_m -510 115 1994 clockwise_90
place template do2:world_setup/cubbies/wall_o -500 115 1994 clockwise_90
place template do2:world_setup/cubbies/wall_m -490 115 1994 clockwise_90
place template do2:world_setup/cubbies/wall_o -480 115 1994 clockwise_90
place template do2:world_setup/cubbies/wall_m -476 115 2006 180
place template do2:world_setup/cubbies/wall_o -476 115 2016 180
place template do2:world_setup/cubbies/wall_m -476 115 2026 180
place template do2:world_setup/cubbies/wall_o -488 115 2030 counterclockwise_90
place template do2:world_setup/cubbies/wall_m -498 115 2030 counterclockwise_90
place template do2:world_setup/cubbies/wall_o -508 115 2030 counterclockwise_90
place template do2:world_setup/cubbies/wall_m -518 115 2030 counterclockwise_90
place template do2:world_setup/cubbies/wall_m -538 115 2030 counterclockwise_90
place template do2:world_setup/cubbies/wall_o -548 115 2030 counterclockwise_90
place template do2:world_setup/cubbies/wall_m -558 115 2030 counterclockwise_90
place template do2:world_setup/cubbies/wall_o -568 115 2030 counterclockwise_90

# Remove hermit items
setblock -564 109 2026 minecraft:polished_basalt[axis=y]
setblock -568 109 2022 minecraft:polished_basalt[axis=y]
setblock -568 109 2012 minecraft:blast_furnace
setblock -568 109 2002 minecraft:polished_basalt[axis=y]
setblock -564 109 1998 minecraft:polished_basalt[axis=y]
setblock -554 109 1998 minecraft:polished_basalt[axis=y]
setblock -544 109 1998 minecraft:polished_basalt[axis=y]
setblock -534 109 1998 minecraft:polished_basalt[axis=y]
setblock -514 109 1998 minecraft:polished_basalt[axis=y]
setblock -504 109 1998 minecraft:polished_basalt[axis=y]
setblock -496 109 1998 minecraft:polished_basalt[axis=y]
setblock -494 109 1998 minecraft:polished_basalt[axis=y]
setblock -484 109 1998 minecraft:polished_basalt[axis=y]
setblock -480 109 2002 minecraft:polished_basalt[axis=y]
setblock -480 109 2012 minecraft:blast_furnace
setblock -480 109 2022 minecraft:polished_basalt[axis=y]
setblock -484 109 2026 minecraft:polished_basalt[axis=y]
setblock -494 109 2026 minecraft:polished_basalt[axis=y]
setblock -504 109 2026 minecraft:polished_basalt[axis=y]
setblock -514 109 2026 minecraft:polished_basalt[axis=y]
setblock -534 109 2026 minecraft:polished_basalt[axis=y]
setblock -544 109 2026 minecraft:polished_basalt[axis=y]
setblock -554 109 2026 minecraft:polished_basalt[axis=y]

# Stairs at stats and sound gets messed up when we remove cubbies, so fix them.
setblock -510 115 1987 minecraft:polished_blackstone_brick_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]
setblock -510 116 1988 minecraft:polished_blackstone_brick_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]
setblock -508 115 1987 minecraft:polished_blackstone_brick_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]
setblock -508 116 1988 minecraft:polished_blackstone_brick_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]
fill -508 116 1989 -510 116 1991 minecraft:polished_blackstone_bricks
fill -511 116 1988 -511 116 1987 minecraft:deepslate_bricks
setblock -511 115 1987 minecraft:deepslate_bricks
fill -507 116 1988 -507 116 1987 minecraft:deepslate_bricks
setblock -507 115 1987 minecraft:deepslate_bricks
