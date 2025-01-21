# If the player is a spectator, give them a different detect function.
execute if entity @s[gamemode=spectator] run function do2:vanilla_compatability/gui/interface/spectator_detect
execute if entity @s[gamemode=spectator] run return 0

# If a fake player exists (TangoCam), do nothing.
execute if entity @e[tag=do2.fakePlayer] run return 0

# Else, apply the compatability feature and give them option to disable.
tag @s add do2.tags.gui.enabled
execute if entity @s[tag=!do2.tags.gui.level1,tag=!do2.tags.gui.level2,tag=!do2.tags.gui.level3,tag=!do2.tags.gui.level4] run tag @s add do2.tags.gui.level1
playsound minecraft:ui.toast.in master @s ~ ~ ~ 1 0.75
tellraw @s ["",{"text":"§6-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n  §r§o§lVanilla Compatability §8GUI map§r §r§o§lFeature: §r§a[ENABLED]§r\n\n§rWe've noticed you do not have the VoiceChat mod installed on your client. We have automatically tagged you to receive sounds via §n§o/playsound§r §rin command blocks.\n\nYou may change this at any time by running \n§r§o§n/trigger do2.trigger.playsound§r\n§r§6-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"}]
