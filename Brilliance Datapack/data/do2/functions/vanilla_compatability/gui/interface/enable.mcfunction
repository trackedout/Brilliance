tag @s add do2.tags.gui.enabled
playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.7
tellraw @s ["",{"text":"§6-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n\n§r§l§aENABLED §r§oVanilla Compatability §8GUI map§r §r§oFeature§r\n\nWould you like to customize the size of the GUI's display?\n\n"}]

# Todo: add underlines to the CURRENTlY scaled option
#[tag=do2.tags.gui.level1]
execute if entity @s run tellraw @s ["",{"text":"§3[ SCALE x0.5 ]","clickEvent":{"action":"run_command","value":"/function do2:vanilla_compatability/gui/interface/scale4"}}," ",{"text":"§3[ SCALE x1 ]","clickEvent":{"action":"run_command","value":"/function do2:vanilla_compatability/gui/interface/scale3"}}," ",{"text":"§3[ SCALE x2 ]","clickEvent":{"action":"run_command","value":"/function do2:vanilla_compatability/gui/interface/scale2"}}," ",{"text":"§3[ SCALE x4 ]","clickEvent":{"action":"run_command","value":"/function do2:vanilla_compatability/gui/interface/scale1"}}]

tellraw @s ["",{"text":"\n§6-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"}]

