# determine how many level_2_keys we need to give them back while clearing them.
execute store result score @s do2.utility.key_2ToGive run clear @s iron_nugget{tracked:0b,CustomModelData:201}

#cycle giving embers
function do2:events/picked_up/cycle/key_2

