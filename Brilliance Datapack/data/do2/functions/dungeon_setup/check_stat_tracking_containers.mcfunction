# For ease of checking less, I'm only checking if the LAST slot of a chest, has an item.
# Since it's redstone based, it will never fill up unless full w/o player interference
data modify storage do2:tests containerCoords set value ""

# Crowns Shop purchases.

data modify storage do2:tests description set value "Crown Shop Purchases"
data modify storage do2:tests containerCoords set value "-509 110 1974"
execute positioned -509 110 1974 run function do2:dungeon_setup/stat_tracking/check_container
data modify storage do2:tests containerCoords set value "-508 110 1974"
execute positioned -508 110 1974 run function do2:dungeon_setup/stat_tracking/check_container
data modify storage do2:tests containerCoords set value "-507 110 1974"
execute positioned -507 110 1974 run function do2:dungeon_setup/stat_tracking/check_container
data modify storage do2:tests containerCoords set value "-506 110 1974"
execute positioned -506 110 1974 run function do2:dungeon_setup/stat_tracking/check_container
data modify storage do2:tests containerCoords set value "-505 110 1974"
execute positioned -505 110 1974 run function do2:dungeon_setup/stat_tracking/check_container
data modify storage do2:tests containerCoords set value "-504 110 1974"
execute positioned -504 110 1974 run function do2:dungeon_setup/stat_tracking/check_container
data modify storage do2:tests containerCoords set value "-503 110 1974"
execute positioned -503 110 1974 run function do2:dungeon_setup/stat_tracking/check_container
data modify storage do2:tests containerCoords set value "-502 110 1974"
execute positioned -502 110 1974 run function do2:dungeon_setup/stat_tracking/check_container
data modify storage do2:tests containerCoords set value "-501 110 1974"
execute positioned -501 110 1974 run function do2:dungeon_setup/stat_tracking/check_container
data modify storage do2:tests containerCoords set value "-500 110 1974"
execute positioned -500 110 1974 run function do2:dungeon_setup/stat_tracking/check_container
data modify storage do2:tests containerCoords set value "-499 110 1974"
execute positioned -499 110 1974 run function do2:dungeon_setup/stat_tracking/check_container
data modify storage do2:tests containerCoords set value "-498 110 1974"
execute positioned -498 110 1974 run function do2:dungeon_setup/stat_tracking/check_container
data modify storage do2:tests containerCoords set value "-497 110 1974"
execute positioned -497 110 1974 run function do2:dungeon_setup/stat_tracking/check_container
data modify storage do2:tests containerCoords set value "-496 110 1974"
execute positioned -496 110 1974 run function do2:dungeon_setup/stat_tracking/check_container



# Run count
data modify storage do2:tests description set value "Total Runs"
data modify storage do2:tests containerCoords set value "-509 110 1974"
execute positioned -509 110 1974 run function do2:dungeon_setup/stat_tracking/check_container

# Shards inserted
data modify storage do2:tests description set value "Total Shards Used"
data modify storage do2:tests containerCoords set value "-539 110 1980"
execute positioned -539 110 1980 run function do2:dungeon_setup/stat_tracking/check_container

# Difficulty hoppers. Easy -> Deepfrost
data modify storage do2:tests description set value "Difficulties Played"
data modify storage do2:tests containerCoords set value "-554 107 1979"
execute positioned -554 107 1979 run function do2:dungeon_setup/stat_tracking/check_container
data modify storage do2:tests containerCoords set value "-554 107 1977"
execute positioned -554 107 1977 run function do2:dungeon_setup/stat_tracking/check_container
data modify storage do2:tests containerCoords set value "-554 107 1975"
execute positioned -554 107 1975 run function do2:dungeon_setup/stat_tracking/check_container
data modify storage do2:tests containerCoords set value "-554 107 1973"
execute positioned -554 107 1973 run function do2:dungeon_setup/stat_tracking/check_container
data modify storage do2:tests containerCoords set value "-554 107 1971"
execute positioned -554 107 1971 run function do2:dungeon_setup/stat_tracking/check_container

# Difficulty hopper. Non-nugget Item
data modify storage do2:tests description set value "Difficulties Error Items"
data modify storage do2:tests containerCoords set value "-554 107 1969"
execute positioned -554 107 1969 run function do2:dungeon_setup/stat_tracking/check_container

