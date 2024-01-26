# - Start Log -
execute as @a[scores={do2.logs.dropper_room=1..}] run tellraw @s ["",{"text":"[§9B§r]: Copying droppers from dungeon to dropper room."}]
# - End Log -

# - copy FROM dungeon(all droppers) TO dropper room -

#Difficulty Selector
clone -557 109 1982 -557 109 1982 -476 109 1982 replace
clone -558 109 1982 -558 109 1982 -475 109 1982 replace
clone -559 109 1982 -559 109 1982 -474 109 1982 replace
clone -560 109 1982 -560 109 1982 -473 109 1982 replace
clone -561 109 1982 -561 109 1982 -472 109 1982 replace
# Compasses
clone -549 106 1979 -549 106 1979 -476 109 1984 replace
clone -549 106 1978 -549 106 1978 -475 109 1984 replace
clone -549 106 1977 -549 106 1977 -474 109 1984 replace
clone -549 106 1976 -549 106 1976 -473 109 1984 replace
clone -549 106 1975 -549 106 1975 -472 109 1984 replace
clone -549 106 1974 -549 106 1974 -471 109 1984 replace
clone -549 106 1973 -549 106 1973 -470 109 1984 replace
clone -549 106 1972 -549 106 1972 -469 109 1984 replace
clone -549 106 1971 -549 106 1971 -468 109 1984 replace
clone -549 106 1970 -549 106 1970 -467 109 1984 replace

