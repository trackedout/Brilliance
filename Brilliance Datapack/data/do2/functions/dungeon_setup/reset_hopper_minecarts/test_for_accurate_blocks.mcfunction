# THIS WAS RAN MANUALLY TO ENSURE I HAD ALL COORDINATES ACCURATE. (i didn't and updated my coords so now they are)

# - Start Log -
execute as @a[scores={do2.logs.dungeon_setup=2..}] run tellraw @s ["",{"text":"§f[§9B§r]: Testing for Lodestones and Hopper Minecarts."}]
# - End Log -

# Need to check if ONE lodestone doesn't exist. Best way I could do this:
scoreboard objectives add do2.tests.all_lodestone_spots dummy
scoreboard players set $dungeon do2.tests.all_lodestone_spots 0

execute unless block -560 46 2033 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 1
execute unless block -534 44 2035 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 2
execute unless block -513 44 2028 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 3
execute unless block -558 49 2006 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 4
execute unless block -595 48 1967 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 5
execute unless block -575 53 1944 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 6
execute unless block -546 49 1972 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 7
execute unless block -501 42 2013 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 8
execute unless block -490 48 2022 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 9
execute unless block -548 36 1995 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 10
execute unless block -552 36 1984 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 11
execute unless block -519 33 1984 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 12
execute unless block -522 33 2000 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 13
execute unless block -550 43 1955 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 14
execute unless block -536 42 1964 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 15
execute unless block -526 43 1956 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 16
execute unless block -545 42 1940 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 17
execute unless block -527 49 1969 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 18
execute unless block -515 50 2006 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 19
execute unless block -541 49 2016 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 20
execute unless block -495 49 1995 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 21
execute unless block -503 49 1981 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 22
execute unless block -511 50 1956 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 23
execute unless block -507 49 1962 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 24
execute unless block -482 25 1992 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 25
execute unless block -482 16 2037 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 26
execute unless block -454 16 1979 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 27
execute unless block -473 14 1962 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 28
execute unless block -503 13 2035 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 29
execute unless block -487 18 2010 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 30
execute unless block -520 10 2027 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 31
execute unless block -488 13 2002 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 32
execute unless block -552 8 2024 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 33
execute unless block -537 14 2005 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 34
execute unless block -519 10 1980 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 35
execute unless block -517 9 1944 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 36
execute unless block -536 10 1939 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 37
execute unless block -571 6 1966 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 38
execute unless block -574 7 1944 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 39
execute unless block -588 11 1989 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 40
execute unless block -503 21 1958 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 41
execute unless block -547 8 1969 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 42
execute unless block -573 11 1994 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 43
execute unless block -571 10 2028 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 44
execute unless block -599 10 2033 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 45
execute unless block -575 7 2014 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 46
execute unless block -586 -11 1917 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 47
execute unless block -600 -1 1890 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 48
execute unless block -623 -1 1890 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 49
execute unless block -633 -11 1890 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 50
execute unless block -651 -1 1914 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 51
execute unless block -604 -11 1912 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 52
execute unless block -627 -21 1920 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 53
execute unless block -601 -21 1924 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 54
execute unless block -613 -21 1887 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 55
execute unless block -589 -28 1896 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 56
execute unless block -582 -21 1894 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 57
execute unless block -578 -13 1892 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 58
execute unless block -596 -9 1881 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 59
execute unless block -623 -21 1888 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 60
execute unless block -646 -21 1893 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 61
execute unless block -657 -22 1922 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 62
execute unless block -637 -53 1890 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 63
execute unless block -622 -53 1891 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 64
execute unless block -599 -51 1911 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 65
execute unless block -601 -52 1888 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 66
execute unless block -588 -53 1899 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 67
execute unless block -574 -50 1908 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 68
execute unless block -623 -54 1858 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 69
execute unless block -605 -53 1863 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 70
execute unless block -602 -53 1851 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 71
execute unless block -623 -56 1844 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 72
execute unless block -599 -53 1844 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 73
execute unless block -591 -53 1868 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 74
execute unless block -567 -53 1884 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 75
execute unless block -570 -53 1878 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 76
execute unless block -638 -58 1842 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 77
execute unless block -637 -53 1877 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 78
execute unless block -590 -53 1866 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 79
execute unless block -570 -53 1855 minecraft:lodestone run scoreboard players set $dungeon do2.tests.all_lodestone_spots 80

