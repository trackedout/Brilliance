execute if score $dungeon do2.config.fr.cakeGauntlet matches 0 run tellraw @s ["",{"text":"\n§f§lReset Cake in Gauntlet: "},{"text":"§n§cDISABLED"},{"text":" §7§o(Default: ENABLED)"}]
execute if score $dungeon do2.config.fr.cakeGauntlet matches 1 run tellraw @s ["",{"text":"\n§f§lReset Cake in Gauntlet: "},{"text":"§n§aENABLED"},{"text":" §7§o(Default: ENABLED)"}]
tellraw @s ["",{"text":"§f","clickEvent":{"action":"run_command","value":"/trigger do2.trigger.settings set 9"}},{"text":" §f","clickEvent":{"action":"run_command","value":"/trigger do2.trigger.settings set 10"}},{"text":" §f","hoverEvent":{"action":"show_text","contents":"§fResets the cake in the Ravager Gauntlet back to all 8 slices as if no one has eaten some."}}]