# artifacts
clone -562 48 2033 -562 48 2033 -476 114 1958 replace
clone -536 46 2035 -536 46 2035 -475 114 1958 replace
clone -513 46 2030 -513 46 2030 -474 114 1958 replace
clone -556 51 2006 -556 51 2006 -473 114 1958 replace
clone -593 49 1967 -593 49 1967 -472 114 1958 replace
clone -573 55 1944 -573 55 1944 -471 114 1958 replace
clone -548 51 1972 -548 51 1972 -470 114 1958 replace
clone -499 44 2013 -499 44 2013 -469 114 1958 replace
clone -490 50 2020 -490 50 2020 -468 114 1958 replace
clone -546 38 1995 -546 38 1995 -467 114 1958 replace
clone -550 38 1984 -550 38 1984 -466 114 1958 replace
clone -517 35 1984 -517 35 1984 -465 114 1958 replace
clone -520 35 2000 -520 35 2000 -464 114 1958 replace
clone -552 45 1955 -552 45 1955 -463 114 1958 replace
clone -536 44 1966 -536 44 1966 -476 114 1959 replace
clone -528 45 1956 -528 45 1956 -475 114 1959 replace
clone -543 44 1940 -543 44 1940 -474 114 1959 replace
clone -525 51 1969 -525 51 1969 -473 114 1959 replace
clone -517 52 2006 -517 52 2006 -472 114 1959 replace
clone -543 51 2016 -543 51 2016 -471 114 1959 replace
clone -497 51 1995 -497 51 1995 -470 114 1959 replace
clone -505 51 1981 -505 51 1981 -469 114 1959 replace
clone -511 52 1958 -511 52 1958 -468 114 1959 replace
clone -505 51 1962 -505 51 1962 -467 114 1959 replace
clone -480 27 1992 -480 27 1992 -466 114 1959 replace
clone -484 18 2037 -484 18 2037 -465 114 1959 replace
clone -452 18 1979 -452 18 1979 -464 114 1959 replace
clone -475 16 1962 -475 16 1962 -463 114 1959 replace
clone -503 15 2033 -503 15 2033 -476 114 1960 replace
clone -487 20 2008 -487 20 2008 -475 114 1960 replace
clone -520 12 2025 -520 12 2025 -474 114 1960 replace
clone -490 15 2002 -490 15 2002 -473 114 1960 replace
clone -554 10 2024 -554 10 2024 -472 114 1960 replace
clone -537 16 2003 -537 16 2003 -471 114 1960 replace
clone -519 12 1982 -519 12 1982 -470 114 1960 replace
clone -519 12 1943 -519 12 1943 -469 114 1960 replace
clone -534 12 1939 -534 12 1939 -468 114 1960 replace
clone -573 8 1966 -573 8 1966 -467 114 1960 replace
clone -572 9 1944 -572 9 1944 -466 114 1960 replace
clone -588 13 1987 -588 13 1987 -465 114 1960 replace
clone -505 23 1958 -505 23 1958 -464 114 1960 replace
clone -549 10 1969 -549 10 1969 -463 114 1960 replace
clone -575 13 1994 -575 13 1994 -476 114 1961 replace
clone -571 12 2026 -571 12 2026 -475 114 1961 replace
clone -599 12 2031 -599 12 2031 -474 114 1961 replace
# we moved dropper 46
execute if block -574 16 2014 dropper run clone -574 16 2014 -574 16 2014 -473 114 1961 replace
execute if block -574 14 2014 dropper run clone -574 14 2014 -574 14 2014 -473 114 1961 replace
clone -588 -9 1917 -588 -9 1917 -472 114 1961 replace
clone -598 1 1890 -598 1 1890 -471 114 1961 replace
clone -623 1 1892 -623 1 1892 -470 114 1961 replace
clone -635 -9 1890 -635 -9 1890 -469 114 1961 replace
clone -651 1 1916 -651 1 1916 -468 114 1961 replace
clone -604 -9 1914 -604 -9 1914 -467 114 1961 replace
clone -629 -19 1920 -629 -19 1920 -466 114 1961 replace
clone -603 -19 1924 -603 -19 1924 -465 114 1961 replace
clone -613 -19 1889 -613 -19 1889 -464 114 1961 replace
clone -589 -26 1898 -589 -26 1898 -463 114 1961 replace
clone -582 -19 1896 -582 -19 1896 -476 114 1962 replace
clone -580 -11 1892 -580 -11 1892 -475 114 1962 replace
clone -598 -7 1881 -598 -7 1881 -474 114 1962 replace
clone -623 -19 1890 -623 -19 1890 -473 114 1962 replace
clone -648 -19 1893 -648 -19 1893 -472 114 1962 replace
clone -659 -14 1922 -659 -14 1922 -471 114 1962 replace
clone -637 -51 1888 -637 -51 1888 -470 114 1962 replace
clone -622 -51 1889 -622 -51 1889 -469 114 1962 replace
clone -601 -49 1911 -601 -49 1911 -468 114 1962 replace
clone -601 -50 1890 -601 -50 1890 -467 114 1962 replace
clone -590 -51 1899 -590 -51 1899 -466 114 1962 replace
clone -574 -48 1910 -574 -48 1910 -465 114 1962 replace
clone -623 -52 1856 -623 -52 1856 -464 114 1962 replace
clone -607 -51 1863 -607 -51 1863 -463 114 1962 replace
clone -600 -51 1851 -600 -51 1851 -476 114 1963 replace
clone -623 -54 1842 -623 -54 1842 -475 114 1963 replace
clone -599 -51 1842 -599 -51 1842 -474 114 1963 replace
clone -591 -51 1870 -591 -51 1870 -473 114 1963 replace
clone -569 -51 1884 -569 -51 1884 -472 114 1963 replace
clone -568 -51 1878 -568 -51 1878 -471 114 1963 replace
clone -636 -56 1842 -636 -56 1842 -470 114 1963 replace
clone -635 -51 1877 -635 -51 1877 -469 114 1963 replace
clone -590 -51 1864 -590 -51 1864 -468 114 1963 replace
clone -570 -51 1853 -570 -51 1853 -467 114 1963 replace

