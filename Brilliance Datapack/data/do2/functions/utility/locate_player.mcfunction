# Multiple Locations are split into several bounding boxes,
# And multiple locations have bounding boxes overlapping each other.
# To decide which bounding box decides the player's location they have a priority.
# Once a location has been decided no other box may set the player's location.
# Locations (sorted by priority):
# 0 - Unknown
# 1 - Starting Platform
# 2 - Exit
# 3 - Artifact Submission
# 4 - Ember Shop
# 5 - Ravager Gauntlet
# 6 - Stairs (L1 & L2)
# 7 - Stairs (L2 & L3)
# 8 - Passage (L4 -> L3)
# 9 - Level 1
# 10 - Level 2
# 11 - Level 3
# 12 - Level 4

scoreboard players operation @s do2.utility.oldDungeonLocation = @s do2.utility.dungeonLocation
scoreboard players set @s do2.utility.dungeonLocation 0
data modify storage do2:utility locationNames set value ["Unknown", "Starting Platform", "Exit", "Artifact Submission", "Ember Shop", "Ravager Gauntlet", "Stairs (L1 & L2)", "Stairs (L2 & L3)", "Passage (L4 -> L3)", "Level 1", "Level 2", "Level 3", "Level 4"]


# Starting Platform
execute if score @s do2.utility.dungeonLocation matches 0 if entity @s[x=-629.5,dx=13,y=47.5,dy=6,z=1938.5,dz=18] run scoreboard players set @s do2.utility.dungeonLocation 1
execute if score @s do2.utility.dungeonLocation matches 0 if entity @s[x=-627.5,dx=9,y=47.5,dy=6,z=1956.5,dz=9] run scoreboard players set @s do2.utility.dungeonLocation 1

# Exit
execute if score @s do2.utility.dungeonLocation matches 0 if entity @s[x=-638.5,dx=11,y=-5.5,dy=57,z=1967.5,dz=8] run scoreboard players set @s do2.utility.dungeonLocation 2

# Artifact Submission
execute if score @s do2.utility.dungeonLocation matches 0 if entity @s[x=-644.5,dx=13,y=-18.5,dy=14,z=1969.5,dz=18] run scoreboard players set @s do2.utility.dungeonLocation 3

# Ember Shop
execute if score @s do2.utility.dungeonLocation matches 0 if entity @s[x=-646.5,dx=19,y=-12.5,dy=7,z=1987.5,dz=33] run scoreboard players set @s do2.utility.dungeonLocation 4

# Ravager Gauntlet
execute if score @s do2.utility.dungeonLocation matches 0 if entity @s[x=-643.5,dx=3,y=-40.5,dy=32,z=1985.5,dz=3] run scoreboard players set @s do2.utility.dungeonLocation 5
execute if score @s do2.utility.dungeonLocation matches 0 if entity @s[x=-645.5,dx=31,y=-50.5,dy=10,z=1981.5,dz=19] run scoreboard players set @s do2.utility.dungeonLocation 5

# Stairs (L1 & L2)
execute if score @s do2.utility.dungeonLocation matches 0 if entity @s[x=-484.5,dx=5,y=52.5,dy=7,z=1977.5,dz=8] run scoreboard players set @s do2.utility.dungeonLocation 6
execute if score @s do2.utility.dungeonLocation matches 0 if entity @s[x=-479,dx=17.5,y=38.5,dy=21,z=1958.5,dz=71] run scoreboard players set @s do2.utility.dungeonLocation 6
execute if score @s do2.utility.dungeonLocation matches 0 if entity @s[x=-461.5,dx=8,y=37.5,dy=11,z=2020.5,dz=13] run scoreboard players set @s do2.utility.dungeonLocation 6
execute if score @s do2.utility.dungeonLocation matches 0 if entity @s[x=-460.5,dx=7,y=34.5,dy=3,z=2026.5,dz=10] run scoreboard players set @s do2.utility.dungeonLocation 6
execute if score @s do2.utility.dungeonLocation matches 0 if entity @s[x=-460.5,dx=7,y=32.5,dy=2,z=2029.5,dz=9] run scoreboard players set @s do2.utility.dungeonLocation 6
execute if score @s do2.utility.dungeonLocation matches 0 if entity @s[x=-460.5,dx=11,y=24.5,dy=8,z=2032.5,dz=10] run scoreboard players set @s do2.utility.dungeonLocation 6
execute if score @s do2.utility.dungeonLocation matches 0 if entity @s[x=-465.5,dx=7,y=30.5,dy=12,z=1950.5,dz=16] run scoreboard players set @s do2.utility.dungeonLocation 6
execute if score @s do2.utility.dungeonLocation matches 0 if entity @s[x=-465.5,dx=17,y=19.5,dy=13,z=1944.5,dz=7] run scoreboard players set @s do2.utility.dungeonLocation 6
execute if score @s do2.utility.dungeonLocation matches 0 if entity @s[x=-465.5,dx=7,y=27.5,dy=3,z=1950.5,dz=5] run scoreboard players set @s do2.utility.dungeonLocation 6
execute if score @s do2.utility.dungeonLocation matches 0 if entity @s[x=-456.5,dx=5,y=19.5,dy=8,z=1951.5,dz=1] run scoreboard players set @s do2.utility.dungeonLocation 6

