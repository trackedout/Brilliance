execute at @s run playsound minecraft:ui.toast.in master @s ~ ~ ~ 1 0.75
tellraw @s ["",{"text":"§6-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n"}]

# If they have the tag
execute if entity @s[tag=do2.tags.audio.enabled] run tellraw @s ["",{"text":"  §r§o§lVanilla Compatability §e§o§lAudio§r §r§o§lFeature: §r§a[ENABLED]"}]
# Otherwise:
execute unless entity @s[tag=do2.tags.audio.enabled] run tellraw @s ["",{"text":" §r§o§lVanilla Compatability §e§o§lAudio§r §r§o§lFeature: §r§c[DISABLED]"}]

#
tellraw @s ["",{"text":"\nYou may enable or disable the ability to receive §n§o/playsound§r equilavent of all Decked Out 2 sound effects.\n"}]
tellraw @s ["",{"text":"§f","clickEvent":{"action":"run_command","value":"/function do2:vanilla_compatability/audio/interface/enable"}}," ",{"text":"§f","clickEvent":{"action":"run_command","value":"/function do2:vanilla_compatability/audio/interface/disable"}}]
tellraw @s ["",{"text":"\n§6-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"}]

