# - Start Log -
execute as @a[scores={do2.logs.dropper_room=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Resetting Dropper Room to default values."}]
# - End Log -

# - reset dropper room droppers to default values -


# Difficulty Selector
execute positioned -475 114 1981 run function do2:reset_dungeon/default_states/difficulty/easy
execute positioned -474 114 1981 run function do2:reset_dungeon/default_states/difficulty/medium
execute positioned -473 114 1981 run function do2:reset_dungeon/default_states/difficulty/hard
execute positioned -472 114 1981 run function do2:reset_dungeon/default_states/difficulty/deadly
execute positioned -471 114 1981 run function do2:reset_dungeon/default_states/difficulty/deepfrost

# Compasses
execute positioned -475 114 1984 run function do2:reset_dungeon/default_states/compasses/easy_1
execute positioned -474 114 1984 run function do2:reset_dungeon/default_states/compasses/easy_2
execute positioned -473 114 1984 run function do2:reset_dungeon/default_states/compasses/medium_1
execute positioned -472 114 1984 run function do2:reset_dungeon/default_states/compasses/medium_2
execute positioned -471 114 1984 run function do2:reset_dungeon/default_states/compasses/hard_1
execute positioned -470 114 1984 run function do2:reset_dungeon/default_states/compasses/hard_2
execute positioned -469 114 1984 run function do2:reset_dungeon/default_states/compasses/deadly_1
execute positioned -468 114 1984 run function do2:reset_dungeon/default_states/compasses/deadly_2
execute positioned -467 114 1984 run function do2:reset_dungeon/default_states/compasses/deepfrost_1
execute positioned -466 114 1984 run function do2:reset_dungeon/default_states/compasses/deepfrost_2

# Treasure
execute positioned -475 114 1959 run function do2:reset_dungeon/default_states/treasure/01
execute positioned -475 114 1960 run function do2:reset_dungeon/default_states/treasure/02
execute positioned -475 114 1961 run function do2:reset_dungeon/default_states/treasure/03
execute positioned -475 114 1962 run function do2:reset_dungeon/default_states/treasure/04
execute positioned -475 114 1963 run function do2:reset_dungeon/default_states/treasure/05
execute positioned -475 114 1964 run function do2:reset_dungeon/default_states/treasure/06
execute positioned -475 114 1965 run function do2:reset_dungeon/default_states/treasure/07
execute positioned -475 114 1966 run function do2:reset_dungeon/default_states/treasure/08
execute positioned -475 114 1967 run function do2:reset_dungeon/default_states/treasure/09
execute positioned -475 114 1968 run function do2:reset_dungeon/default_states/treasure/10
execute positioned -474 114 1959 run function do2:reset_dungeon/default_states/treasure/11
execute positioned -474 114 1960 run function do2:reset_dungeon/default_states/treasure/12
execute positioned -474 114 1961 run function do2:reset_dungeon/default_states/treasure/13
execute positioned -474 114 1962 run function do2:reset_dungeon/default_states/treasure/14
execute positioned -474 114 1963 run function do2:reset_dungeon/default_states/treasure/15
execute positioned -474 114 1964 run function do2:reset_dungeon/default_states/treasure/16
execute positioned -474 114 1965 run function do2:reset_dungeon/default_states/treasure/17
execute positioned -474 114 1966 run function do2:reset_dungeon/default_states/treasure/18
execute positioned -474 114 1967 run function do2:reset_dungeon/default_states/treasure/19
execute positioned -474 114 1968 run function do2:reset_dungeon/default_states/treasure/20
execute positioned -473 114 1959 run function do2:reset_dungeon/default_states/treasure/21
execute positioned -473 114 1960 run function do2:reset_dungeon/default_states/treasure/22
execute positioned -473 114 1961 run function do2:reset_dungeon/default_states/treasure/23
execute positioned -473 114 1962 run function do2:reset_dungeon/default_states/treasure/24
execute positioned -473 114 1963 run function do2:reset_dungeon/default_states/treasure/25
execute positioned -473 114 1964 run function do2:reset_dungeon/default_states/treasure/26
execute positioned -473 114 1965 run function do2:reset_dungeon/default_states/treasure/27
execute positioned -473 114 1966 run function do2:reset_dungeon/default_states/treasure/28
execute positioned -473 114 1967 run function do2:reset_dungeon/default_states/treasure/29
execute positioned -473 114 1968 run function do2:reset_dungeon/default_states/treasure/30
execute positioned -472 114 1959 run function do2:reset_dungeon/default_states/treasure/31
execute positioned -472 114 1960 run function do2:reset_dungeon/default_states/treasure/32
execute positioned -472 114 1961 run function do2:reset_dungeon/default_states/treasure/33
execute positioned -472 114 1962 run function do2:reset_dungeon/default_states/treasure/34
execute positioned -472 114 1963 run function do2:reset_dungeon/default_states/treasure/35
execute positioned -472 114 1964 run function do2:reset_dungeon/default_states/treasure/36
execute positioned -472 114 1965 run function do2:reset_dungeon/default_states/treasure/37
execute positioned -472 114 1966 run function do2:reset_dungeon/default_states/treasure/38
execute positioned -472 114 1967 run function do2:reset_dungeon/default_states/treasure/39
execute positioned -472 114 1968 run function do2:reset_dungeon/default_states/treasure/40
execute positioned -471 114 1959 run function do2:reset_dungeon/default_states/treasure/41
execute positioned -471 114 1960 run function do2:reset_dungeon/default_states/treasure/42
execute positioned -471 114 1961 run function do2:reset_dungeon/default_states/treasure/43
execute positioned -471 114 1962 run function do2:reset_dungeon/default_states/treasure/44
execute positioned -471 114 1963 run function do2:reset_dungeon/default_states/treasure/45
execute positioned -471 114 1964 run function do2:reset_dungeon/default_states/treasure/46
execute positioned -471 114 1965 run function do2:reset_dungeon/default_states/treasure/47
execute positioned -471 114 1966 run function do2:reset_dungeon/default_states/treasure/48
execute positioned -471 114 1967 run function do2:reset_dungeon/default_states/treasure/49
execute positioned -471 114 1968 run function do2:reset_dungeon/default_states/treasure/50
execute positioned -470 114 1959 run function do2:reset_dungeon/default_states/treasure/51
execute positioned -470 114 1960 run function do2:reset_dungeon/default_states/treasure/52
execute positioned -470 114 1961 run function do2:reset_dungeon/default_states/treasure/53
execute positioned -470 114 1962 run function do2:reset_dungeon/default_states/treasure/54
execute positioned -470 114 1963 run function do2:reset_dungeon/default_states/treasure/55
execute positioned -470 114 1964 run function do2:reset_dungeon/default_states/treasure/56
execute positioned -470 114 1965 run function do2:reset_dungeon/default_states/treasure/57
execute positioned -470 114 1966 run function do2:reset_dungeon/default_states/treasure/58
execute positioned -470 114 1967 run function do2:reset_dungeon/default_states/treasure/59
execute positioned -470 114 1968 run function do2:reset_dungeon/default_states/treasure/60

# Artifacts
execute positioned -475 114 1971 run function do2:reset_dungeon/default_states/artifacts/01
execute positioned -475 114 1972 run function do2:reset_dungeon/default_states/artifacts/02
execute positioned -475 114 1973 run function do2:reset_dungeon/default_states/artifacts/03
execute positioned -475 114 1974 run function do2:reset_dungeon/default_states/artifacts/04
execute positioned -475 114 1975 run function do2:reset_dungeon/default_states/artifacts/05
execute positioned -475 114 1976 run function do2:reset_dungeon/default_states/artifacts/06
execute positioned -475 114 1977 run function do2:reset_dungeon/default_states/artifacts/07
execute positioned -475 114 1978 run function do2:reset_dungeon/default_states/artifacts/08
execute positioned -474 114 1971 run function do2:reset_dungeon/default_states/artifacts/09
execute positioned -474 114 1972 run function do2:reset_dungeon/default_states/artifacts/10
execute positioned -474 114 1973 run function do2:reset_dungeon/default_states/artifacts/11
execute positioned -474 114 1974 run function do2:reset_dungeon/default_states/artifacts/12
execute positioned -474 114 1975 run function do2:reset_dungeon/default_states/artifacts/13
execute positioned -474 114 1976 run function do2:reset_dungeon/default_states/artifacts/14
execute positioned -474 114 1977 run function do2:reset_dungeon/default_states/artifacts/15
execute positioned -474 114 1978 run function do2:reset_dungeon/default_states/artifacts/16
execute positioned -473 114 1971 run function do2:reset_dungeon/default_states/artifacts/17
execute positioned -473 114 1972 run function do2:reset_dungeon/default_states/artifacts/18
execute positioned -473 114 1973 run function do2:reset_dungeon/default_states/artifacts/19
execute positioned -473 114 1974 run function do2:reset_dungeon/default_states/artifacts/20
execute positioned -473 114 1975 run function do2:reset_dungeon/default_states/artifacts/21
execute positioned -473 114 1976 run function do2:reset_dungeon/default_states/artifacts/22
execute positioned -473 114 1977 run function do2:reset_dungeon/default_states/artifacts/23
execute positioned -473 114 1978 run function do2:reset_dungeon/default_states/artifacts/24
execute positioned -472 114 1971 run function do2:reset_dungeon/default_states/artifacts/25
execute positioned -472 114 1972 run function do2:reset_dungeon/default_states/artifacts/26
execute positioned -472 114 1973 run function do2:reset_dungeon/default_states/artifacts/27
execute positioned -472 114 1974 run function do2:reset_dungeon/default_states/artifacts/28
execute positioned -472 114 1975 run function do2:reset_dungeon/default_states/artifacts/29
execute positioned -472 114 1976 run function do2:reset_dungeon/default_states/artifacts/30
execute positioned -472 114 1977 run function do2:reset_dungeon/default_states/artifacts/31
execute positioned -472 114 1978 run function do2:reset_dungeon/default_states/artifacts/32
execute positioned -471 114 1971 run function do2:reset_dungeon/default_states/artifacts/33
execute positioned -471 114 1972 run function do2:reset_dungeon/default_states/artifacts/34
execute positioned -471 114 1973 run function do2:reset_dungeon/default_states/artifacts/35
execute positioned -471 114 1974 run function do2:reset_dungeon/default_states/artifacts/36
execute positioned -471 114 1975 run function do2:reset_dungeon/default_states/artifacts/37
execute positioned -471 114 1976 run function do2:reset_dungeon/default_states/artifacts/38
execute positioned -471 114 1977 run function do2:reset_dungeon/default_states/artifacts/39
execute positioned -471 114 1978 run function do2:reset_dungeon/default_states/artifacts/40
execute positioned -470 114 1971 run function do2:reset_dungeon/default_states/artifacts/41
execute positioned -470 114 1972 run function do2:reset_dungeon/default_states/artifacts/42
execute positioned -470 114 1973 run function do2:reset_dungeon/default_states/artifacts/43
execute positioned -470 114 1974 run function do2:reset_dungeon/default_states/artifacts/44
execute positioned -470 114 1975 run function do2:reset_dungeon/default_states/artifacts/45
execute positioned -470 114 1976 run function do2:reset_dungeon/default_states/artifacts/46
execute positioned -470 114 1977 run function do2:reset_dungeon/default_states/artifacts/47
execute positioned -470 114 1978 run function do2:reset_dungeon/default_states/artifacts/48
execute positioned -469 114 1971 run function do2:reset_dungeon/default_states/artifacts/49
execute positioned -469 114 1972 run function do2:reset_dungeon/default_states/artifacts/50
execute positioned -469 114 1973 run function do2:reset_dungeon/default_states/artifacts/51
execute positioned -469 114 1974 run function do2:reset_dungeon/default_states/artifacts/52
execute positioned -469 114 1975 run function do2:reset_dungeon/default_states/artifacts/53
execute positioned -469 114 1976 run function do2:reset_dungeon/default_states/artifacts/54
execute positioned -469 114 1977 run function do2:reset_dungeon/default_states/artifacts/55
execute positioned -469 114 1978 run function do2:reset_dungeon/default_states/artifacts/56
execute positioned -468 114 1971 run function do2:reset_dungeon/default_states/artifacts/57
execute positioned -468 114 1972 run function do2:reset_dungeon/default_states/artifacts/58
execute positioned -468 114 1973 run function do2:reset_dungeon/default_states/artifacts/59
execute positioned -468 114 1974 run function do2:reset_dungeon/default_states/artifacts/60
execute positioned -468 114 1975 run function do2:reset_dungeon/default_states/artifacts/61
execute positioned -468 114 1976 run function do2:reset_dungeon/default_states/artifacts/62
execute positioned -468 114 1977 run function do2:reset_dungeon/default_states/artifacts/63
execute positioned -468 114 1978 run function do2:reset_dungeon/default_states/artifacts/64
execute positioned -467 114 1971 run function do2:reset_dungeon/default_states/artifacts/65
execute positioned -467 114 1972 run function do2:reset_dungeon/default_states/artifacts/66
execute positioned -467 114 1973 run function do2:reset_dungeon/default_states/artifacts/67
execute positioned -467 114 1974 run function do2:reset_dungeon/default_states/artifacts/68
execute positioned -467 114 1975 run function do2:reset_dungeon/default_states/artifacts/69
execute positioned -467 114 1976 run function do2:reset_dungeon/default_states/artifacts/70
execute positioned -467 114 1977 run function do2:reset_dungeon/default_states/artifacts/71
execute positioned -467 114 1978 run function do2:reset_dungeon/default_states/artifacts/72
execute positioned -466 114 1971 run function do2:reset_dungeon/default_states/artifacts/73
execute positioned -466 114 1972 run function do2:reset_dungeon/default_states/artifacts/74
execute positioned -466 114 1973 run function do2:reset_dungeon/default_states/artifacts/75
execute positioned -466 114 1974 run function do2:reset_dungeon/default_states/artifacts/76
execute positioned -466 114 1975 run function do2:reset_dungeon/default_states/artifacts/77
execute positioned -466 114 1976 run function do2:reset_dungeon/default_states/artifacts/78
execute positioned -466 114 1977 run function do2:reset_dungeon/default_states/artifacts/79
execute positioned -466 114 1978 run function do2:reset_dungeon/default_states/artifacts/80

# Embers
execute positioned -464 114 1959 run function do2:reset_dungeon/default_states/embers/01

# Crown Shop Products
execute positioned -462 114 1968 run function do2:reset_dungeon/default_states/crown_shop/product_01
execute positioned -462 114 1969 run function do2:reset_dungeon/default_states/crown_shop/product_02
execute positioned -462 114 1970 run function do2:reset_dungeon/default_states/crown_shop/product_03
execute positioned -462 114 1971 run function do2:reset_dungeon/default_states/crown_shop/product_04
execute positioned -462 114 1972 run function do2:reset_dungeon/default_states/crown_shop/product_05
execute positioned -462 114 1973 run function do2:reset_dungeon/default_states/crown_shop/product_06
execute positioned -462 114 1974 run function do2:reset_dungeon/default_states/crown_shop/product_07
execute positioned -462 114 1975 run function do2:reset_dungeon/default_states/crown_shop/product_08
execute positioned -462 114 1976 run function do2:reset_dungeon/default_states/crown_shop/product_09
execute positioned -462 114 1977 run function do2:reset_dungeon/default_states/crown_shop/product_10
execute positioned -462 114 1978 run function do2:reset_dungeon/default_states/crown_shop/product_11
execute positioned -462 114 1979 run function do2:reset_dungeon/default_states/crown_shop/product_12
execute positioned -462 114 1980 run function do2:reset_dungeon/default_states/crown_shop/product_13
execute positioned -464 114 1980 run function do2:reset_dungeon/default_states/crown_shop/product_13_p2
execute positioned -462 114 1981 run function do2:reset_dungeon/default_states/crown_shop/product_14

# Crown Shop Prices
execute positioned -463 114 1968 run function do2:reset_dungeon/default_states/crown_shop/price_01
execute positioned -463 114 1969 run function do2:reset_dungeon/default_states/crown_shop/price_02
execute positioned -463 114 1970 run function do2:reset_dungeon/default_states/crown_shop/price_03
execute positioned -463 114 1971 run function do2:reset_dungeon/default_states/crown_shop/price_04
execute positioned -463 114 1972 run function do2:reset_dungeon/default_states/crown_shop/price_05
execute positioned -463 114 1973 run function do2:reset_dungeon/default_states/crown_shop/price_06
execute positioned -463 114 1974 run function do2:reset_dungeon/default_states/crown_shop/price_07
execute positioned -463 114 1975 run function do2:reset_dungeon/default_states/crown_shop/price_08
execute positioned -463 114 1976 run function do2:reset_dungeon/default_states/crown_shop/price_09
execute positioned -463 114 1977 run function do2:reset_dungeon/default_states/crown_shop/price_10
execute positioned -463 114 1978 run function do2:reset_dungeon/default_states/crown_shop/price_11
execute positioned -463 114 1979 run function do2:reset_dungeon/default_states/crown_shop/price_12
execute positioned -463 114 1980 run function do2:reset_dungeon/default_states/crown_shop/price_13
execute positioned -463 114 1981 run function do2:reset_dungeon/default_states/crown_shop/price_14

# Ember Shop Products
execute positioned -458 114 1968 run function do2:reset_dungeon/default_states/ember_shop/product_01
execute positioned -458 114 1969 run function do2:reset_dungeon/default_states/ember_shop/product_02
execute positioned -458 114 1970 run function do2:reset_dungeon/default_states/ember_shop/product_03
execute positioned -458 114 1971 run function do2:reset_dungeon/default_states/ember_shop/product_04
execute positioned -458 114 1972 run function do2:reset_dungeon/default_states/ember_shop/product_05
execute positioned -458 114 1973 run function do2:reset_dungeon/default_states/ember_shop/product_06
execute positioned -458 114 1974 run function do2:reset_dungeon/default_states/ember_shop/product_07
execute positioned -458 114 1975 run function do2:reset_dungeon/default_states/ember_shop/product_08
execute positioned -458 114 1976 run function do2:reset_dungeon/default_states/ember_shop/product_09
execute positioned -458 114 1977 run function do2:reset_dungeon/default_states/ember_shop/product_10
execute positioned -458 114 1978 run function do2:reset_dungeon/default_states/ember_shop/product_11
execute positioned -458 114 1979 run function do2:reset_dungeon/default_states/ember_shop/product_12
execute positioned -458 114 1980 run function do2:reset_dungeon/default_states/ember_shop/product_13
execute positioned -458 114 1981 run function do2:reset_dungeon/default_states/ember_shop/product_14
execute positioned -458 114 1982 run function do2:reset_dungeon/default_states/ember_shop/product_15
execute positioned -458 114 1983 run function do2:reset_dungeon/default_states/ember_shop/product_16
execute positioned -458 114 1984 run function do2:reset_dungeon/default_states/ember_shop/product_17
execute positioned -458 114 1985 run function do2:reset_dungeon/default_states/ember_shop/product_18
execute positioned -458 114 1986 run function do2:reset_dungeon/default_states/ember_shop/product_19
execute positioned -458 114 1987 run function do2:reset_dungeon/default_states/ember_shop/product_20
execute positioned -458 114 1988 run function do2:reset_dungeon/default_states/ember_shop/product_21
execute positioned -458 114 1989 run function do2:reset_dungeon/default_states/ember_shop/product_22
execute positioned -458 114 1990 run function do2:reset_dungeon/default_states/ember_shop/product_23
execute positioned -455 114 1968 run function do2:reset_dungeon/default_states/ember_shop/product_24
execute positioned -455 114 1969 run function do2:reset_dungeon/default_states/ember_shop/product_25
execute positioned -455 114 1970 run function do2:reset_dungeon/default_states/ember_shop/product_26
execute positioned -455 114 1971 run function do2:reset_dungeon/default_states/ember_shop/product_27
execute positioned -455 114 1972 run function do2:reset_dungeon/default_states/ember_shop/product_28
execute positioned -455 114 1973 run function do2:reset_dungeon/default_states/ember_shop/product_29
execute positioned -455 114 1974 run function do2:reset_dungeon/default_states/ember_shop/product_30
execute positioned -455 114 1975 run function do2:reset_dungeon/default_states/ember_shop/product_31
execute positioned -455 114 1976 run function do2:reset_dungeon/default_states/ember_shop/product_32
execute positioned -455 114 1977 run function do2:reset_dungeon/default_states/ember_shop/product_33
execute positioned -455 114 1978 run function do2:reset_dungeon/default_states/ember_shop/product_34
execute positioned -455 114 1979 run function do2:reset_dungeon/default_states/ember_shop/product_35
execute positioned -455 114 1980 run function do2:reset_dungeon/default_states/ember_shop/product_36
execute positioned -455 114 1981 run function do2:reset_dungeon/default_states/ember_shop/product_37
execute positioned -455 114 1982 run function do2:reset_dungeon/default_states/ember_shop/product_38
execute positioned -455 114 1983 run function do2:reset_dungeon/default_states/ember_shop/product_39
execute positioned -455 114 1984 run function do2:reset_dungeon/default_states/ember_shop/product_40
execute positioned -455 114 1985 run function do2:reset_dungeon/default_states/ember_shop/product_41
execute positioned -455 114 1986 run function do2:reset_dungeon/default_states/ember_shop/product_42
execute positioned -455 114 1987 run function do2:reset_dungeon/default_states/ember_shop/product_43
execute positioned -455 114 1988 run function do2:reset_dungeon/default_states/ember_shop/product_44
execute positioned -455 114 1989 run function do2:reset_dungeon/default_states/ember_shop/product_45
execute positioned -455 114 1990 run function do2:reset_dungeon/default_states/ember_shop/product_46

# Ember Shop Prices
execute positioned -459 114 1968 run function do2:reset_dungeon/default_states/ember_shop/price_01
execute positioned -459 114 1969 run function do2:reset_dungeon/default_states/ember_shop/price_02
execute positioned -459 114 1970 run function do2:reset_dungeon/default_states/ember_shop/price_03
execute positioned -459 114 1971 run function do2:reset_dungeon/default_states/ember_shop/price_04
execute positioned -459 114 1972 run function do2:reset_dungeon/default_states/ember_shop/price_05
execute positioned -459 114 1973 run function do2:reset_dungeon/default_states/ember_shop/price_06
execute positioned -459 114 1974 run function do2:reset_dungeon/default_states/ember_shop/price_07
execute positioned -459 114 1975 run function do2:reset_dungeon/default_states/ember_shop/price_08
execute positioned -459 114 1976 run function do2:reset_dungeon/default_states/ember_shop/price_09
execute positioned -459 114 1977 run function do2:reset_dungeon/default_states/ember_shop/price_10
execute positioned -459 114 1978 run function do2:reset_dungeon/default_states/ember_shop/price_11
execute positioned -459 114 1979 run function do2:reset_dungeon/default_states/ember_shop/price_12
execute positioned -459 114 1980 run function do2:reset_dungeon/default_states/ember_shop/price_13
execute positioned -459 114 1981 run function do2:reset_dungeon/default_states/ember_shop/price_14
execute positioned -459 114 1982 run function do2:reset_dungeon/default_states/ember_shop/price_15
execute positioned -459 114 1983 run function do2:reset_dungeon/default_states/ember_shop/price_16
execute positioned -459 114 1984 run function do2:reset_dungeon/default_states/ember_shop/price_17
execute positioned -459 114 1985 run function do2:reset_dungeon/default_states/ember_shop/price_18
execute positioned -459 114 1986 run function do2:reset_dungeon/default_states/ember_shop/price_19
execute positioned -459 114 1987 run function do2:reset_dungeon/default_states/ember_shop/price_20
execute positioned -459 114 1988 run function do2:reset_dungeon/default_states/ember_shop/price_21
execute positioned -459 114 1989 run function do2:reset_dungeon/default_states/ember_shop/price_22
execute positioned -459 114 1990 run function do2:reset_dungeon/default_states/ember_shop/price_23
execute positioned -456 114 1968 run function do2:reset_dungeon/default_states/ember_shop/price_24
execute positioned -456 114 1969 run function do2:reset_dungeon/default_states/ember_shop/price_25
execute positioned -456 114 1970 run function do2:reset_dungeon/default_states/ember_shop/price_26
execute positioned -456 114 1971 run function do2:reset_dungeon/default_states/ember_shop/price_27
execute positioned -456 114 1972 run function do2:reset_dungeon/default_states/ember_shop/price_28
execute positioned -456 114 1973 run function do2:reset_dungeon/default_states/ember_shop/price_29
execute positioned -456 114 1974 run function do2:reset_dungeon/default_states/ember_shop/price_30
execute positioned -456 114 1975 run function do2:reset_dungeon/default_states/ember_shop/price_31
execute positioned -456 114 1976 run function do2:reset_dungeon/default_states/ember_shop/price_32
execute positioned -456 114 1977 run function do2:reset_dungeon/default_states/ember_shop/price_33
execute positioned -456 114 1978 run function do2:reset_dungeon/default_states/ember_shop/price_34
execute positioned -456 114 1979 run function do2:reset_dungeon/default_states/ember_shop/price_35
execute positioned -456 114 1980 run function do2:reset_dungeon/default_states/ember_shop/price_36
execute positioned -456 114 1981 run function do2:reset_dungeon/default_states/ember_shop/price_37
execute positioned -456 114 1982 run function do2:reset_dungeon/default_states/ember_shop/price_38
execute positioned -456 114 1983 run function do2:reset_dungeon/default_states/ember_shop/price_39
execute positioned -456 114 1984 run function do2:reset_dungeon/default_states/ember_shop/price_40
execute positioned -456 114 1985 run function do2:reset_dungeon/default_states/ember_shop/price_41
execute positioned -456 114 1986 run function do2:reset_dungeon/default_states/ember_shop/price_42
execute positioned -456 114 1987 run function do2:reset_dungeon/default_states/ember_shop/price_43
execute positioned -456 114 1988 run function do2:reset_dungeon/default_states/ember_shop/price_44
execute positioned -456 114 1989 run function do2:reset_dungeon/default_states/ember_shop/price_45
execute positioned -456 114 1990 run function do2:reset_dungeon/default_states/ember_shop/price_46

# Other
execute positioned -464 114 1962 run function do2:reset_dungeon/default_states/misc/rusty_repair_loot
execute positioned -466 114 1962 run function do2:reset_dungeon/default_states/misc/halloween_hut_loot
execute positioned -466 114 1959 run function do2:reset_dungeon/default_states/misc/pirates_bounty
execute positioned -466 114 1965 run function do2:reset_dungeon/default_states/misc/tnt_dive_common_loot
execute positioned -464 114 1965 run function do2:reset_dungeon/default_states/misc/tnt_dive_rare_loot

# - Retired Hermit Artifacts
execute if score $dungeon do2.config.wc.replaceRetiredHermits matches 1 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/replace_all_artifacts

# Agronet event
function do2:external/agronet/logs/dropper_room/reset_dropper_config_to_default
