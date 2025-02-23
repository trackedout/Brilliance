# - Start Log -
execute as @a[scores={do2.logs.entity_testing=1..}] run tellraw @s ["",{"text":"[§9B§r]: Resummoning all §3Block Displays§r."}]
# - End Log -

# It's kinda useless to check for block display entities before summoning them
# so it's better that we kill them all and re-summon them.
# However, just to be safe, we'll kill ONLY the block display entities we summon.
kill @e[type=minecraft:block_display,tag=hiding_dispenser]
kill @e[type=minecraft:block_display,tag=hiding_dropway]
kill @e[type=minecraft:block_display,tag=hiding_piston]
kill @e[type=minecraft:block_display,tag=pretend_beacon]
kill @e[type=minecraft:block_display,tag=hiding_beacon]
kill @e[type=minecraft:block_display,tag=hiding_evoker]

# Hiding dispensers at the leaderboard
summon minecraft:block_display -532.0 121.5 1971.0 {Tags:["hiding_dispenser"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, brightness: {sky: 3, block: 3}, block_state: {Properties: {waterlogged: "false", type: "bottom"}, Name: "minecraft:polished_blackstone_slab"}, view_range: 1.0f}
summon minecraft:block_display -516.0 121.5 1971.0 {Tags:["hiding_dispenser"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, brightness: {sky: 3, block: 3}, block_state: {Properties: {waterlogged: "false", type: "bottom"}, Name: "minecraft:polished_blackstone_slab"}, view_range: 1.0f}

# Hiding dropway for the foil cards to fall into.
summon minecraft:block_display -520.0 121.999 1973.0 {Tags:["hiding_dropway"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, brightness: {sky: 4, block: 4}, block_state: {Properties: {waterlogged: "false", type: "bottom"}, Name: "minecraft:polished_blackstone_slab"}, view_range: 1.0f}
summon minecraft:block_display -522.0 121.999 1973.0 {Tags:["hiding_dropway"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, brightness: {sky: 3, block: 3}, block_state: {Properties: {waterlogged: "false", type: "bottom"}, Name: "minecraft:polished_blackstone_slab"}, view_range: 1.0f}
summon minecraft:block_display -527.0 121.999 1973.0 {Tags:["hiding_dropway"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, brightness: {sky: 4, block: 4}, block_state: {Properties: {waterlogged: "false", type: "bottom"}, Name: "minecraft:polished_blackstone_slab"}, view_range: 1.0f}

# Hiding pistons that create the railway's drop
summon minecraft:block_display -567.999 91.0 1936.0 {Tags:["hiding_piston"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, brightness: {sky: 0, block: 7}, block_state: {Name: "minecraft:packed_ice"}, view_range: 1.0f}
summon minecraft:block_display -567.999 91.0 1935.0 {Tags:["hiding_piston"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, brightness: {sky: 0, block: 7}, block_state: {Name: "minecraft:packed_ice"}, view_range: 1.0f}

# Pretend colored Beacon light.
summon minecraft:block_display -580.0 5.999 1942.0 {Tags:["pretend_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 96.001f, 1.0f]}, Pos: [-580.0d, 5.999d,1942.0d], block_state: {Properties: {east: "false", waterlogged: "false", south: "false", north: "false", west: "false"}, Name: "minecraft:acacia_fence"}, view_range: 10000.0f}
summon minecraft:block_display -581.0 5.999 1942.0 {Tags:["pretend_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 96.001f, 1.0f]}, Pos: [-581.0d, 5.999d, 1942.0d], block_state: {Properties: {east: "false", waterlogged: "false", south: "false", north: "false", west: "false"}, Name: "minecraft:warped_fence"}, view_range: 10000.0f}
summon minecraft:block_display -582.0 5.999 1942.0 {Tags:["pretend_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 96.001f, 1.0f]}, Pos: [-582.0d, 5.999d, 1942.0d], block_state: {Properties: {east: "false", waterlogged: "false", south: "false", north: "false", west: "false"}, Name: "minecraft:cherry_fence"}, view_range: 10000.0f}
summon minecraft:block_display -583.0 5.999 1942.0 {Tags:["pretend_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 96.001f, 1.0f]}, Pos: [-583.0d, 5.999d, 1942.0d], block_state: {Properties: {east: "false", waterlogged: "false", south: "false", north: "false", west: "false"}, Name: "minecraft:mangrove_fence"}, view_range: 10000.0f}
summon minecraft:block_display -599.0 39.999 1996.0 {Tags:["pretend_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 96.001f, 1.0f]}, Pos: [-599.0d, 39.999d, 1996.0d], block_state: {Properties: {east: "false", waterlogged: "false", south: "false", north: "false", west: "false"}, Name: "minecraft:warped_fence"}, view_range: 10000.0f}
summon minecraft:block_display -599.0 39.999 1997.0 {Tags:["pretend_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 96.001f, 1.0f]}, Pos: [-599.0d, 39.999d, 1997.0d], block_state: {Properties: {east: "false", waterlogged: "false", south: "false", north: "false", west: "false"}, Name: "minecraft:acacia_fence"}, view_range: 10000.0f}
summon minecraft:block_display -599.0 39.999 1998.0 {Tags:["pretend_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 96.001f, 1.0f]}, Pos: [-599.0d, 39.999d, 1998.0d], block_state: {Properties: {east: "false", waterlogged: "false", south: "false", north: "false", west: "false"}, Name: "minecraft:mangrove_fence"}, view_range: 10000.0f}
summon minecraft:block_display -599.0 39.999 1999.0 {Tags:["pretend_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 96.001f, 1.0f]}, Pos: [-599.0d, 39.999d, 1999.0d], block_state: {Properties: {east: "false", waterlogged: "false", south: "false", north: "false", west: "false"}, Name: "minecraft:cherry_fence"}, view_range: 10000.0f}
summon minecraft:block_display -577.0 5.99 2044.0 {Tags:["pretend_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 124.001f, 1.0f]}, block_state: {Properties: {east: "false", waterlogged: "false", south: "false", north: "false", west: "false"}, Name: "minecraft:mangrove_fence"}, view_range: 10000.0f}
summon minecraft:block_display -578.0 5.99 2044.0 {Tags:["pretend_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 124.001f, 1.0f]}, block_state: {Properties: {east: "false", waterlogged: "false", south: "false", north: "false", west: "false"}, Name: "minecraft:cherry_fence"}, view_range: 10000.0f}
summon minecraft:block_display -579.0 5.99 2044.0 {Tags:["pretend_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 124.001f, 1.0f]}, block_state: {Properties: {east: "false", waterlogged: "false", south: "false", north: "false", west: "false"}, Name: "minecraft:warped_fence"}, view_range: 10000.0f}
summon minecraft:block_display -580.0 5.99 2044.0 {Tags:["pretend_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 124.001f, 1.0f]}, block_state: {Properties: {east: "false", waterlogged: "false", south: "false", north: "false", west: "false"}, Name: "minecraft:acacia_fence"}, view_range: 10000.0f}
summon minecraft:block_display -491.0 3.999 1942.0 {Tags:["pretend_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 133.001f, 1.0f]}, block_state: {Properties: {east: "false", waterlogged: "false", south: "false", north: "false", west: "false"}, Name: "minecraft:acacia_fence"}, view_range: 10000.0f}
summon minecraft:block_display -492.0 3.999 1942.0 {Tags:["pretend_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 133.001f, 1.0f]}, block_state: {Properties: {east: "false", waterlogged: "false", south: "false", north: "false", west: "false"}, Name: "minecraft:warped_fence"}, view_range: 10000.0f}
summon minecraft:block_display -493.0 3.999 1942.0 {Tags:["pretend_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 133.001f, 1.0f]}, block_state: {Properties: {east: "false", waterlogged: "false", south: "false", north: "false", west: "false"}, Name: "minecraft:cherry_fence"}, view_range: 10000.0f}
summon minecraft:block_display -494.0 3.999 1942.0 {Tags:["pretend_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 133.001f, 1.0f]}, block_state: {Properties: {east: "false", waterlogged: "false", south: "false", north: "false", west: "false"}, Name: "minecraft:mangrove_fence"}, view_range: 10000.0f}
summon minecraft:block_display -497.0 12.999 2042.0 {Tags:["pretend_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 115.001f, 1.0f]}, block_state: {Properties: {east: "false", waterlogged: "false", south: "false", north: "false", west: "false"}, Name: "minecraft:acacia_fence"}, view_range: 10000.0f}
summon minecraft:block_display -498.0 12.999 2042.0 {Tags:["pretend_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 115.001f, 1.0f]}, block_state: {Properties: {east: "false", waterlogged: "false", south: "false", north: "false", west: "false"}, Name: "minecraft:warped_fence"}, view_range: 10000.0f}
summon minecraft:block_display -500.0 12.999 2042.0 {Tags:["pretend_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 115.001f, 1.0f]}, block_state: {Properties: {east: "false", waterlogged: "false", south: "false", north: "false", west: "false"}, Name: "minecraft:cherry_fence"}, view_range: 10000.0f}
summon minecraft:block_display -501.0 12.999 2042.0 {Tags:["pretend_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 115.001f, 1.0f]}, block_state: {Properties: {east: "false", waterlogged: "false", south: "false", north: "false", west: "false"}, Name: "minecraft:mangrove_fence"}, view_range: 10000.0f}
summon minecraft:block_display -612.0 -24.001 1881.0 {Tags:["pretend_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 106.001f, 1.0f]}, block_state: {Properties: {east: "false", waterlogged: "false", south: "false", north: "false", west: "false"}, Name: "minecraft:mangrove_fence"}, view_range: 10000.0f}
summon minecraft:block_display -614.0 -24.001 1881.0 {Tags:["pretend_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 106.001f, 1.0f]}, block_state: {Properties: {east: "false", waterlogged: "false", south: "false", north: "false", west: "false"}, Name: "minecraft:warped_fence"}, view_range: 10000.0f}
summon minecraft:block_display -613.0 -24.001 1881.0 {Tags:["pretend_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 106.001f, 1.0f]}, block_state: {Properties: {east: "false", waterlogged: "false", south: "false", north: "false", west: "false"}, Name: "minecraft:cherry_fence"}, view_range: 10000.0f}
summon minecraft:block_display -615.0 -24.001 1881.0 {Tags:["pretend_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 106.001f, 1.0f]}, block_state: {Properties: {east: "false", waterlogged: "false", south: "false", north: "false", west: "false"}, Name: "minecraft:acacia_fence"}, view_range: 10000.0f}

# Pretend blocks hiding beacon's hole
summon minecraft:block_display -580.0 102.0 1942.0 {Tags:["hiding_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:snow_block"}, view_range: 10000.0f}
summon minecraft:block_display -581.0 102.0 1942.0 {Tags:["hiding_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:snow_block"}, view_range: 10000.0f}
summon minecraft:block_display -582.0 102.0 1942.0 {Tags:["hiding_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:snow_block"}, view_range: 10000.0f}
summon minecraft:block_display -583.0 102.0 1942.0 {Tags:["hiding_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:snow_block"}, view_range: 10000.0f}
summon minecraft:block_display -599.0 136.0 1996.0 {Tags:["hiding_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:cobbled_deepslate"}, view_range: 10000.0f}
summon minecraft:block_display -599.0 136.0 1997.0 {Tags:["hiding_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:cobbled_deepslate"}, view_range: 10000.0f}
summon minecraft:block_display -599.0 136.0 1998.0 {Tags:["hiding_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:cobbled_deepslate"}, view_range: 10000.0f}
summon minecraft:block_display -599.0 136.0 1999.0 {Tags:["hiding_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:cobbled_deepslate"}, view_range: 10000.0f}
summon minecraft:block_display -577.0 130.0 2044.0 {Tags:["hiding_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:cobbled_deepslate"}, view_range: 10000.0f}
summon minecraft:block_display -578.0 130.0 2044.0 {Tags:["hiding_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:cobbled_deepslate"}, view_range: 10000.0f}
summon minecraft:block_display -579.0 130.0 2044.0 {Tags:["hiding_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:cobbled_deepslate"}, view_range: 10000.0f}
summon minecraft:block_display -580.0 130.0 2044.0 {Tags:["hiding_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:cobbled_deepslate"}, view_range: 10000.0f}
summon minecraft:block_display -494.0 137.0 1942.0 {Tags:["hiding_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:cobbled_deepslate"}, view_range: 10000.0f}
summon minecraft:block_display -493.0 137.0 1942.0 {Tags:["hiding_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:cobbled_deepslate"}, view_range: 10000.0f}
summon minecraft:block_display -492.0 137.0 1942.0 {Tags:["hiding_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:cobbled_deepslate"}, view_range: 10000.0f}
summon minecraft:block_display -491.0 137.0 1942.0 {Tags:["hiding_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:cobbled_deepslate"}, view_range: 10000.0f}
summon minecraft:block_display -497.0 128.0 2042.0 {Tags:["hiding_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:cobbled_deepslate"}, view_range: 10000.0f}
summon minecraft:block_display -498.0 128.0 2042.0 {Tags:["hiding_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:cobbled_deepslate"}, view_range: 10000.0f}
summon minecraft:block_display -500.0 128.0 2042.0 {Tags:["hiding_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:cobbled_deepslate"}, view_range: 10000.0f}
summon minecraft:block_display -501.0 128.0 2042.0 {Tags:["hiding_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:cobbled_deepslate"}, view_range: 10000.0f}
summon minecraft:block_display -612.0 82.0 1881.0 {Tags:["hiding_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:snow_block"}, view_range: 10000.0f}
summon minecraft:block_display -613.0 82.0 1881.0 {Tags:["hiding_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:snow_block"}, view_range: 10000.0f}
summon minecraft:block_display -614.0 82.0 1881.0 {Tags:["hiding_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:snow_block"}, view_range: 10000.0f}
summon minecraft:block_display -615.0 82.0 1881.0 {Tags:["hiding_beacon"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:snow_block"}, view_range: 10000.0f}

# Hiding Artifact #42 dispenser from being seen
summon minecraft:block_display -574.0 16.001 2014.0 {Tags:["hiding_dispenser"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, brightness: {sky: 2, block: 2}, block_state: {Name: "minecraft:dark_oak_planks"}, view_range: 1.0f}

# Hiding L2's pistons activating the chain way hazard
summon minecraft:block_display -497.0 11.0 1951.001 {Tags:["hiding_piston"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, brightness: {sky: 0, block: 7}, block_state: {Name: "minecraft:blackstone"}, view_range: 1.0f}
summon minecraft:block_display -498.0 11.0 1954.999 {Tags:["hiding_piston"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, brightness: {sky: 0, block: 9}, block_state: {Name: "minecraft:blackstone"}, view_range: 1.0f}
summon minecraft:block_display -493.0 11.0 1951.001 {Tags:["hiding_piston"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, brightness: {sky: 0, block: 5}, block_state: {Name: "minecraft:blackstone"}, view_range: 1.0f}
summon minecraft:block_display -495.0 11.0 1951.001 {Tags:["hiding_piston"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, brightness: {sky: 0, block: 5}, block_state: {Name: "minecraft:blackstone"}, view_range: 1.0f}
summon minecraft:block_display -494.0 11.0 1954.999 {Tags:["hiding_piston"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, brightness: {sky: 0, block: 7}, block_state: {Name: "minecraft:blackstone"}, view_range: 1.0f}
summon minecraft:block_display -496.0 11.0 1954.999 {Tags:["hiding_piston"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, brightness: {sky: 0, block: 8}, block_state: {Name: "minecraft:blackstone"}, view_range: 1.0f}

# Hiding L2's Evoker #18
summon minecraft:block_display -511.0 15.0 2015.0 {Tags:["hiding_evoker"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:tuff"}, view_range: 1.0f}

# Hiding L4's hazard pistons
summon minecraft:block_display -576.0 -49.0 1892.999 {Tags:["hiding_piston"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:deepslate_bricks"}, view_range: 1.0f}
summon minecraft:block_display -577.0 -49.0 1892.999 {Tags:["hiding_piston"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:deepslate_bricks"}, view_range: 1.0f}
summon minecraft:block_display -578.0 -49.0 1892.999 {Tags:["hiding_piston"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:deepslate_bricks"}, view_range: 1.0f}
summon minecraft:block_display -579.0 -49.0 1892.999 {Tags:["hiding_piston"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:deepslate_bricks"}, view_range: 1.0f}
summon minecraft:block_display -619.999 -49.0 1898.0 {Tags:["hiding_piston"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:deepslate_bricks"}, view_range: 1.0f}
summon minecraft:block_display -619.999 -49.0 1899.0 {Tags:["hiding_piston"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:deepslate_bricks"}, view_range: 1.0f}
summon minecraft:block_display -619.999 -49.0 1900.0 {Tags:["hiding_piston"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:deepslate_bricks"}, view_range: 1.0f}
summon minecraft:block_display -617.001 -49.0 1865.0 {Tags:["hiding_piston"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:deepslate_bricks"}, view_range: 1.0f}
summon minecraft:block_display -617.001 -49.0 1868.0 {Tags:["hiding_piston"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:deepslate_bricks"}, view_range: 1.0f}
summon minecraft:block_display -617.001 -49.0 1867.0 {Tags:["hiding_piston"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:deepslate_bricks"}, view_range: 1.0f}
summon minecraft:block_display -617.0 -49.0 1866.0 {Tags:["hiding_piston"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, brightness: {sky: 5, block: 5}, block_state: {Name: "minecraft:deepslate_bricks"}, view_range: 1.0f}
summon minecraft:block_display -617.0 -49.0 1867.0 {Tags:["hiding_piston"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, brightness: {sky: 4, block: 4}, block_state: {Name: "minecraft:deepslate_bricks"}, view_range: 1.0f}
summon minecraft:block_display -617.0 -49.0 1866.0 {Tags:["hiding_piston"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:deepslate_bricks"}, view_range: 1.0f}
summon minecraft:block_display -617.0 -49.0 1866.0 {Tags:["hiding_piston"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, brightness: {sky: 5, block: 5}, block_state: {Name: "minecraft:deepslate_bricks"}, view_range: 1.0f}
summon minecraft:block_display -617.0 -49.0 1867.0 {Tags:["hiding_piston"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, brightness: {sky: 4, block: 4}, block_state: {Name: "minecraft:deepslate_bricks"}, view_range: 1.0f}
summon minecraft:block_display -617.0 -49.0 1866.0 {Tags:["hiding_piston"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:deepslate_bricks"}, view_range: 1.0f}
summon minecraft:block_display -633.001 -49.0 1866.0 {Tags:["hiding_piston"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:deepslate_bricks"}, view_range: 10000.0f}
summon minecraft:block_display -633.001 -49.0 1867.0 {Tags:["hiding_piston"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:deepslate_bricks"}, view_range: 10000.0f}
summon minecraft:block_display -633.001 -49.0 1868.0 {Tags:["hiding_piston"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:deepslate_bricks"}, view_range: 10000.0f}
summon minecraft:block_display -633.001 -49.0 1869.0 {Tags:["hiding_piston"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:deepslate_bricks"}, view_range: 10000.0f}

# Hiding L4's hideout piston
summon minecraft:block_display -583.999 -53.0 1881.0 {Tags:["hiding_piston"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, brightness: {sky: 2, block: 2}, block_state: {Name: "minecraft:polished_blackstone_bricks"}, view_range: 1.0f}

# Agronet event
function do2:external/agronet/logs/entity_testing/block_displays