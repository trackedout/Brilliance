# determine how many level_3_keys we need to give them back while clearing them.
execute store result score @s do2.utility.key_4ToGive run clear @s iron_nugget{untracked:1b,CustomModelData:209}

#cycle giving embers
function do2:events/picked_up/cycle/key_4

