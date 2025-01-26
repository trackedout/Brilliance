# This function is being run AS the player WHEN they pick up a lodestone compass for the first time in a run.
# Make sure the above comment is true
execute unless entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestoneTracked:1b}}]}] run return 0

# Make sure we really only check once.
execute if score $dungeon do2.run.compass_lodestone_id matches 1.. run return 0

# Check for difficulty, to reduce amount of NBT checks by 4/5,
# instead of checking for all 80 compasses, check for the 16 that should be in this difficulty

# - EASY -
execute if score $dungeon do2.run.difficulty matches 1 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -560, Y:46, Z: 2033}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 1
execute if score $dungeon do2.run.difficulty matches 1 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -534, Y:44, Z: 2035}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 2
execute if score $dungeon do2.run.difficulty matches 1 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -513, Y:44, Z: 2028}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 3
execute if score $dungeon do2.run.difficulty matches 1 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -558, Y:49, Z: 2006}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 4
execute if score $dungeon do2.run.difficulty matches 1 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -595, Y:48, Z: 1967}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 5
execute if score $dungeon do2.run.difficulty matches 1 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -575, Y:53, Z: 1944}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 6
execute if score $dungeon do2.run.difficulty matches 1 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -546, Y:49, Z: 1972}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 7
execute if score $dungeon do2.run.difficulty matches 1 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -501, Y:42, Z: 2013}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 8
execute if score $dungeon do2.run.difficulty matches 1 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -490, Y:48, Z: 2022}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 9
execute if score $dungeon do2.run.difficulty matches 1 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -548, Y:36, Z: 1995}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 10
execute if score $dungeon do2.run.difficulty matches 1 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -552, Y:36, Z: 1984}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 11
execute if score $dungeon do2.run.difficulty matches 1 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -519, Y:33, Z: 1984}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 12
execute if score $dungeon do2.run.difficulty matches 1 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -522, Y:33, Z: 2000}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 13
execute if score $dungeon do2.run.difficulty matches 1 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -550, Y:43, Z: 1955}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 14
execute if score $dungeon do2.run.difficulty matches 1 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -536, Y:42, Z: 1964}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 15
execute if score $dungeon do2.run.difficulty matches 1 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -526, Y:43, Z: 1956}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 16

# - MEDIUM -
execute if score $dungeon do2.run.difficulty matches 2 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -545, Y:42, Z: 1940}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 17
execute if score $dungeon do2.run.difficulty matches 2 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -527, Y:49, Z: 1969}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 18
execute if score $dungeon do2.run.difficulty matches 2 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -515, Y:50, Z: 2006}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 19
execute if score $dungeon do2.run.difficulty matches 2 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -541, Y:49, Z: 2016}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 20
execute if score $dungeon do2.run.difficulty matches 2 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -495, Y:49, Z: 1995}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 21
execute if score $dungeon do2.run.difficulty matches 2 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -503, Y:49, Z: 1981}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 22
execute if score $dungeon do2.run.difficulty matches 2 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -511, Y:50, Z: 1956}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 23
execute if score $dungeon do2.run.difficulty matches 2 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -507, Y:49, Z: 1962}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 24
execute if score $dungeon do2.run.difficulty matches 2 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -482, Y:25, Z: 1992}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 25
execute if score $dungeon do2.run.difficulty matches 2 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -482, Y:16, Z: 2037}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 26
execute if score $dungeon do2.run.difficulty matches 2 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -454, Y:16, Z: 1979}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 27
execute if score $dungeon do2.run.difficulty matches 2 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -473, Y:14, Z: 1962}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 28
execute if score $dungeon do2.run.difficulty matches 2 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -503, Y:13, Z: 2035}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 29
execute if score $dungeon do2.run.difficulty matches 2 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -487, Y:18, Z: 2010}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 30
execute if score $dungeon do2.run.difficulty matches 2 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -520, Y:10, Z: 2027}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 31
execute if score $dungeon do2.run.difficulty matches 2 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -488, Y:13, Z: 2002}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 32

