execute at @s run playsound minecraft:ui.toast.in master @s ~ ~ ~ 1 0.75
tellraw @s ["",{"text":"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n","color":"gold"}]
# If they have the tag
execute if entity @s[tag=do2.tags.gui.enabled] run tellraw @s [""," ",{"text":"Vanilla Compatability ","italic":true,"bold":true},{"text":"GUI map","color":"dark_gray","italic":true,"bold":true},{"text":" ","bold":true,"color":"white","italic":true},{"text":"Feature: ","italic":true,"bold":true},{"text":"[ENABLED]","color":"green","bold":true}]
# Otherwise:
execute unless entity @s[tag=do2.tags.gui.enabled] run tellraw @s ["",{"text":"Vanilla Compatability ","italic":true,"bold":true},{"text":"GUI map","color":"dark_gray","italic":true,"bold":true},{"text":" ","bold":true,"color":"white","italic":true},{"text":"Feature: ","italic":true,"bold":true},{"text":"[DISABLED]","color":"red","bold":true}]
#
tellraw @s ["\nYou may enable or disable the ability to view the map as a special GUI display using command blocks.\n"]
tellraw @s ["",{"clickEvent":{"action":"run_command","value":"/trigger do2.trigger.vanilla set 100"},"translate":"do2.buttons.enable","fallback":"%s","with":[{"text":"[ENABLE]","color":"green"}]}," ",{"clickEvent":{"action":"run_command","value":"/trigger do2.trigger.vanilla set 101"},"translate":"do2.buttons.darker_disable","fallback":"%s","with":[{"text":"[DISABLE]","color":"dark_red"}]}]
tellraw @s ["\n",{"text":"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-","color":"gold"}]
