# determine how many embers we need to give them back while clearing them.
execute store result score @s do2.utility.embersToGive run clear @s iron_nugget{untracked:1b,CustomModelData:3}

#cycle giving embers
function do2:events/picked_up/cycle/embers