# treasure
clone -518 35 2002 -518 35 2002 -476 114 1967 replace
clone -521 35 1982 -521 35 1982 -475 114 1967 replace
clone -497 51 1980 -497 51 1980 -474 114 1967 replace
clone -484 53 1989 -484 53 1989 -473 114 1967 replace
clone -514 51 1962 -514 51 1962 -472 114 1967 replace
clone -527 51 1973 -527 51 1973 -471 114 1967 replace
clone -546 51 2008 -546 51 2008 -470 114 1967 replace
clone -516 46 2031 -516 46 2031 -469 114 1967 replace
clone -561 47 1942 -561 47 1942 -468 114 1967 replace
clone -536 45 1948 -536 45 1948 -467 114 1967 replace
clone -490 50 2017 -490 50 2017 -466 114 1967 replace
clone -532 44 2024 -532 44 2024 -465 114 1967 replace
clone -588 52 1951 -588 52 1951 -464 114 1967 replace
clone -590 46 1978 -590 46 1978 -463 114 1967 replace
clone -619 43 2027 -619 43 2027 -476 114 1968 replace
clone -606 43 2024 -606 43 2024 -475 114 1968 replace
clone -583 45 2012 -583 45 2012 -474 114 1968 replace
clone -559 46 2022 -559 46 2022 -471 114 1968 replace
clone -554 51 2007 -554 51 2007 -470 114 1968 replace
clone -519 53 2011 -519 53 2011 -469 114 1968 replace
clone -557 45 1976 -557 45 1976 -468 114 1968 replace
clone -563 36 1999 -563 36 1999 -467 114 1968 replace
clone -575 36 1998 -575 36 1998 -466 114 1968 replace
clone -485 31 1963 -485 31 1963 -465 114 1968 replace
clone -479 19 2009 -479 19 2009 -464 114 1968 replace
clone -594 12 1954 -594 12 1954 -463 114 1968 replace
clone -509 14 2034 -509 14 2034 -476 114 1969 replace
clone -502 16 1972 -502 16 1972 -475 114 1969 replace
clone -590 11 2032 -590 11 2032 -474 114 1969 replace
clone -598 11 1988 -598 11 1988 -473 114 1969 replace
clone -574 11 2007 -574 11 2007 -472 114 1969 replace
clone -553 10 2036 -553 10 2036 -471 114 1969 replace
clone -507 9 1951 -507 9 1951 -470 114 1969 replace
clone -581 9 1955 -581 9 1955 -469 114 1969 replace
clone -568 8 1964 -568 8 1964 -468 114 1969 replace
clone -597 12 2009 -597 12 2009 -467 114 1969 replace
clone -541 11 1998 -541 11 1998 -466 114 1969 replace
clone -531 16 1990 -531 16 1990 -465 114 1969 replace
clone -548 11 1975 -548 11 1975 -464 114 1969 replace
execute if block -531 10 2016 dropper run clone -531 10 2016 -531 10 2016 -463 114 1969 replace
execute if block -531 8 2016 dropper run clone -531 8 2016 -531 10 2016 -463 114 1969 replace
clone -528 12 2031 -528 12 2031 -476 114 1970 replace
clone -526 12 1942 -526 12 1942 -474 114 1970 replace
clone -644 1 1920 -644 1 1920 -473 114 1970 replace
clone -652 1 1893 -652 1 1893 -472 114 1970 replace
clone -586 1 1887 -586 1 1887 -471 114 1970 replace
clone -606 1 1920 -606 1 1920 -470 114 1970 replace
clone -628 1 1920 -628 1 1920 -469 114 1970 replace
clone -654 -9 1891 -654 -9 1891 -468 114 1970 replace
clone -585 -9 1919 -585 -9 1919 -467 114 1970 replace
clone -624 -9 1924 -624 -9 1924 -466 114 1970 replace
clone -603 -9 1885 -603 -9 1885 -465 114 1970 replace
clone -583 -17 1927 -583 -17 1927 -464 114 1970 replace
clone -640 -19 1888 -640 -19 1888 -463 114 1970 replace
clone -641 -19 1921 -641 -19 1921 -476 114 1971 replace
clone -608 -19 1919 -608 -19 1919 -475 114 1971 replace
clone -577 -37 1837 -577 -37 1837 -474 114 1971 replace
clone -490 11 2007 -490 11 2007 -473 114 1971 replace
# note: this is ember, one of the embers is treasure.
clone -496 15 2000 -496 15 2000 -472 114 1971 replace
clone -526 12 1942 -526 12 1942 -471 114 1971 replace
clone -503 31 1975 -503 31 1975 -470 114 1971 replace

