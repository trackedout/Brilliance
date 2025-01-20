# - Make sure we don't have duplicates -
# One Eyed Willie
kill @e[type=minecraft:drowned]
# Davey Bones
execute positioned -575.00 14.52 1984.51 run kill @e[type=minecart,distance=..2]
kill @e[type=minecraft:stray]
# Evokers
execute as @e[type=minecraft:evoker] at @s run kill @e[type=minecart,distance=..2]
kill @e[type=minecraft:evoker]

schedule function do2:dungeon_setup/legacy/summon/summon_other_killers 1t append
