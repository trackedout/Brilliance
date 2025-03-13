execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.2
tellraw @s "Cubbies Removed"
function do2:scoreboard/config/world_setup/hermit_changes/cubbies/remove_all
