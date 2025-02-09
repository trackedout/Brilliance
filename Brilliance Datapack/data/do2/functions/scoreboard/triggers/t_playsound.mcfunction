execute if score @s do2.trigger.playsound matches 103 run function do2:vanilla_compatability/audio/interface/enable
execute if score @s do2.trigger.playsound matches 102 run function do2:vanilla_compatability/audio/interface/disable
execute if score @s do2.trigger.playsound matches 101 run function do2:vanilla_compatability/audio/interface/config_menu
execute unless score @s do2.trigger.playsound matches 0 unless score @s do2.trigger.playsound matches 101..103 run function do2:vanilla_compatability/audio/interface/config_menu

scoreboard players set @s do2.trigger.playsound 0
scoreboard players enable @s do2.trigger.playsound