# Pork Chop Power (count of played)
data modify storage do2:tests description set value "Pork Chop Power cards played"
data modify storage do2:tests containerCoords set value "-547 39 1912"
execute positioned -547 39 1912 run function do2:dungeon_setup/stat_tracking/check_container
# Tactical Approach (count of played)
data modify storage do2:tests description set value "Tactical Approach cards played"
data modify storage do2:tests containerCoords set value "-556 39 1912"
execute positioned -556 39 1912 run function do2:dungeon_setup/stat_tracking/check_container
# Dungeon Lackey (count of played)
data modify storage do2:tests description set value "Dungeon Lackey cards played"
data modify storage do2:tests containerCoords set value "-557 39 1912"
execute positioned -557 39 1912 run function do2:dungeon_setup/stat_tracking/check_container
# Moment of Clarity (count of played)
data modify storage do2:tests description set value "Moment of Clarity cards played"
data modify storage do2:tests containerCoords set value "-576 35 1916"
execute positioned -576 35 1916 run function do2:dungeon_setup/stat_tracking/check_container
# Pay to Win (count of played)
data modify storage do2:tests description set value "Pay to Win cards played"
data modify storage do2:tests containerCoords set value "-584 35 1916"
execute positioned -584 35 1916 run function do2:dungeon_setup/stat_tracking/check_container
# Open Ethereal bay - 3rd Lvl (count of played)
data modify storage do2:tests description set value "Pay to Win cards played"
data modify storage do2:tests containerCoords set value "-584 35 1916"
execute positioned -584 35 1916 run function do2:dungeon_setup/stat_tracking/check_container
data merge block -592 35 1916 {Items:[]}
# Open Ethereal bay - 3rd Lvl (count of played)
data merge block -600 35 1916 {Items:[]}
# Open Ethereal bay - 3rd Lvl (count of played)
data merge block -608 35 1916 {Items:[]}
# Open Ethereal bay - 3rd Lvl (count of played)
data merge block -616 35 1916 {Items:[]}

# Keys used L2 -> L4
data merge block -490 52 1991 {Items:[]}
data merge block -490 52 1992 {Items:[]}
data merge block -592 12 1948 {Items:[]}
data merge block -591 12 1948 {Items:[]}
data merge block -638 -19 1900 {Items:[]}

# Pumpkins submitted
data merge block -521 12 2048 {Items:[]}
# Bombs submitted
data merge block -580 -52 1856 {Items:[]}
# "The Master's Key"s submitted
data merge block -604 -60 1879 {Items:[]}

# Forgotten hideout embers
data merge block -607 -59 1888 {Items:[]}

# Artifacts submitted "Hood of Aw'Yah" -> "The Master's Key"
data merge block -636 -22 1978 {Items:[]}
data merge block -636 -22 1977 {Items:[]}
data merge block -636 -22 1976 {Items:[]}
data merge block -636 -22 1975 {Items:[]}
data merge block -636 -22 1974 {Items:[]}
data merge block -636 -22 1973 {Items:[]}
data merge block -636 -22 1972 {Items:[]}
data merge block -636 -22 1971 {Items:[]}
data merge block -636 -22 1970 {Items:[]}
data merge block -636 -22 1969 {Items:[]}
data merge block -636 -22 1968 {Items:[]}
data merge block -636 -22 1967 {Items:[]}
data merge block -636 -22 1966 {Items:[]}
data merge block -636 -22 1965 {Items:[]}
data merge block -636 -22 1964 {Items:[]}
data merge block -636 -22 1963 {Items:[]}
data merge block -636 -22 1962 {Items:[]}
data merge block -636 -22 1961 {Items:[]}
data merge block -636 -22 1960 {Items:[]}
data merge block -636 -22 1959 {Items:[]}
data merge block -636 -22 1958 {Items:[]}
data merge block -636 -22 1957 {Items:[]}
data merge block -636 -22 1956 {Items:[]}
data merge block -636 -22 1955 {Items:[]}
data merge block -636 -22 1954 {Items:[]}
data merge block -636 -22 1953 {Items:[]}
data merge block -636 -22 1952 {Items:[]}
data merge block -636 -22 1951 {Items:[]}

# Non-artifacts submitted
data merge block -637 -20 1949 {Items:[]}
# Non-artifact embers
data merge block -637 -28 1984 {Items:[]}
data merge block -637 -28 1985 {Items:[]}

