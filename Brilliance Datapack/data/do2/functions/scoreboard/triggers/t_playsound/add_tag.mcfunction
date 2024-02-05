execute unless score @s do2.trigger.playsound matches 103 run return 0

tag @s add do2.tags.audio.enabled
tellraw @s "Enabled /playsound audio for yourself." 

