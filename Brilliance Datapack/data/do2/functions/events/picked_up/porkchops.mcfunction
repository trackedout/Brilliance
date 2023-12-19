# determine how many porkchops we need to give them back while clearing them.
execute store result score @s do2.utility.chopsToGive run clear @s cooked_porkchop{tracked:0b}

#cycle giving coins
function do2:events/picked_up/cycle/porkchops

