# - Start Log -
execute as @a[scores={do2.logs.dungeon_setup=2..}] run tellraw @s ["",{"text":"[§9B§r]: Refilling Berry Bushes."}]
# - End Log -

### Berry Bushes

# Frozen Crypts (Level 1)
setblock -613 45 2004 minecraft:sweet_berry_bush[age=3]
setblock -589 48 1964 minecraft:sweet_berry_bush[age=3]
setblock -563 49 1977 minecraft:sweet_berry_bush[age=3]
setblock -554 47 1948 minecraft:sweet_berry_bush[age=3]
setblock -549 53 2004 minecraft:sweet_berry_bush[age=3]
setblock -502 53 2003 minecraft:sweet_berry_bush[age=3]
setblock -517 54 1960 minecraft:sweet_berry_bush[age=3]
setblock -516 38 1986 minecraft:sweet_berry_bush[age=3]
setblock -512 40 1991 minecraft:sweet_berry_bush[age=3]
setblock -512 40 1993 minecraft:sweet_berry_bush[age=3]
setblock -586 48 2008 minecraft:sweet_berry_bush[age=3]

# Caverns (Level 2)
setblock -485 12 2015 minecraft:sweet_berry_bush[age=3]
setblock -532 15 2034 minecraft:sweet_berry_bush[age=3]
setblock -602 14 2022 minecraft:sweet_berry_bush[age=3]
setblock -515 15 1944 minecraft:sweet_berry_bush[age=3]
setblock -574 23 2013 minecraft:sweet_berry_bush[age=3]
setblock -497 7 1952 minecraft:sweet_berry_bush[age=1]
setblock -498 7 1951 minecraft:sweet_berry_bush[age=0]
setblock -498 7 1953 minecraft:sweet_berry_bush[age=1]
setblock -499 7 1952 minecraft:sweet_berry_bush[age=0]
setblock -471 32 1978 minecraft:sweet_berry_bush[age=3]
setblock -503 26 1966 minecraft:sweet_berry_bush[age=3]

# Black Mines (Level 3)
setblock -583 -15 1926 minecraft:sweet_berry_bush[age=3]
setblock -657 -6 1904 minecraft:sweet_berry_bush[age=3]
setblock -589 4 1895 minecraft:sweet_berry_bush[age=3]
setblock -645 3 1905 minecraft:sweet_berry_bush[age=3]
setblock -654 4 1919 minecraft:sweet_berry_bush[age=3]
setblock -600 -11 1910 minecraft:sweet_berry_bush[age=3]

# Deep Frost (Level 4)
setblock -602 -47 1893 minecraft:sweet_berry_bush[age=3]
setblock -616 -48 1876 minecraft:sweet_berry_bush[age=3]
setblock -599 -41 1878 minecraft:sweet_berry_bush[age=3]
setblock -603 -41 1841 minecraft:sweet_berry_bush[age=3]
setblock -636 -41 1874 minecraft:sweet_berry_bush[age=3]
setblock -608 -39 1910 minecraft:sweet_berry_bush[age=3]
setblock -569 -38 1906 minecraft:sweet_berry_bush[age=3]
setblock -567 -45 1911 minecraft:sweet_berry_bush[age=3]
setblock -567 -45 1912 minecraft:sweet_berry_bush[age=3]
setblock -657 -52 1848 minecraft:sweet_berry_bush[age=3]

# Agronet event
function do2:external/agronet/logs/dungeon_setup/refill_berry_bushes