# Stairs (L2 & L3)
execute if score @s do2.utility.dungeonLocation matches 0 if entity @s[x=-597.5,dx=18,y=3.5,dy=16,z=1928.5,dz=18.5] run scoreboard players set @s do2.utility.dungeonLocation 7

# Passage (L4 -> L3)
execute if score @s do2.utility.dungeonLocation matches 0 if entity @s[x=-657.5,dx=6,y=-30.5,dy=48,z=1901.5,dz=6] run scoreboard players set @s do2.utility.dungeonLocation 8

# Level 1
execute if score @s do2.utility.dungeonLocation matches 0 if entity @s[x=-630.5,dx=151,y=45.5,dy=23,z=1939.5,dz=101] run scoreboard players set @s do2.utility.dungeonLocation 9
execute if score @s do2.utility.dungeonLocation matches 0 if entity @s[x=-555.5,dx=44,y=36.5,dy=9,z=1968.5,dz=41] run scoreboard players set @s do2.utility.dungeonLocation 9
execute if score @s do2.utility.dungeonLocation matches 0 if entity @s[x=-598.5,dx=24,y=33.5,dy=12,z=2021.5,dz=18] run scoreboard players set @s do2.utility.dungeonLocation 9
execute if score @s do2.utility.dungeonLocation matches 0 if entity @s[x=-587.5,dx=10,y=11.5,dy=39,z=1962.5,dz=10] run scoreboard players set @s do2.utility.dungeonLocation 9
execute if score @s do2.utility.dungeonLocation matches 0 if entity @s[x=-588.5,dx=11,y=21.5,dy=29,z=1958.5,dz=11] run scoreboard players set @s do2.utility.dungeonLocation 9
execute if score @s do2.utility.dungeonLocation matches 0 if entity @s[x=-587.5,dx=7,y=11.5,dy=10,z=1959.5,dz=3] run scoreboard players set @s do2.utility.dungeonLocation 9

# Level 2
execute if score @s do2.utility.dungeonLocation matches 0 if entity @s[x=-603.5,dx=157,y=-8.5,dy=50,z=1930.5,dz=128] run scoreboard players set @s do2.utility.dungeonLocation 10

# Level 3
execute if score @s do2.utility.dungeonLocation matches 0 if entity @s[x=-666.5,dx=91,y=-23.5,dy=40,z=1878.5,dz=52] run scoreboard players set @s do2.utility.dungeonLocation 11

# Level 4
execute if score @s do2.utility.dungeonLocation matches 0 if entity @s[x=-659.5,dx=95,y=-60.5,dy=37,z=1836.5,dz=79] run scoreboard players set @s do2.utility.dungeonLocation 12

execute if score @s do2.utility.oldDungeonLocation = @s do2.utility.dungeonLocation run return 0
# Agronet event
function do2:external/agronet/logs/player_actions/locate_player

execute unless entity @a[scores={do2.logs.player_actions=3..}] run return 0
data modify storage do2:utility playerOldLocation set value ""
data modify storage do2:utility playerNewLocation set value ""

# Remove names until do2:utility array[0] becomes the new location.
scoreboard players operation $dungeon do2.utility.arrayIndex = @s do2.utility.dungeonLocation
data modify storage do2:utility array set from storage do2:utility locationNames
function do2:utility/array_manipulation/get_from_index
data modify storage do2:utility playerNewLocation set from storage do2:utility array[0]

# Remove names until do2:utility array[0] becomes the old location.
scoreboard players operation $dungeon do2.utility.arrayIndex = @s do2.utility.oldDungeonLocation
data modify storage do2:utility array set from storage do2:utility locationNames
function do2:utility/array_manipulation/get_from_index
data modify storage do2:utility playerOldLocation set from storage do2:utility array[0]

execute as @a[scores={do2.logs.player_actions=3..}] run tellraw @s ["",{"text":"§f[§9B§r]: Player has moved from "},{"storage": "do2:utility","nbt": "playerOldLocation","color":"red"},{"text":"§r --> "},{"storage": "do2:utility","nbt": "playerNewLocation","color":"green"}]