# ember
clone -519 35 2002 -519 35 2002 -476 114 1974 replace
execute if entity @s[tag=debug] run clone -519 35 2002 -519 35 2002 -476 109 1967 replace
execute if entity @s[tag=debug] run clone -521 35 1981 -521 35 1981 -475 109 1967 replace
execute if entity @s[tag=debug] run clone -498 51 1980 -498 51 1980 -474 109 1967 replace
execute if entity @s[tag=debug] run clone -484 53 1988 -484 53 1988 -473 109 1967 replace
execute if entity @s[tag=debug] run clone -512 51 1962 -512 51 1962 -472 109 1967 replace
execute if entity @s[tag=debug] run clone -527 51 1974 -527 51 1974 -471 109 1967 replace
execute if entity @s[tag=debug] run clone -545 51 2008 -545 51 2008 -470 109 1967 replace
execute if entity @s[tag=debug] run clone -515 46 2031 -515 46 2031 -469 109 1967 replace
execute if entity @s[tag=debug] run clone -560 47 1942 -560 47 1942 -468 109 1967 replace
execute if entity @s[tag=debug] run clone -537 45 1948 -537 45 1948 -467 109 1967 replace
execute if entity @s[tag=debug] run clone -490 50 2016 -490 50 2016 -466 109 1967 replace
execute if entity @s[tag=debug] run clone -533 44 2024 -533 44 2024 -465 109 1967 replace
execute if entity @s[tag=debug] run clone -588 52 1952 -588 52 1952 -464 109 1967 replace
execute if entity @s[tag=debug] run clone -589 46 1978 -589 46 1978 -463 109 1967 replace
execute if entity @s[tag=debug] run clone -619 43 2026 -619 43 2026 -476 109 1968 replace
execute if entity @s[tag=debug] run clone -606 43 2023 -606 43 2023 -475 109 1968 replace
execute if entity @s[tag=debug] run clone -583 45 2013 -583 45 2013 -474 109 1968 replace
execute if entity @s[tag=debug] run clone -490 50 2016 -490 50 2016 -473 109 1968 replace
execute if entity @s[tag=debug] run clone -515 46 2031 -515 46 2031 -472 109 1968 replace
execute if entity @s[tag=debug] run clone -558 46 2022 -558 46 2022 -471 109 1968 replace
execute if entity @s[tag=debug] run clone -554 51 2008 -554 51 2008 -470 109 1968 replace
execute if entity @s[tag=debug] run clone -518 53 2011 -518 53 2011 -469 109 1968 replace
execute if entity @s[tag=debug] run clone -558 45 1976 -558 45 1976 -468 109 1968 replace
execute if entity @s[tag=debug] run clone -565 36 1999 -565 36 1999 -467 109 1968 replace
execute if entity @s[tag=debug] run clone -573 36 1998 -573 36 1998 -466 109 1968 replace
execute if entity @s[tag=debug] run clone -485 31 1962 -485 31 1962 -465 109 1968 replace
execute if entity @s[tag=debug] run clone -478 19 2009 -478 19 2009 -464 109 1968 replace
execute if entity @s[tag=debug] run clone -509 14 2033 -509 14 2033 -463 109 1968 replace
execute if entity @s[tag=debug] run clone -501 16 1972 -501 16 1972 -476 109 1969 replace
execute if entity @s[tag=debug] run clone -589 11 2032 -589 11 2032 -475 109 1969 replace
execute if entity @s[tag=debug] run clone -598 11 1989 -598 11 1989 -474 109 1969 replace
execute if entity @s[tag=debug] run clone -573 11 2007 -573 11 2007 -473 109 1969 replace
execute if entity @s[tag=debug] run clone -553 10 3037 -553 10 3037 -472 109 1969 replace
execute if entity @s[tag=debug] run clone -508 9 1951 -508 9 1951 -471 109 1969 replace
execute if entity @s[tag=debug] run clone -582 9 1955 -582 9 1955 -470 109 1969 replace
execute if entity @s[tag=debug] run clone -569 8 1964 -569 8 1964 -469 109 1969 replace
execute if entity @s[tag=debug] run clone -599 12 2009 -599 12 2009 -468 109 1969 replace
execute if entity @s[tag=debug] run clone -512 11 1998 -512 11 1998 -467 109 1969 replace
execute if entity @s[tag=debug] run clone -531 16 1989 -531 16 1989 -466 109 1969 replace
execute if entity @s[tag=debug] run clone -548 11 1976 -548 11 1976 -465 109 1969 replace
execute if entity @s[tag=debug] run clone -530 8 2015 -530 8 2015 -464 109 1969 replace
execute if entity @s[tag=debug] run clone -528 12 2032 -528 12 2032 -463 109 1969 replace
execute if entity @s[tag=debug] run clone -509 14 2033 -509 14 2033 -476 109 1970 replace
execute if entity @s[tag=debug] run clone -526 12 1941 -526 12 1941 -475 109 1970 replace
execute if entity @s[tag=debug] run clone -644 1 1921 -644 1 1921 -474 109 1970 replace
execute if entity @s[tag=debug] run clone -652 1 1892 -652 1 1892 -473 109 1970 replace
execute if entity @s[tag=debug] run clone -586 1 1888 -586 1 1888 -472 109 1970 replace
execute if entity @s[tag=debug] run clone -606 1 1921 -606 1 1921 -471 109 1970 replace
execute if entity @s[tag=debug] run clone -628 1 1921 -628 1 1921 -470 109 1970 replace
execute if entity @s[tag=debug] run clone -654 -9 1892 -654 -9 1892 -469 109 1970 replace
execute if entity @s[tag=debug] run clone -585 -9 1920 -585 -9 1920 -468 109 1970 replace
execute if entity @s[tag=debug] run clone -623 -9 1924 -623 -9 1924 -467 109 1970 replace
execute if entity @s[tag=debug] run clone -602 -9 1885 -602 -9 1885 -466 109 1970 replace
execute if entity @s[tag=debug] run clone -584 -17 1927 -584 -17 1927 -465 109 1970 replace
execute if entity @s[tag=debug] run clone -640 -19 1889 -640 -19 1889 -464 109 1970 replace
execute if entity @s[tag=debug] run clone -642 -19 1921 -642 -19 1921 -463 109 1970 replace
execute if entity @s[tag=debug] run clone -609 -19 1919 -609 -19 1919 -476 109 1971 replace
execute if entity @s[tag=debug] run clone -579 -37 1835 -579 -37 1835 -475 109 1971 replace
execute if entity @s[tag=debug] run clone -489 -11 2007 -489 -11 2007 -474 109 1971 replace
execute if entity @s[tag=debug] run clone -496 15 1999 -496 15 1999 -473 109 1971 replace
execute if entity @s[tag=debug] run clone -526 12 1941 -526 12 1941 -472 109 1971 replace
execute if entity @s[tag=debug] run clone -502 31 1975 -502 31 1975 -471 109 1971 replace

