# - Start Log -
execute as @a[scores={do2.logs.dropper_room=1..}] run tellraw @s ["",{"text":"[§9B§r]: Copying droppers to crown shop."}]
# - End Log -

# Crown Shop Products
clone -461 114 1967 -461 114 1967 -509 104 1972 replace
clone -461 114 1968 -461 114 1968 -508 104 1972 replace
clone -461 114 1969 -461 114 1969 -507 104 1972 replace
clone -461 114 1970 -461 114 1970 -506 104 1972 replace
clone -461 114 1971 -461 114 1971 -505 104 1972 replace
clone -461 114 1972 -461 114 1972 -504 104 1972 replace
clone -461 114 1973 -461 114 1973 -503 104 1972 replace
clone -461 114 1974 -461 114 1974 -502 104 1972 replace
clone -461 114 1975 -461 114 1975 -501 104 1972 replace
clone -461 114 1976 -461 114 1976 -500 104 1972 replace
clone -461 114 1977 -461 114 1977 -499 104 1972 replace
clone -461 114 1978 -461 114 1978 -498 104 1972 replace
clone -461 114 1979 -461 114 1979 -497 104 1972 replace
clone -461 114 1980 -461 114 1980 -496 104 1972 replace
#13_p2:
clone -463 114 1979 -463 114 1979 -493 102 1972 replace

# Crown Shop Prices
clone -462 114 1967 -462 114 1967 -509 106 1975 replace
execute positioned -509 106 1976 run function do2:reset_dungeon/default_states/crown_shop/other_price_01
clone -462 114 1968 -462 114 1968 -508 106 1975 replace
execute positioned -508 106 1976 run function do2:reset_dungeon/default_states/crown_shop/other_price_02
clone -462 114 1969 -462 114 1969 -507 106 1975 replace
execute positioned -507 106 1976 run function do2:reset_dungeon/default_states/crown_shop/other_price_03
clone -462 114 1970 -462 114 1970 -506 106 1975 replace
execute positioned -506 106 1976 run function do2:reset_dungeon/default_states/crown_shop/other_price_04
clone -462 114 1971 -462 114 1971 -505 106 1975 replace
execute positioned -505 106 1976 run function do2:reset_dungeon/default_states/crown_shop/other_price_05
clone -462 114 1972 -462 114 1972 -504 106 1975 replace
execute positioned -504 106 1976 run function do2:reset_dungeon/default_states/crown_shop/other_price_06
clone -462 114 1973 -462 114 1973 -503 106 1975 replace
execute positioned -503 106 1976 run function do2:reset_dungeon/default_states/crown_shop/other_price_07
clone -462 114 1974 -462 114 1974 -502 106 1975 replace
execute positioned -502 106 1976 run function do2:reset_dungeon/default_states/crown_shop/other_price_08
clone -462 114 1975 -462 114 1975 -501 106 1975 replace
execute positioned -501 106 1976 run function do2:reset_dungeon/default_states/crown_shop/other_price_09
clone -462 114 1976 -462 114 1976 -500 106 1975 replace
execute positioned -500 106 1976 run function do2:reset_dungeon/default_states/crown_shop/other_price_10
clone -462 114 1977 -462 114 1977 -499 106 1975 replace
execute positioned -499 106 1976 run function do2:reset_dungeon/default_states/crown_shop/other_price_11
clone -462 114 1978 -462 114 1978 -498 106 1975 replace
execute positioned -498 106 1976 run function do2:reset_dungeon/default_states/crown_shop/other_price_12
clone -462 114 1979 -462 114 1979 -497 106 1975 replace
execute positioned -497 106 1976 run function do2:reset_dungeon/default_states/crown_shop/other_price_13
clone -462 114 1980 -462 114 1980 -496 106 1975 replace
execute positioned -496 106 1976 run function do2:reset_dungeon/default_states/crown_shop/other_price_14
