# determine how many crowns we need to give them back while clearing them.
execute store result score @s do2.utility.crownsToGive run clear @s iron_nugget{untracked:1b,CustomModelData:2}

#cycle giving coins
function do2:events/picked_up/cycle/crowns

