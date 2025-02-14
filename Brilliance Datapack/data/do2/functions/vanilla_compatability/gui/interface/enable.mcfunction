tag @s add do2.tags.gui.enabled
playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.7
tellraw @s ["",{"text":"§6-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n\n§r§l§aENABLED §r§oVanilla Compatability §8GUI map§r §r§oFeature§r\n\nWould you like to customize the size of the GUI's display?\n\n"}]

# They need a map in inventory for it to work.

# Todo: add underlines to the CURRENTlY scaled option, would require re-sending the text. Prob should make a separate menu display.
execute if entity @s run tellraw @s ["",{"text":"§3[ SCALE x1 ]","clickEvent":{"action":"run_command","value":"/trigger do2.trigger.vanilla set 121"}}," ",{"text":"§3[ SCALE x2 ]","clickEvent":{"action":"run_command","value":"/trigger do2.trigger.vanilla set 122"}}," ",{"text":"§3[ SCALE x3 ]","clickEvent":{"action":"run_command","value":"/trigger do2.trigger.vanilla set 123"}}," ",{"text":"§3[ SCALE x4 ]","clickEvent":{"action":"run_command","value":"/trigger do2.trigger.vanilla set 124"}}]

tellraw @s ["",{"text":"\n§6-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"}]

