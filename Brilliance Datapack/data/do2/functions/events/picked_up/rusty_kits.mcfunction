# determine how many rusty_kits we need to give them back while clearing them.
execute store result score @s do2.utility.kitsToGive run clear @s iron_ingot{tracked:0b,CustomModelData:2}

#cycle giving rusty_kits
function do2:events/picked_up/cycle/rusty_kits

