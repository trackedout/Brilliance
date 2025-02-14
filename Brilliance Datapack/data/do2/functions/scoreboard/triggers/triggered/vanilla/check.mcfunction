# vanilla compatability section,
# This will allow users to customize their vanilla compatability settings

# Config Menus
execute if score @s do2.trigger.vanilla matches 10 run function do2:vanilla_compatability/audio/interface/config_menu
execute if score @s do2.trigger.vanilla matches 20 run function do2:vanilla_compatability/gui/interface/config_menu
# Audio
execute if score @s do2.trigger.vanilla matches 30 run function do2:vanilla_compatability/audio/interface/disable
execute if score @s do2.trigger.vanilla matches 31 run function do2:vanilla_compatability/audio/interface/enable
# GUI
execute if score @s do2.trigger.vanilla matches 100 run function do2:vanilla_compatability/gui/interface/enable
execute if score @s do2.trigger.vanilla matches 101 run function do2:vanilla_compatability/gui/interface/disable
execute if score @s do2.trigger.vanilla matches 111 run function do2:vanilla_compatability/gui/interface/config_menu
execute if score @s do2.trigger.vanilla matches 112 run function do2:vanilla_compatability/gui/interface/disable
execute if score @s do2.trigger.vanilla matches 121 run function do2:vanilla_compatability/gui/interface/enable_scale1
execute if score @s do2.trigger.vanilla matches 122 run function do2:vanilla_compatability/gui/interface/enable_scale2
execute if score @s do2.trigger.vanilla matches 123 run function do2:vanilla_compatability/gui/interface/enable_scale3
execute if score @s do2.trigger.vanilla matches 124 run function do2:vanilla_compatability/gui/interface/enable_scale4


# If it's none of the above checks, show display menu.
execute unless score @s do2.trigger.vanilla matches 10 unless score @s do2.trigger.vanilla matches 20 unless score @s do2.trigger.vanilla matches 30..31 unless score @s do2.trigger.vanilla matches 100..101 unless score @s do2.trigger.vanilla matches 111..112 unless score @s do2.trigger.vanilla matches 121..124 run function do2:scoreboard/triggers/triggered/vanilla/display_menu

# Reset vanilla trigger
scoreboard players set @s do2.trigger.vanilla 0
scoreboard players enable @s do2.trigger.vanilla
