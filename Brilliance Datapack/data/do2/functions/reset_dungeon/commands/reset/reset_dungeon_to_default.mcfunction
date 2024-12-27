# - Start Log -
execute as @a[scores={do2.logs.dropper_room=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Resetting droppers/hoppers in dungeon."}]
# - End Log -

# - Set droppers IN dungeon to their DEFAULT state. -


# Difficulty Selector
execute positioned -557 109 1982 run function do2:reset_dungeon/default_states/difficulty/easy
execute positioned -558 109 1982 run function do2:reset_dungeon/default_states/difficulty/medium
execute positioned -559 109 1982 run function do2:reset_dungeon/default_states/difficulty/hard
execute positioned -560 109 1982 run function do2:reset_dungeon/default_states/difficulty/deadly
execute positioned -561 109 1982 run function do2:reset_dungeon/default_states/difficulty/deepfrost

# Compasses
execute positioned -549 106 1979 run function do2:reset_dungeon/default_states/compasses/easy_1
execute positioned -549 106 1978 run function do2:reset_dungeon/default_states/compasses/easy_2
execute positioned -549 106 1977 run function do2:reset_dungeon/default_states/compasses/medium_1
execute positioned -549 106 1976 run function do2:reset_dungeon/default_states/compasses/medium_2
execute positioned -549 106 1975 run function do2:reset_dungeon/default_states/compasses/hard_1
execute positioned -549 106 1974 run function do2:reset_dungeon/default_states/compasses/hard_2
execute positioned -549 106 1973 run function do2:reset_dungeon/default_states/compasses/deadly_1
execute if score $dungeon do2.config.eggsUnlockDeepfrost matches 1 if entity @p[tag=do2.received_shulker,advancements={do2:hidden/adventuring/find_17_eggs=true}] positioned -549 106 1972 run function do2:reset_dungeon/default_states/compasses/deadly_2
execute if score $dungeon do2.config.eggsUnlockDeepfrost matches 1 if entity @p[tag=do2.received_shulker,advancements={do2:hidden/adventuring/find_17_eggs=true}] positioned -549 106 1971 run function do2:reset_dungeon/default_states/compasses/deepfrost_1
execute if score $dungeon do2.config.eggsUnlockDeepfrost matches 1 if entity @p[tag=do2.received_shulker,advancements={do2:hidden/adventuring/find_17_eggs=true}] positioned -549 106 1970 run function do2:reset_dungeon/default_states/compasses/deepfrost_2
execute if score $dungeon do2.config.eggsUnlockDeepfrost matches 0 positioned -549 106 1972 run function do2:reset_dungeon/default_states/compasses/deadly_2
execute if score $dungeon do2.config.eggsUnlockDeepfrost matches 0 positioned -549 106 1971 run function do2:reset_dungeon/default_states/compasses/deepfrost_1
execute if score $dungeon do2.config.eggsUnlockDeepfrost matches 0 positioned -549 106 1970 run function do2:reset_dungeon/default_states/compasses/deepfrost_2

# Treasure
execute positioned -518 35 2002 run function do2:reset_dungeon/default_states/treasure/01
execute positioned -521 35 1982 run function do2:reset_dungeon/default_states/treasure/02
execute positioned -497 51 1980 run function do2:reset_dungeon/default_states/treasure/03
execute positioned -484 53 1989 run function do2:reset_dungeon/default_states/treasure/04
execute positioned -514 51 1962 run function do2:reset_dungeon/default_states/treasure/05
execute positioned -527 51 1974 run function do2:reset_dungeon/default_states/treasure/06
execute positioned -546 51 2008 run function do2:reset_dungeon/default_states/treasure/07
execute positioned -516 46 2031 run function do2:reset_dungeon/default_states/treasure/08
execute positioned -561 47 1942 run function do2:reset_dungeon/default_states/treasure/09
execute positioned -536 45 1948 run function do2:reset_dungeon/default_states/treasure/10
execute positioned -490 50 2017 run function do2:reset_dungeon/default_states/treasure/11
execute positioned -532 44 2024 run function do2:reset_dungeon/default_states/treasure/12
execute positioned -588 52 1951 run function do2:reset_dungeon/default_states/treasure/13
execute positioned -590 46 1978 run function do2:reset_dungeon/default_states/treasure/14
execute positioned -619 43 2027 run function do2:reset_dungeon/default_states/treasure/15
execute positioned -606 43 2024 run function do2:reset_dungeon/default_states/treasure/16
execute positioned -583 45 2012 run function do2:reset_dungeon/default_states/treasure/17
execute positioned -559 46 2022 run function do2:reset_dungeon/default_states/treasure/18
execute positioned -554 51 2007 run function do2:reset_dungeon/default_states/treasure/19
execute positioned -519 53 2011 run function do2:reset_dungeon/default_states/treasure/20
execute positioned -557 45 1976 run function do2:reset_dungeon/default_states/treasure/21
execute positioned -563 36 1999 run function do2:reset_dungeon/default_states/treasure/22
execute positioned -575 36 1998 run function do2:reset_dungeon/default_states/treasure/23
execute positioned -485 31 1963 run function do2:reset_dungeon/default_states/treasure/24
execute positioned -479 19 2009 run function do2:reset_dungeon/default_states/treasure/25
execute positioned -594 12 1954 run function do2:reset_dungeon/default_states/treasure/26
execute positioned -509 14 2034 run function do2:reset_dungeon/default_states/treasure/27
execute positioned -502 16 1972 run function do2:reset_dungeon/default_states/treasure/28
execute positioned -590 11 2032 run function do2:reset_dungeon/default_states/treasure/29
execute positioned -598 11 1988 run function do2:reset_dungeon/default_states/treasure/30
execute positioned -574 11 2007 run function do2:reset_dungeon/default_states/treasure/31
execute positioned -553 10 2036 run function do2:reset_dungeon/default_states/treasure/32
execute positioned -507 9 1951 run function do2:reset_dungeon/default_states/treasure/33
execute positioned -581 9 1955 run function do2:reset_dungeon/default_states/treasure/34
execute positioned -568 8 1964 run function do2:reset_dungeon/default_states/treasure/35
execute positioned -597 12 2009 run function do2:reset_dungeon/default_states/treasure/36
execute positioned -541 11 1998 run function do2:reset_dungeon/default_states/treasure/37
execute positioned -531 16 1990 run function do2:reset_dungeon/default_states/treasure/38
execute positioned -548 11 1975 run function do2:reset_dungeon/default_states/treasure/39
execute positioned -531 10 2016 run function do2:reset_dungeon/default_states/treasure/40
execute positioned -528 12 2031 run function do2:reset_dungeon/default_states/treasure/41
execute positioned -526 12 1942 run function do2:reset_dungeon/default_states/treasure/42
execute positioned -490 11 2007 run function do2:reset_dungeon/default_states/treasure/43
execute positioned -496 15 2000 run function do2:reset_dungeon/default_states/treasure/44
execute positioned -503 31 1975 run function do2:reset_dungeon/default_states/treasure/45
execute positioned -644 1 1920 run function do2:reset_dungeon/default_states/treasure/46
execute positioned -652 1 1893 run function do2:reset_dungeon/default_states/treasure/47
execute positioned -590 1 1901 run function do2:reset_dungeon/default_states/treasure/48
execute positioned -586 1 1887 run function do2:reset_dungeon/default_states/treasure/49
execute positioned -606 1 1920 run function do2:reset_dungeon/default_states/treasure/50
execute positioned -628 1 1920 run function do2:reset_dungeon/default_states/treasure/51
execute positioned -654 -9 1891 run function do2:reset_dungeon/default_states/treasure/52
execute positioned -585 -9 1919 run function do2:reset_dungeon/default_states/treasure/53
execute positioned -624 -9 1924 run function do2:reset_dungeon/default_states/treasure/54
execute positioned -603 -9 1885 run function do2:reset_dungeon/default_states/treasure/55
execute positioned -583 -17 1927 run function do2:reset_dungeon/default_states/treasure/56
execute positioned -640 -19 1888 run function do2:reset_dungeon/default_states/treasure/57
execute positioned -641 -19 1921 run function do2:reset_dungeon/default_states/treasure/58
execute positioned -608 -19 1919 run function do2:reset_dungeon/default_states/treasure/59
execute positioned -577 -37 1837 run function do2:reset_dungeon/default_states/treasure/60

# Embers
execute positioned -519 35 2002 run function do2:reset_dungeon/default_states/embers/01
execute positioned -521 35 1981 run function do2:reset_dungeon/default_states/embers/02
execute positioned -498 51 1980 run function do2:reset_dungeon/default_states/embers/03
execute positioned -484 53 1988 run function do2:reset_dungeon/default_states/embers/04
execute positioned -513 51 1962 run function do2:reset_dungeon/default_states/embers/05
execute positioned -527 51 1975 run function do2:reset_dungeon/default_states/embers/06
execute positioned -545 51 2008 run function do2:reset_dungeon/default_states/embers/07
execute positioned -515 46 2031 run function do2:reset_dungeon/default_states/embers/08
execute positioned -560 47 1942 run function do2:reset_dungeon/default_states/embers/09
execute positioned -537 45 1948 run function do2:reset_dungeon/default_states/embers/10
execute positioned -490 50 2016 run function do2:reset_dungeon/default_states/embers/11
execute positioned -533 44 2024 run function do2:reset_dungeon/default_states/embers/12
execute positioned -587 52 1951 run function do2:reset_dungeon/default_states/embers/13
execute positioned -589 46 1978 run function do2:reset_dungeon/default_states/embers/14
execute positioned -619 43 2026 run function do2:reset_dungeon/default_states/embers/15
execute positioned -606 43 2023 run function do2:reset_dungeon/default_states/embers/16
execute positioned -583 45 2013 run function do2:reset_dungeon/default_states/embers/17
execute positioned -558 46 2022 run function do2:reset_dungeon/default_states/embers/18
execute positioned -554 51 2008 run function do2:reset_dungeon/default_states/embers/19
execute positioned -518 53 2011 run function do2:reset_dungeon/default_states/embers/20
execute positioned -558 45 1976 run function do2:reset_dungeon/default_states/embers/21
execute positioned -565 36 1999 run function do2:reset_dungeon/default_states/embers/22
execute positioned -573 36 1998 run function do2:reset_dungeon/default_states/embers/23
execute positioned -485 31 1962 run function do2:reset_dungeon/default_states/embers/24
execute positioned -478 19 2009 run function do2:reset_dungeon/default_states/embers/25
# Number 26 doesn't exist
execute positioned -509 14 2033 run function do2:reset_dungeon/default_states/embers/27
execute positioned -501 16 1972 run function do2:reset_dungeon/default_states/embers/28
execute positioned -589 11 2032 run function do2:reset_dungeon/default_states/embers/29
execute positioned -598 11 1989 run function do2:reset_dungeon/default_states/embers/30
execute positioned -573 11 2007 run function do2:reset_dungeon/default_states/embers/31
execute positioned -553 10 2037 run function do2:reset_dungeon/default_states/embers/32
execute positioned -508 9 1951 run function do2:reset_dungeon/default_states/embers/33
execute positioned -582 9 1955 run function do2:reset_dungeon/default_states/embers/34
execute positioned -569 8 1964 run function do2:reset_dungeon/default_states/embers/35
execute positioned -599 12 2009 run function do2:reset_dungeon/default_states/embers/36
execute positioned -542 11 1998 run function do2:reset_dungeon/default_states/embers/37
execute positioned -531 16 1989 run function do2:reset_dungeon/default_states/embers/38
execute positioned -548 11 1976 run function do2:reset_dungeon/default_states/embers/39
execute positioned -530 10 2015 run function do2:reset_dungeon/default_states/embers/40
execute positioned -528 12 2032 run function do2:reset_dungeon/default_states/embers/41
execute positioned -526 12 1941 run function do2:reset_dungeon/default_states/embers/42
execute positioned -489 11 2007 run function do2:reset_dungeon/default_states/embers/43
execute positioned -496 15 1999 run function do2:reset_dungeon/default_states/embers/44
execute positioned -502 31 1975 run function do2:reset_dungeon/default_states/embers/45
execute positioned -644 1 1921 run function do2:reset_dungeon/default_states/embers/46
execute positioned -652 1 1892 run function do2:reset_dungeon/default_states/embers/47
execute positioned -591 1 1901 run function do2:reset_dungeon/default_states/embers/48
execute positioned -586 1 1888 run function do2:reset_dungeon/default_states/embers/49
execute positioned -606 1 1921 run function do2:reset_dungeon/default_states/embers/50
execute positioned -628 1 1921 run function do2:reset_dungeon/default_states/embers/51
execute positioned -654 -9 1892 run function do2:reset_dungeon/default_states/embers/52
execute positioned -585 -9 1920 run function do2:reset_dungeon/default_states/embers/53
execute positioned -623 -9 1924 run function do2:reset_dungeon/default_states/embers/54
execute positioned -602 -9 1885 run function do2:reset_dungeon/default_states/embers/55
execute positioned -584 -17 1927 run function do2:reset_dungeon/default_states/embers/56
execute positioned -640 -19 1889 run function do2:reset_dungeon/default_states/embers/57
execute positioned -642 -19 1921 run function do2:reset_dungeon/default_states/embers/58
execute positioned -609 -19 1919 run function do2:reset_dungeon/default_states/embers/59
execute positioned -579 -37 1835 run function do2:reset_dungeon/default_states/embers/60

# Artifacts
execute positioned -562 48 2033 run function do2:reset_dungeon/default_states/artifacts/01
execute positioned -536 46 2035 run function do2:reset_dungeon/default_states/artifacts/02
execute positioned -513 46 2030 run function do2:reset_dungeon/default_states/artifacts/03
execute positioned -556 51 2006 run function do2:reset_dungeon/default_states/artifacts/04
execute positioned -593 49 1967 run function do2:reset_dungeon/default_states/artifacts/05
execute positioned -573 55 1944 run function do2:reset_dungeon/default_states/artifacts/06
execute positioned -548 51 1972 run function do2:reset_dungeon/default_states/artifacts/07
execute positioned -499 44 2013 run function do2:reset_dungeon/default_states/artifacts/08
execute positioned -490 50 2020 run function do2:reset_dungeon/default_states/artifacts/09
execute positioned -546 38 1995 run function do2:reset_dungeon/default_states/artifacts/10
execute positioned -550 38 1984 run function do2:reset_dungeon/default_states/artifacts/11
execute positioned -517 35 1984 run function do2:reset_dungeon/default_states/artifacts/12
execute positioned -520 35 2000 run function do2:reset_dungeon/default_states/artifacts/13
execute positioned -552 45 1955 run function do2:reset_dungeon/default_states/artifacts/14
execute positioned -536 44 1966 run function do2:reset_dungeon/default_states/artifacts/15
execute positioned -528 45 1956 run function do2:reset_dungeon/default_states/artifacts/16
execute positioned -543 44 1940 run function do2:reset_dungeon/default_states/artifacts/17
execute positioned -525 51 1969 run function do2:reset_dungeon/default_states/artifacts/18
execute positioned -517 52 2006 run function do2:reset_dungeon/default_states/artifacts/19
execute positioned -543 51 2016 run function do2:reset_dungeon/default_states/artifacts/20
execute positioned -497 51 1995 run function do2:reset_dungeon/default_states/artifacts/21
execute positioned -505 51 1981 run function do2:reset_dungeon/default_states/artifacts/22
execute positioned -511 52 1958 run function do2:reset_dungeon/default_states/artifacts/23
execute positioned -505 51 1962 run function do2:reset_dungeon/default_states/artifacts/24
execute positioned -480 27 1992 run function do2:reset_dungeon/default_states/artifacts/25
execute positioned -484 18 2037 run function do2:reset_dungeon/default_states/artifacts/26
execute positioned -452 18 1979 run function do2:reset_dungeon/default_states/artifacts/27
execute positioned -475 16 1962 run function do2:reset_dungeon/default_states/artifacts/28
execute positioned -503 15 2033 run function do2:reset_dungeon/default_states/artifacts/29
execute positioned -487 20 2008 run function do2:reset_dungeon/default_states/artifacts/30
execute positioned -520 12 2025 run function do2:reset_dungeon/default_states/artifacts/31
execute positioned -490 15 2002 run function do2:reset_dungeon/default_states/artifacts/32
execute positioned -554 10 2024 run function do2:reset_dungeon/default_states/artifacts/33
execute positioned -537 16 2003 run function do2:reset_dungeon/default_states/artifacts/34
execute positioned -519 12 1982 run function do2:reset_dungeon/default_states/artifacts/35
execute positioned -519 12 1943 run function do2:reset_dungeon/default_states/artifacts/36
execute positioned -534 12 1939 run function do2:reset_dungeon/default_states/artifacts/37
execute positioned -573 8 1966 run function do2:reset_dungeon/default_states/artifacts/38
execute positioned -572 9 1944 run function do2:reset_dungeon/default_states/artifacts/39
execute positioned -588 13 1987 run function do2:reset_dungeon/default_states/artifacts/40
execute positioned -505 23 1958 run function do2:reset_dungeon/default_states/artifacts/41
execute positioned -549 10 1969 run function do2:reset_dungeon/default_states/artifacts/42
execute positioned -575 13 1994 run function do2:reset_dungeon/default_states/artifacts/43
execute positioned -571 12 2026 run function do2:reset_dungeon/default_states/artifacts/44
execute positioned -599 12 2031 run function do2:reset_dungeon/default_states/artifacts/45
execute positioned -574 16 2014 run function do2:reset_dungeon/default_states/artifacts/46
execute positioned -588 -9 1917 run function do2:reset_dungeon/default_states/artifacts/47
execute positioned -598 1 1890 run function do2:reset_dungeon/default_states/artifacts/48
execute positioned -623 1 1892 run function do2:reset_dungeon/default_states/artifacts/49
execute positioned -635 -9 1890 run function do2:reset_dungeon/default_states/artifacts/50
execute positioned -651 1 1916 run function do2:reset_dungeon/default_states/artifacts/51
execute positioned -604 -9 1914 run function do2:reset_dungeon/default_states/artifacts/52
execute positioned -629 -19 1920 run function do2:reset_dungeon/default_states/artifacts/53
execute positioned -603 -19 1924 run function do2:reset_dungeon/default_states/artifacts/54
execute positioned -613 -19 1889 run function do2:reset_dungeon/default_states/artifacts/55
execute positioned -589 -26 1898 run function do2:reset_dungeon/default_states/artifacts/56
execute positioned -582 -19 1896 run function do2:reset_dungeon/default_states/artifacts/57
execute positioned -580 -11 1892 run function do2:reset_dungeon/default_states/artifacts/58
execute positioned -598 -7 1881 run function do2:reset_dungeon/default_states/artifacts/59
execute positioned -623 -19 1890 run function do2:reset_dungeon/default_states/artifacts/60
execute positioned -648 -19 1893 run function do2:reset_dungeon/default_states/artifacts/61
execute positioned -659 -14 1922 run function do2:reset_dungeon/default_states/artifacts/62
execute positioned -637 -51 1888 run function do2:reset_dungeon/default_states/artifacts/63
execute positioned -622 -51 1889 run function do2:reset_dungeon/default_states/artifacts/64
execute positioned -601 -49 1911 run function do2:reset_dungeon/default_states/artifacts/65
execute positioned -601 -50 1890 run function do2:reset_dungeon/default_states/artifacts/66
execute positioned -590 -51 1899 run function do2:reset_dungeon/default_states/artifacts/67
execute positioned -574 -48 1910 run function do2:reset_dungeon/default_states/artifacts/68
execute positioned -623 -52 1856 run function do2:reset_dungeon/default_states/artifacts/69
execute positioned -607 -51 1863 run function do2:reset_dungeon/default_states/artifacts/70
execute positioned -600 -51 1852 run function do2:reset_dungeon/default_states/artifacts/71
execute positioned -623 -54 1842 run function do2:reset_dungeon/default_states/artifacts/72
execute positioned -599 -51 1842 run function do2:reset_dungeon/default_states/artifacts/73
execute positioned -591 -51 1870 run function do2:reset_dungeon/default_states/artifacts/74
execute positioned -569 -51 1884 run function do2:reset_dungeon/default_states/artifacts/75
execute positioned -568 -51 1878 run function do2:reset_dungeon/default_states/artifacts/76
execute positioned -636 -56 1841 run function do2:reset_dungeon/default_states/artifacts/77
execute positioned -635 -51 1877 run function do2:reset_dungeon/default_states/artifacts/78
execute positioned -590 -51 1864 run function do2:reset_dungeon/default_states/artifacts/79
execute positioned -570 -51 1853 run function do2:reset_dungeon/default_states/artifacts/80

# Other
execute positioned -518 2 2007 run function do2:reset_dungeon/default_states/misc/rusty_repair_loot
execute positioned -523 12 2042 run function do2:reset_dungeon/default_states/misc/halloween_hut_loot
execute positioned -574 39 1985 run function do2:reset_dungeon/default_states/misc/pirates_bounty
execute positioned -578 15 1968 run function do2:reset_dungeon/default_states/misc/tnt_dive_common_loot
execute positioned -578 15 1970 run function do2:reset_dungeon/default_states/misc/tnt_dive_rare_loot
