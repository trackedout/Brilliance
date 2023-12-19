# determine how many berries we need to give them back while clearing them.
execute store result score @s do2.utility.berriesToGive run clear @s sweet_berries{untracked:1b}

#cycle giving berries
function do2:events/picked_up/cycle/sweet_berries

