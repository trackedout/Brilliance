execute unless score @s do2.trigger.playsound matches 102 run return 0

tag @s remove do2.tags.audio.enabled
tellraw @s "Disabled /playsound audio for yourself." 

