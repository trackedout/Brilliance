# If server has is-dungeon-instance, than set worldspawn to be the deck area.
# Otherwise set worldspawn to be the portal
execute if score $dungeon do2.utility.onInstance matches 0 run setworldspawn -524 103 2167
execute if score $dungeon do2.utility.onInstance matches 1 run setworldspawn -547 115 1980

# If server has is-dungeon-instance, unlock the iron door. NOTE: If it's on the server, only one use
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -551 119 1977 minecraft:redstone_block
execute if score $dungeon do2.utility.onInstance matches 0 run setblock -551 119 1977 air

# If server has is-dungeon-instance, create fall chamber.
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -548 70 1979 minecraft:glass
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -548 70 1981 minecraft:glass
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -548 71 1978 minecraft:glass
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -548 71 1982 minecraft:glass
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -549 71 1979 minecraft:glass
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -549 71 1981 minecraft:glass
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -548 72 1979 minecraft:glass
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -548 72 1981 minecraft:glass
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -548 71 1981 minecraft:command_block[conditional=false,facing=west]{Command:"log-event spawnpoint-recovery-button 1"}
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -548 71 1979 minecraft:command_block[conditional=false,facing=west]{Command:"/tp @p -547 114 1980"}
execute if score $dungeon do2.utility.onInstance matches 1 run fill -546 72 1980 -546 70 1980 minecraft:bamboo_mosaic
execute if score $dungeon do2.utility.onInstance matches 1 run fill -547 72 1979 -547 70 1979 minecraft:bamboo_mosaic
execute if score $dungeon do2.utility.onInstance matches 1 run fill -548 72 1980 -548 70 1980 minecraft:bamboo_mosaic
execute if score $dungeon do2.utility.onInstance matches 1 run fill -547 72 1981 -547 70 1981 minecraft:bamboo_mosaic
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -547 70 1980 minecraft:bamboo_mosaic_slab[type=bottom,waterlogged=true]
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -547 71 1980 minecraft:stone_button[face=wall,facing=east]
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -547 72 1980 minecraft:bamboo_wall_sign[facing=east]{front_text:{color:"black",has_glowing_text:0b,messages:['{"text":"If you need to"}','{"text":"use this button"}','{"text":"please tell one"}','{"text":"of the staff"}']},is_waxed:0b}
execute if score $dungeon do2.utility.onInstance matches 1 run fill -546 109 1980 -546 73 1980 minecraft:glass
execute if score $dungeon do2.utility.onInstance matches 1 run fill -547 109 1979 -547 73 1979 minecraft:glass
execute if score $dungeon do2.utility.onInstance matches 1 run fill -548 109 1980 -548 73 1980 minecraft:glass
execute if score $dungeon do2.utility.onInstance matches 1 run fill -547 109 1981 -547 73 1981 minecraft:glass
execute if score $dungeon do2.utility.onInstance matches 1 run fill -547 111 1981 -547 110 1979 minecraft:bamboo_mosaic
execute if score $dungeon do2.utility.onInstance matches 1 run fill -548 111 1980 -548 110 1980 minecraft:bamboo_mosaic
execute if score $dungeon do2.utility.onInstance matches 0 run fill -548 111 1980 -548 73 1980 air
execute if score $dungeon do2.utility.onInstance matches 0 run fill -547 111 1981 -547 73 1981 air
execute if score $dungeon do2.utility.onInstance matches 0 run fill -546 109 1980 -546 73 1980 air
execute if score $dungeon do2.utility.onInstance matches 0 run fill -547 111 1979 -547 73 1979 air
execute if score $dungeon do2.utility.onInstance matches 0 run fill -547 111 1980 -547 110 1980 air
execute if score $dungeon do2.utility.onInstance matches 0 run fill -549 72 1978 -546 70 1982 air

# If server has is-dungeon-instance, create card selection station.
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -551 115 1982 minecraft:warped_wall_sign[facing=north,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"light_gray",has_glowing_text:1b,messages:['{"text":"Card selection"}','{"text":"station. Push"}','{"text":"button to get"}','{"text":"the shulker back."}']},is_waxed:0b}
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -551 114 1982 minecraft:warped_button[face=wall,facing=north,powered=false]
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -551 112 1982 minecraft:tinted_glass
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -551 111 1982 minecraft:redstone_lamp[lit=true]
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -551 111 1981 minecraft:redstone_block
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -552 112 1982 minecraft:deepslate_tiles
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -551 112 1983 minecraft:deepslate_tiles
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -551 112 1984 minecraft:deepslate_tiles
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -552 113 1983 minecraft:deepslate_tiles
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -552 113 1984 minecraft:deepslate_tiles
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -551 115 1984 minecraft:deepslate_tiles
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -551 114 1984 minecraft:note_block[instrument=harp,note=0,powered=false]
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -551 113 1984 minecraft:sticky_piston[extended=false,facing=north]
execute if score $dungeon do2.utility.onInstance matches 0 run setblock -551 115 1982 air
execute if score $dungeon do2.utility.onInstance matches 0 run setblock -551 114 1982 air
execute if score $dungeon do2.utility.onInstance matches 0 run setblock -551 112 1982 minecraft:polished_basalt[axis=x]
execute if score $dungeon do2.utility.onInstance matches 0 run setblock -551 111 1982 air
execute if score $dungeon do2.utility.onInstance matches 0 run setblock -551 111 1981 air
execute if score $dungeon do2.utility.onInstance matches 0 run setblock -552 112 1982 air
execute if score $dungeon do2.utility.onInstance matches 0 run setblock -551 112 1983 air
execute if score $dungeon do2.utility.onInstance matches 0 run setblock -551 112 1984 air
execute if score $dungeon do2.utility.onInstance matches 0 run setblock -552 113 1983 air
execute if score $dungeon do2.utility.onInstance matches 0 run setblock -552 113 1984 air
execute if score $dungeon do2.utility.onInstance matches 0 run setblock -551 115 1984 air
execute if score $dungeon do2.utility.onInstance matches 0 run setblock -551 114 1984 air
execute if score $dungeon do2.utility.onInstance matches 0 run setblock -551 113 1984 air

# If server has is-dungeon-instance, create manual shulker breaker.
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -562 116 1982 minecraft:warped_wall_sign[facing=east,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"white",has_glowing_text:1b,messages:['{"text":"<-- Press button"}','{"text":"if in adventure"}','{"text":"mode and can\'t"}','{"text":"break shulker"}']},is_waxed:0b}
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -562 116 1983 minecraft:warped_button[face=wall,facing=east,powered=false]
execute if score $dungeon do2.utility.onInstance matches 1 run setblock -564 116 1983 minecraft:redstone_wire[east=side,north=none,power=0,south=none,west=side]
execute if score $dungeon do2.utility.onInstance matches 0 run setblock -562 116 1982 air
execute if score $dungeon do2.utility.onInstance matches 0 run setblock -562 116 1983 air
execute if score $dungeon do2.utility.onInstance matches 0 run setblock -564 116 1983 air