# crown shop
clone -496 104 1972 -496 104 1972 -476 114 1976 replace
clone -497 104 1972 -497 104 1972 -475 114 1976 replace
clone -498 104 1972 -498 104 1972 -474 114 1976 replace
clone -499 104 1972 -499 104 1972 -473 114 1976 replace
clone -500 104 1972 -500 104 1972 -472 114 1976 replace
clone -501 104 1972 -501 104 1972 -471 114 1976 replace
clone -502 104 1972 -502 104 1972 -470 114 1976 replace
clone -503 104 1972 -503 104 1972 -469 114 1976 replace
clone -504 104 1972 -504 104 1972 -468 114 1976 replace
clone -505 104 1972 -505 104 1972 -467 114 1976 replace
clone -506 104 1972 -506 104 1972 -466 114 1976 replace
clone -507 104 1972 -507 104 1972 -465 114 1976 replace
clone -508 104 1972 -508 104 1972 -464 114 1976 replace
clone -509 104 1972 -509 104 1972 -463 114 1976 replace

# crown shop prices
clone -496 106 1975 -496 106 1975 -476 114 1977 replace
clone -497 106 1975 -497 106 1975 -475 114 1977 replace
clone -498 106 1975 -498 106 1975 -474 114 1977 replace
clone -499 106 1975 -499 106 1975 -473 114 1977 replace
clone -500 106 1975 -500 106 1975 -472 114 1977 replace
clone -501 106 1975 -501 106 1975 -471 114 1977 replace
clone -502 106 1975 -502 106 1975 -470 114 1977 replace
clone -503 106 1975 -503 106 1975 -469 114 1977 replace
clone -504 106 1975 -504 106 1975 -468 114 1977 replace
clone -505 106 1975 -505 106 1975 -467 114 1977 replace
clone -506 106 1975 -506 106 1975 -466 114 1977 replace
clone -507 106 1975 -507 106 1975 -465 114 1977 replace
clone -508 106 1975 -508 106 1975 -464 114 1977 replace
clone -509 106 1975 -509 106 1975 -463 114 1977 replace

