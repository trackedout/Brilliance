# determine how many bombs we need to give them back while clearing them.
execute store result score @s do2.utility.bombsToGive run clear @s iron_nugget{tracked:0b,CustomModelData:208}

#cycle giving bombs
function do2:events/picked_up/cycle/bombs