# - HARD -
execute if score $dungeon do2.run.difficulty matches 3 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -552, Y:8, Z: 2024}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 33
execute if score $dungeon do2.run.difficulty matches 3 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -537, Y:14, Z: 2005}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 34
execute if score $dungeon do2.run.difficulty matches 3 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -519, Y:10, Z: 1980}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 35
execute if score $dungeon do2.run.difficulty matches 3 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -517, Y:9, Z: 1944}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 36
execute if score $dungeon do2.run.difficulty matches 3 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -536, Y:10, Z: 1939}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 37
execute if score $dungeon do2.run.difficulty matches 3 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -571, Y:6, Z: 1966}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 38
execute if score $dungeon do2.run.difficulty matches 3 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -574, Y:7, Z: 1944}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 39
execute if score $dungeon do2.run.difficulty matches 3 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -588, Y:11, Z: 1989}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 40
execute if score $dungeon do2.run.difficulty matches 3 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -503, Y:21, Z: 1958}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 41
execute if score $dungeon do2.run.difficulty matches 3 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -547, Y:8, Z: 1969}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 42
execute if score $dungeon do2.run.difficulty matches 3 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -573, Y:11, Z: 1994}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 43
execute if score $dungeon do2.run.difficulty matches 3 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -571, Y:10, Z: 2028}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 44
execute if score $dungeon do2.run.difficulty matches 3 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -599, Y:10, Z: 2033}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 45
execute if score $dungeon do2.run.difficulty matches 3 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -575, Y:7, Z: 2014}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 46
execute if score $dungeon do2.run.difficulty matches 3 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -586, Y:-11, Z: 1917}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 47
execute if score $dungeon do2.run.difficulty matches 3 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -600, Y:-1, Z: 1890}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 48

# - DEADLY -
execute if score $dungeon do2.run.difficulty matches 4 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -623, Y:-1, Z: 1890}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 49
execute if score $dungeon do2.run.difficulty matches 4 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -633, Y:-11, Z: 1890}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 50
execute if score $dungeon do2.run.difficulty matches 4 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -651, Y:-1, Z: 1914}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 51
execute if score $dungeon do2.run.difficulty matches 4 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -604, Y:-11, Z: 1912}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 52
execute if score $dungeon do2.run.difficulty matches 4 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -627, Y:-21, Z: 1920}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 53
execute if score $dungeon do2.run.difficulty matches 4 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -601, Y:-21, Z: 1924}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 54
execute if score $dungeon do2.run.difficulty matches 4 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -613, Y:-21, Z: 1887}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 55
execute if score $dungeon do2.run.difficulty matches 4 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -589, Y:-28, Z: 1896}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 56
execute if score $dungeon do2.run.difficulty matches 4 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -582, Y:-21, Z: 1894}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 57
execute if score $dungeon do2.run.difficulty matches 4 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -578, Y:-13, Z: 1892}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 58
execute if score $dungeon do2.run.difficulty matches 4 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -596, Y:-9, Z: 1881}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 59
execute if score $dungeon do2.run.difficulty matches 4 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -623, Y:-21, Z: 1888}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 60
execute if score $dungeon do2.run.difficulty matches 4 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -646, Y:-21, Z: 1893}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 61
execute if score $dungeon do2.run.difficulty matches 4 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -657, Y:-22, Z: 1922}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 62
execute if score $dungeon do2.run.difficulty matches 4 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -637, Y:-53, Z: 1890}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 63
execute if score $dungeon do2.run.difficulty matches 4 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -622, Y:-53, Z: 1891}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 64

# - DEEPFROST -
execute if score $dungeon do2.run.difficulty matches 5 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -599, Y:-51, Z: 1911}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 65
execute if score $dungeon do2.run.difficulty matches 5 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -601, Y:-52, Z: 1888}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 66
execute if score $dungeon do2.run.difficulty matches 5 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -588, Y:-53, Z: 1899}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 67
execute if score $dungeon do2.run.difficulty matches 5 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -574, Y:-50, Z: 1908}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 68
execute if score $dungeon do2.run.difficulty matches 5 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -623, Y:-54, Z: 1858}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 69
execute if score $dungeon do2.run.difficulty matches 5 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -605, Y:-53, Z: 1863}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 70
execute if score $dungeon do2.run.difficulty matches 5 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -602, Y:-53, Z: 1851}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 71
execute if score $dungeon do2.run.difficulty matches 5 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -623, Y:-56, Z: 1844}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 72
execute if score $dungeon do2.run.difficulty matches 5 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -599, Y:-53, Z: 1844}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 73
execute if score $dungeon do2.run.difficulty matches 5 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -591, Y:-53, Z: 1868}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 74
execute if score $dungeon do2.run.difficulty matches 5 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -567, Y:-53, Z: 1884}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 75
execute if score $dungeon do2.run.difficulty matches 5 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -570, Y:-53, Z: 1878}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 76
execute if score $dungeon do2.run.difficulty matches 5 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -638, Y:-58, Z: 1842}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 77
execute if score $dungeon do2.run.difficulty matches 5 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -637, Y:-53, Z: 1877}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 78
execute if score $dungeon do2.run.difficulty matches 5 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -590, Y:-53, Z: 1866}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 79
execute if score $dungeon do2.run.difficulty matches 5 if entity @s[nbt={Inventory:[{id:"minecraft:compass",tag:{LodestonePos: {X: -570, Y:-53, Z: 1855}}}]}] run scoreboard players set $dungeon do2.run.compass_lodestone_id 80