# ember shop
clone -630 -20 1992 -630 -20 1992 -476 114 1982 replace
clone -630 -20 1993 -630 -20 1993 -475 114 1982 replace
clone -630 -20 1994 -630 -20 1994 -474 114 1982 replace
clone -630 -20 1995 -630 -20 1995 -473 114 1982 replace
clone -630 -20 1996 -630 -20 1996 -472 114 1982 replace
clone -630 -20 1997 -630 -20 1997 -471 114 1982 replace
clone -630 -20 1998 -630 -20 1998 -470 114 1982 replace
clone -630 -20 1999 -630 -20 1999 -469 114 1982 replace
clone -630 -20 2000 -630 -20 2000 -468 114 1982 replace
clone -630 -20 2001 -630 -20 2001 -467 114 1982 replace
clone -630 -20 2002 -630 -20 2002 -466 114 1982 replace
clone -630 -20 2003 -630 -20 2003 -465 114 1982 replace
clone -630 -20 2004 -630 -20 2004 -464 114 1982 replace
clone -630 -20 2005 -630 -20 2005 -463 114 1982 replace
clone -630 -20 2006 -630 -20 2006 -476 114 1985 replace
clone -630 -20 2007 -630 -20 2007 -475 114 1985 replace
clone -630 -20 2008 -630 -20 2008 -474 114 1985 replace
clone -630 -20 2009 -630 -20 2009 -473 114 1985 replace
clone -630 -20 2010 -630 -20 2010 -472 114 1985 replace
clone -630 -20 2011 -630 -20 2011 -471 114 1985 replace
clone -630 -20 2012 -630 -20 2012 -470 114 1985 replace
clone -630 -20 2013 -630 -20 2013 -469 114 1985 replace
clone -630 -20 2014 -630 -20 2014 -468 114 1985 replace
clone -644 -20 1992 -644 -20 1992 -467 114 1985 replace
clone -644 -20 1993 -644 -20 1993 -466 114 1985 replace
clone -644 -20 1994 -644 -20 1994 -465 114 1985 replace
clone -644 -20 1995 -644 -20 1995 -464 114 1985 replace
clone -644 -20 1996 -644 -20 1996 -463 114 1985 replace
clone -644 -20 1997 -644 -20 1997 -476 109 1958 replace
clone -644 -20 1998 -644 -20 1998 -475 109 1958 replace
clone -644 -20 1999 -644 -20 1999 -474 109 1958 replace
clone -644 -20 2000 -644 -20 2000 -473 109 1958 replace
clone -644 -20 2001 -644 -20 2001 -472 109 1958 replace
clone -644 -20 2002 -644 -20 2002 -471 109 1958 replace
clone -644 -20 2003 -644 -20 2003 -470 109 1958 replace
clone -644 -20 2004 -644 -20 2004 -469 109 1958 replace
clone -644 -20 2005 -644 -20 2005 -468 109 1958 replace
clone -644 -20 2006 -644 -20 2006 -467 109 1958 replace
clone -644 -20 2007 -644 -20 2007 -466 109 1958 replace
clone -644 -20 2008 -644 -20 2008 -465 109 1958 replace
clone -644 -20 2009 -644 -20 2009 -464 109 1958 replace
clone -644 -20 2010 -644 -20 2010 -463 109 1958 replace
clone -644 -20 2011 -644 -20 2011 -476 109 1961 replace
clone -644 -20 2012 -644 -20 2012 -475 109 1961 replace
clone -644 -20 2013 -644 -20 2013 -474 109 1961 replace
clone -644 -20 2014 -644 -20 2014 -473 109 1961 replace

