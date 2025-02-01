function do2:scoreboard/triggers/t_playsound/add_tag
function do2:scoreboard/triggers/t_playsound/display_menu
function do2:scoreboard/triggers/t_playsound/remove_tag
execute if score @s do2.trigger.playsound matches 1 run function do2:vanilla_compatability/audio/interface/config_menu

scoreboard players set @s do2.trigger.playsound 0
scoreboard players enable @s do2.trigger.playsound