# Embers spent "Sneak" -> "Adrenaline Rush"
data merge block -631 -14 1992 {Items:[]}
data merge block -631 -14 1993 {Items:[]}
data merge block -631 -14 1994 {Items:[]}
data merge block -631 -14 1995 {Items:[]}
data merge block -631 -14 1996 {Items:[]}
data merge block -631 -14 1997 {Items:[]}
data merge block -631 -14 1998 {Items:[]}
data merge block -631 -14 1999 {Items:[]}
data merge block -631 -14 2000 {Items:[]}
data merge block -631 -14 2001 {Items:[]}
data merge block -631 -14 2002 {Items:[]}
data merge block -631 -14 2003 {Items:[]}
data merge block -631 -14 2004 {Items:[]}
data merge block -631 -14 2005 {Items:[]}
data merge block -631 -14 2006 {Items:[]}
data merge block -631 -14 2007 {Items:[]}
data merge block -631 -14 2008 {Items:[]}
data merge block -631 -14 2009 {Items:[]}
data merge block -631 -14 2010 {Items:[]}
data merge block -631 -14 2011 {Items:[]}
data merge block -631 -14 2012 {Items:[]}
data merge block -631 -14 2013 {Items:[]}
data merge block -631 -14 2014 {Items:[]}
# Embers spent "3 Tomes" -> "Eerie Silence"
data merge block -643 -14 1992 {Items:[]}
data merge block -643 -14 1993 {Items:[]}
data merge block -643 -14 1994 {Items:[]}
data merge block -643 -14 1995 {Items:[]}
data merge block -643 -14 1996 {Items:[]}
data merge block -643 -14 1997 {Items:[]}
data merge block -643 -14 1998 {Items:[]}
data merge block -643 -14 1999 {Items:[]}
data merge block -643 -14 2000 {Items:[]}
data merge block -643 -14 2001 {Items:[]}
data merge block -643 -14 2002 {Items:[]}
data merge block -643 -14 2003 {Items:[]}
data merge block -643 -14 2004 {Items:[]}
data merge block -643 -14 2005 {Items:[]}
data merge block -643 -14 2006 {Items:[]}
data merge block -643 -14 2007 {Items:[]}
data merge block -643 -14 2008 {Items:[]}
data merge block -643 -14 2009 {Items:[]}
data merge block -643 -14 2010 {Items:[]}
data merge block -643 -14 2011 {Items:[]}
data merge block -643 -14 2012 {Items:[]}
data merge block -643 -14 2013 {Items:[]}
data merge block -643 -14 2014 {Items:[]}

# Crowns earned
data merge block -641 -16 1988 {Items:[]}
data merge block -642 -16 1988 {Items:[]}
data merge block -643 -16 1988 {Items:[]}
data merge block -643 -15 1988 {Items:[]}
# Coins earned
data merge block -650 -21 1987 {Items:[]}
data merge block -649 -21 1987 {Items:[]}
data merge block -648 -21 1987 {Items:[]}
data merge block -648 -20 1987 {Items:[]}
data merge block -649 -20 1987 {Items:[]}
data merge block -650 -20 1987 {Items:[]}
data merge block -650 -19 1987 {Items:[]}
data merge block -649 -19 1987 {Items:[]}
data merge block -648 -19 1987 {Items:[]}
data merge block -648 -18 1987 {Items:[]}
data merge block -649 -18 1987 {Items:[]}
data merge block -648 -17 1987 {Items:[]}
data merge block -648 -17 1988 {Items:[]}
data merge block -647 -17 1988 {Items:[]}
data merge block -646 -17 1988 {Items:[]}
data merge block -646 -16 1988 {Items:[]}
# Coins earned death room (TO-DO2 Addition)
data merge block -641 -53 2009 {Items:[]}
data merge block -642 -53 2009 {Items:[]}
data merge block -642 -53 2008 {Items:[{Slot:0b,id:"minecraft:iron_nugget",tag:{tracked:1b,display:{Name:'{"text":"❄☠ Decked Out Coin ☠❄"}'},CustomModelData:1},Count:1b}]}
# Non-coins/crowns submitted
data merge block -645 -13 1987 {Items:[]}

# Games lost
data merge block -547 116 1976 {Items:[]}

# Players' items from death room
data merge block -641 -55 2018 {Items:[]}
data merge block -641 -55 2017 {Items:[]}
data merge block -641 -55 2016 {Items:[]}
data merge block -641 -54 2017 {Items:[]}
data merge block -641 -54 2016 {Items:[]}
data merge block -641 -54 2015 {Items:[]}
data merge block -641 -53 2016 {Items:[]}
data merge block -641 -53 2015 {Items:[]}
data merge block -641 -53 2014 {Items:[]}
data merge block -641 -52 2015 {Items:[]}
data merge block -641 -52 2014 {Items:[]}
data merge block -641 -52 2013 {Items:[]}
data merge block -641 -51 2013 {Items:[]}
data merge block -642 -55 2018 {Items:[]}
data merge block -642 -55 2017 {Items:[]}
data merge block -642 -55 2016 {Items:[]}
data merge block -642 -54 2017 {Items:[]}
data merge block -642 -54 2016 {Items:[]}
data merge block -642 -54 2015 {Items:[]}
data merge block -642 -53 2016 {Items:[]}
data merge block -642 -53 2015 {Items:[]}
data merge block -642 -53 2014 {Items:[]}
data merge block -642 -52 2015 {Items:[]}
data merge block -642 -52 2014 {Items:[]}
data merge block -642 -52 2013 {Items:[]}
data merge block -642 -51 2013 {Items:[]}
data merge block -642 -51 2012 {Items:[]}
data merge block -642 -51 2011 {Items:[]}
# Permanent cards played (TO-DO2 Addition)
data merge block -544 36 1914 {Items:[]}
data merge block -545 36 1914 {Items:[]}
data merge block -546 36 1914 {Items:[]}
data merge block -547 36 1914 {Items:[]}
data merge block -548 36 1914 {Items:[]}
data merge block -549 36 1914 {Items:[]}
data merge block -550 36 1914 {Items:[]}
data merge block -551 36 1914 {Items:[]}
data merge block -552 36 1914 {Items:[]}
data merge block -553 36 1914 {Items:[]}
data merge block -554 36 1914 {Items:[]}
data merge block -555 36 1914 {Items:[]}
data merge block -556 36 1914 {Items:[]}
data merge block -557 36 1914 {Items:[]}
data merge block -558 36 1914 {Items:[]}

