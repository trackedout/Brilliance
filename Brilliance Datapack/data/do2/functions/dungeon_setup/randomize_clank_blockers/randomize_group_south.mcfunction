# executed AT the piston facing:
# East = X++
# West = X--
# South = Z++
# North = Z--

scoreboard players set $dungeon do2.utility.randomNumberRange 2
function do2:utility/random_gen/generate_random_number
fill ~ ~ ~ ~ ~ ~2 air replace
setblock ~ ~ ~ minecraft:sticky_piston[facing=south]
# 50% chance for the piston to have PULLED the wool block
execute if score $dungeon do2.utility.randomNum matches 1 run setblock ~ ~ ~1 minecraft:red_wool
# 50% chance for the piston to have PUSHED the wool block
execute unless score $dungeon do2.utility.randomNum matches 1 run setblock ~ ~ ~2 minecraft:red_wool