execute unless score $dungeon do2.tests.all_lodestone_spots matches 0 run tellraw @a ["",{"text":"§f[§9B§r]: Testing for Lodestone §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_lodestone_spots"}},{"text":" failed."}]
scoreboard objectives remove do2.tests.all_lodestone_spots

# Need to check if ONE minecart doesn't exist. Best way I could do this:
scoreboard objectives add do2.tests.all_minecart_spots dummy
scoreboard players set $dungeon do2.tests.all_minecart_spots 0

execute positioned -560 48 2033 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 1
execute positioned -534 46 2035 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 2
execute positioned -513 46 2028 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 3
execute positioned -558 51 2006 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 4
execute positioned -595 50 1967 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 5
execute positioned -575 55 1944 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 6
execute positioned -546 51 1972 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 7
execute positioned -501 44 2013 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 8
execute positioned -490 50 2022 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 9
execute positioned -548 38 1995 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 10
execute positioned -552 38 1984 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 11
execute positioned -519 35 1984 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 12
execute positioned -522 35 2000 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 13
execute positioned -550 45 1955 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 14
execute positioned -536 44 1964 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 15
execute positioned -526 45 1956 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 16
execute positioned -545 44 1940 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 17
execute positioned -527 51 1969 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 18
execute positioned -515 52 2006 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 19
execute positioned -541 51 2016 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 20
execute positioned -495 51 1995 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 21
execute positioned -503 51 1981 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 22
execute positioned -511 52 1956 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 23
execute positioned -507 51 1962 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 24
execute positioned -482 27 1992 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 25
execute positioned -482 18 2037 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 26
execute positioned -454 18 1979 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 27
execute positioned -473 16 1962 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 28
execute positioned -503 15 2035 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 29
execute positioned -487 20 2010 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 30
execute positioned -520 12 2027 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 31
execute positioned -488 15 2002 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 32
execute positioned -552 10 2024 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 33
execute positioned -537 16 2005 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 34
execute positioned -519 12 1980 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 35
execute positioned -517 12 1944 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 36
execute positioned -536 12 1939 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 37
execute positioned -571 8 1966 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 38
execute positioned -574 9 1944 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 39
execute positioned -588 13 1989 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 40
execute positioned -503 23 1958 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 41
execute positioned -547 10 1969 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 42
execute positioned -573 13 1994 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 43
execute positioned -571 12 2028 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 44
execute positioned -599 12 2033 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 45
execute positioned -575 15 2014 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 46
execute positioned -586 -9 1917 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 47
execute positioned -600 1 1890 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 48
execute positioned -623 1 1890 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 49
execute positioned -633 -9 1890 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 50
execute positioned -651 1 1914 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 51
execute positioned -604 -9 1912 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 52
execute positioned -627 -19 1920 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 53
execute positioned -601 -19 1924 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 54
execute positioned -613 -19 1887 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 55
execute positioned -589 -26 1896 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 56
execute positioned -582 -19 1894 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 57
execute positioned -578 -11 1892 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 58
execute positioned -596 -7 1881 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 59
execute positioned -623 -19 1888 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 60
execute positioned -646 -19 1893 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 61
execute positioned -657 -14 1922 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 62
execute positioned -637 -51 1890 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 63
execute positioned -622 -51 1891 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 64
execute positioned -599 -49 1911 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 65
execute positioned -601 -50 1888 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 66
execute positioned -588 -51 1899 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 67
execute positioned -574 -48 1908 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 68
execute positioned -623 -52 1858 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 69
execute positioned -605 -51 1863 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 70
execute positioned -602 -51 1851 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 71
execute positioned -623 -54 1844 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 72
execute positioned -599 -51 1844 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 73
execute positioned -591 -51 1868 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 74
execute positioned -567 -51 1884 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 75
execute positioned -570 -51 1878 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 76
execute positioned -638 -56 1842 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 77
execute positioned -637 -51 1877 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 78
execute positioned -590 -51 1866 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 79
execute positioned -570 -51 1855 unless entity @e[type=minecraft:hopper_minecart,distance=..1] run scoreboard players set $dungeon do2.tests.all_minecart_spots 80

execute unless score $dungeon do2.tests.all_minecart_spots matches 0 run tellraw @a ["",{"text":"§f[§9B§r]: Testing for minecart §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_minecart_spots"}},{"text":" failed."}]
scoreboard objectives remove do2.tests.all_minecart_spots

# Agronet event
function do2:external/agronet/logs/dungeon_setup/reset_hopper_minecarts/test_for_accurate_blocks