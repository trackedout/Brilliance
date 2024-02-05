execute unless score @s do2.trigger.playsound matches 101 run return 0

execute if entity @s[tag=do2.tags.audio.enabled] run tellraw @s [ " * /playsound Audio: ", { "color": "green", "text": "[Enabled]", "clickEvent": {"action": "run_command", "value": "/trigger do2.trigger.playsound set 102"}, "hoverEvent": {"action": "show_text", "contents": "Click to disable /playsound audio for yourself."} } ]
execute if entity @s[tag=do2.tags.audio.enabled] run return 0
tellraw @s [ " * /playsound Audio: ", { "color": "red", "text": "[Disabled]", "clickEvent": {"action": "run_command", "value": "/trigger do2.trigger.playsound set 103"}, "hoverEvent": {"action": "show_text", "contents": "Click to enable /playsound audio for yourself."} } ]