# ember shop prices
clone -632 -18 1992 -632 -18 1992 -476 114 1983 replace
clone -632 -18 1993 -632 -18 1993 -475 114 1983 replace
clone -632 -18 1994 -632 -18 1994 -474 114 1983 replace
clone -632 -18 1995 -632 -18 1995 -473 114 1983 replace
clone -632 -18 1996 -632 -18 1996 -472 114 1983 replace
clone -632 -18 1997 -632 -18 1997 -471 114 1983 replace
clone -632 -18 1998 -632 -18 1998 -470 114 1983 replace
clone -632 -18 1999 -632 -18 1999 -469 114 1983 replace
clone -632 -18 2000 -632 -18 2000 -468 114 1983 replace
clone -632 -18 2001 -632 -18 2001 -467 114 1983 replace
clone -632 -18 2002 -632 -18 2002 -466 114 1983 replace
clone -632 -18 2003 -632 -18 2003 -465 114 1983 replace
clone -632 -18 2004 -632 -18 2004 -464 114 1983 replace
clone -632 -18 2005 -632 -18 2005 -463 114 1983 replace
clone -632 -18 2006 -632 -18 2006 -476 114 1986 replace
clone -632 -18 2007 -632 -18 2007 -475 114 1986 replace
clone -632 -18 2008 -632 -18 2008 -474 114 1986 replace
clone -632 -18 2009 -632 -18 2009 -473 114 1986 replace
clone -632 -18 2010 -632 -18 2010 -472 114 1986 replace
clone -632 -18 2011 -632 -18 2011 -471 114 1986 replace
clone -632 -18 2012 -632 -18 2012 -470 114 1986 replace
clone -632 -18 2013 -632 -18 2013 -469 114 1986 replace
clone -632 -18 2014 -632 -18 2014 -468 114 1986 replace
clone -642 -18 1992 -642 -18 1992 -467 114 1986 replace
clone -642 -18 1993 -642 -18 1993 -466 114 1986 replace
clone -642 -18 1994 -642 -18 1994 -465 114 1986 replace
clone -642 -18 1995 -642 -18 1995 -464 114 1986 replace
clone -642 -18 1996 -642 -18 1996 -463 114 1986 replace
clone -642 -18 1997 -642 -18 1997 -476 109 1959 replace
clone -642 -18 1998 -642 -18 1998 -475 109 1959 replace
clone -642 -18 1999 -642 -18 1999 -474 109 1959 replace
clone -642 -18 2000 -642 -18 2000 -473 109 1959 replace
clone -642 -18 2001 -642 -18 2001 -472 109 1959 replace
clone -642 -18 2002 -642 -18 2002 -471 109 1959 replace
clone -642 -18 2003 -642 -18 2003 -470 109 1959 replace
clone -642 -18 2004 -642 -18 2004 -469 109 1959 replace
clone -642 -18 2005 -642 -18 2005 -468 109 1959 replace
clone -642 -18 2006 -642 -18 2006 -467 109 1959 replace
clone -642 -18 2007 -642 -18 2007 -466 109 1959 replace
clone -642 -18 2008 -642 -18 2008 -465 109 1959 replace
clone -642 -18 2009 -642 -18 2009 -464 109 1959 replace
clone -642 -18 2010 -642 -18 2010 -463 109 1959 replace
clone -642 -18 2011 -642 -18 2011 -476 109 1962 replace
clone -642 -18 2012 -642 -18 2012 -475 109 1962 replace
clone -642 -18 2013 -642 -18 2013 -474 109 1962 replace
clone -642 -18 2014 -642 -18 2014 -473 109 1962 replace

# pirate's booty
# note: we moved the pirate's booty dropper from the original release
execute if block -576 35 1985 dropper run clone -576 35 1985 -576 35 1985 -476 109 1986 replace
execute if block -574 39 1985 dropper run clone -574 39 1985 -574 39 1985 -476 109 1986 replace

# trick or treats
clone -523 12 2042 -523 12 2042 -475 109 1986 replace

# rusty
clone -518 2 2007 -518 2 2007 -474 109 1986 replace

# pirate locked cave (swimming maze)
clone -578 15 1970 -578 15 1970 -464 109 1986
clone -578 15 1968 -578 15 1968 -463 109 1986