# Non-permanent cards played (TO-DO2 Addition)
data merge block -570 26 1924 {Items:[]}
data merge block -570 26 1923 {Items:[]}
data merge block -570 27 1923 {Items:[]}
data merge block -570 28 1923 {Items:[]}
data merge block -571 26 1924 {Items:[]}
data merge block -571 26 1923 {Items:[]}
data merge block -571 27 1923 {Items:[]}
data merge block -571 28 1923 {Items:[]}
data merge block -572 26 1924 {Items:[]}
data merge block -572 26 1923 {Items:[]}
data merge block -572 27 1923 {Items:[]}
data merge block -572 28 1923 {Items:[]}
data merge block -573 28 1923 {Items:[]}
data merge block -574 26 1924 {Items:[]}
data merge block -574 26 1923 {Items:[]}
data merge block -574 27 1923 {Items:[]}
data merge block -574 28 1923 {Items:[]}
data merge block -575 28 1923 {Items:[]}
data merge block -576 26 1924 {Items:[]}
data merge block -576 26 1923 {Items:[]}
data merge block -576 27 1923 {Items:[]}
data merge block -576 28 1923 {Items:[]}
data merge block -577 28 1923 {Items:[]}
data merge block -578 28 1923 {Items:[]}
data merge block -579 28 1923 {Items:[]}
data merge block -580 28 1923 {Items:[]}
data merge block -581 28 1923 {Items:[]}
data merge block -582 28 1923 {Items:[]}
data merge block -583 28 1923 {Items:[]}
data merge block -584 28 1923 {Items:[]}
data merge block -585 28 1923 {Items:[]}
data merge block -586 28 1923 {Items:[]}
data merge block -587 28 1923 {Items:[]}
data merge block -588 28 1923 {Items:[]}
data merge block -589 28 1923 {Items:[]}
data merge block -590 28 1923 {Items:[]}
data merge block -591 28 1923 {Items:[]}
data merge block -592 28 1923 {Items:[]}
data merge block -593 28 1923 {Items:[]}
data merge block -594 28 1923 {Items:[]}
data merge block -595 28 1923 {Items:[]}
data merge block -596 28 1923 {Items:[]}
data merge block -597 28 1923 {Items:[]}
data merge block -598 28 1923 {Items:[]}
data merge block -599 28 1923 {Items:[]}
data merge block -600 28 1923 {Items:[]}
data merge block -601 24 1924 {Items:[]}
data merge block -601 24 1923 {Items:[]}
data merge block -601 25 1923 {Items:[]}
data merge block -601 26 1924 {Items:[]}
data merge block -601 26 1923 {Items:[]}
data merge block -601 27 1923 {Items:[]}
data merge block -601 28 1923 {Items:[]}
data merge block -602 28 1923 {Items:[]}
data merge block -603 28 1923 {Items:[]}
data merge block -604 28 1923 {Items:[]}
data merge block -605 28 1923 {Items:[]}
data merge block -606 28 1923 {Items:[]}
data merge block -607 28 1923 {Items:[]}
data merge block -608 28 1923 {Items:[]}
data merge block -609 28 1923 {Items:[]}
data merge block -610 28 1923 {Items:[]}
data merge block -611 28 1923 {Items:[]}
data merge block -612 28 1923 {Items:[]}
data merge block -613 28 1923 {Items:[]}
data merge block -614 28 1923 {Items:[]}
data merge block -615 28 1923 {Items:[]}
data merge block -616 28 1923 {Items:[]}
data merge block -617 28 1923 {Items:[]}

# Non-card items played (TO-DO2 Addition)
data merge block -622 37 1915 {Items:[]}

# Cleanup
data remove storage do2:tests containerCoords
