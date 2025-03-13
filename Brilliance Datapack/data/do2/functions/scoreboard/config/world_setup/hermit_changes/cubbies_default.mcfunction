execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.2
tellraw @s "Hermit Cubbies placed"
function do2:scoreboard/config/world_setup/hermit_changes/cubbies/place_cubbies
