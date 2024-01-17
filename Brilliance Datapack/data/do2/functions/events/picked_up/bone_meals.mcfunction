# determine how many bone_meals we need to give them back while clearing them.
execute store result score @s do2.utility.bonemealsToGive run clear @s bone_meal{tracked:0b}

#cycle giving bone_meal
function do2:events/picked_up/cycle/bone_meals
