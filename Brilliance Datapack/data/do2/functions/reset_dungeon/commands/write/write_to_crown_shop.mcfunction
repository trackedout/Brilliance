# - Start Log -
execute as @a[scores={do2.logs.dropper_room=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Copying droppers to crown shop."}]
# - End Log -

# - copy FROM dropper room TO crown shop -


# Crown Shop Products
clone -462 114 1968 -462 114 1968 -509 104 1972 replace
clone -462 114 1969 -462 114 1969 -508 104 1972 replace
clone -462 114 1970 -462 114 1970 -507 104 1972 replace
clone -462 114 1971 -462 114 1971 -506 104 1972 replace
clone -462 114 1972 -462 114 1972 -505 104 1972 replace
clone -462 114 1973 -462 114 1973 -504 104 1972 replace
clone -462 114 1974 -462 114 1974 -503 104 1972 replace
clone -462 114 1975 -462 114 1975 -502 104 1972 replace
clone -462 114 1976 -462 114 1976 -501 104 1972 replace
clone -462 114 1977 -462 114 1977 -500 104 1972 replace
clone -462 114 1978 -462 114 1978 -499 104 1972 replace
clone -462 114 1979 -462 114 1979 -498 104 1972 replace
clone -462 114 1980 -462 114 1980 -497 104 1972 replace
clone -464 114 1980 -464 114 1980 -493 102 1972 replace
clone -462 114 1981 -462 114 1981 -496 104 1972 replace

# Crown Shop Prices
clone -463 114 1968 -463 114 1968 -509 106 1975 replace
execute positioned -509 106 1976 run function do2:reset_dungeon/default_states/crown_shop/other_price_01
clone -463 114 1969 -463 114 1969 -508 106 1975 replace
execute positioned -508 106 1976 run function do2:reset_dungeon/default_states/crown_shop/other_price_02
clone -463 114 1970 -463 114 1970 -507 106 1975 replace
execute positioned -507 106 1976 run function do2:reset_dungeon/default_states/crown_shop/other_price_03
clone -463 114 1971 -463 114 1971 -506 106 1975 replace
execute positioned -506 106 1976 run function do2:reset_dungeon/default_states/crown_shop/other_price_04
clone -463 114 1972 -463 114 1972 -505 106 1975 replace
execute positioned -505 106 1976 run function do2:reset_dungeon/default_states/crown_shop/other_price_05
clone -463 114 1973 -463 114 1973 -504 106 1975 replace
execute positioned -504 106 1976 run function do2:reset_dungeon/default_states/crown_shop/other_price_06
clone -463 114 1974 -463 114 1974 -503 106 1975 replace
execute positioned -503 106 1976 run function do2:reset_dungeon/default_states/crown_shop/other_price_07
clone -463 114 1975 -463 114 1975 -502 106 1975 replace
execute positioned -502 106 1976 run function do2:reset_dungeon/default_states/crown_shop/other_price_08
clone -463 114 1976 -463 114 1976 -501 106 1975 replace
execute positioned -501 106 1976 run function do2:reset_dungeon/default_states/crown_shop/other_price_09
clone -463 114 1977 -463 114 1977 -500 106 1975 replace
execute positioned -500 106 1976 run function do2:reset_dungeon/default_states/crown_shop/other_price_10
clone -463 114 1978 -463 114 1978 -499 106 1975 replace
execute positioned -499 106 1976 run function do2:reset_dungeon/default_states/crown_shop/other_price_11
clone -463 114 1979 -463 114 1979 -498 106 1975 replace
execute positioned -498 106 1976 run function do2:reset_dungeon/default_states/crown_shop/other_price_12
clone -463 114 1980 -463 114 1980 -497 106 1975 replace
execute positioned -497 106 1976 run function do2:reset_dungeon/default_states/crown_shop/other_price_13
clone -463 114 1981 -463 114 1981 -496 106 1975 replace
execute positioned -496 106 1976 run function do2:reset_dungeon/default_states/crown_shop/other_price_14


# Agronet event
function do2:external/agronet/logs/dropper_room/write_to_crown_shop