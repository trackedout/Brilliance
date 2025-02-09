# Code needed to delay this function.
execute as @a[tag=do2.audio_checking] run tag @s add do2.audio_checking2
execute as @a[tag=do2.audio_checking] run function do2:vanilla_compatability/audio/interface/detect
tag @a remove do2.audio_checking
execute if entity @a[tag=do2.audio_checking2] run return 0
tag @a remove do2.audio_checking2

# Check if they have the mod or not.
function do2:external/voice_chat/check

# If they have VoiceChat mod, do nothing.
execute unless score @s do2.utility.voiceChat matches 0 run return 0

# If they already have the tag, do nothing.
execute if entity @s[tag=do2.tags.audio.enabled] run return 0

# Else, apply the compatability feature and give them option to disable.
tag @s add do2.tags.audio.enabled
playsound minecraft:ui.toast.in master @s ~ ~ ~ 1 0.75
tellraw @s ["",{"text":"§6-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-§r\n  §r§o§lVanilla Compatability §e§o§lAudio§r §r§o§lFeature: §r§a[ENABLED]§r\n\n§rWe've noticed you do not have the VoiceChat mod installed on your client. We have automatically tagged you to receive sounds via §n§o/playsound§r §rin command blocks.\n\nYou may change this at any time by running \n§r§o§n/trigger do2.trigger.playsound§r\n§r§6-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"}]
