execute if score $dungeon do2.config.bc.snowHazard matches 1 run tellraw @s ["",{"text":"\n§f§lSnow Hazard: "},{"text":"§n§aENABLED"},{"text":" §7§o(Default: ENABLED)\n"},{"text":"§c[DISABLE]","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/balance_changes/change/disable_new_snow_hazard"}},{"text":" §a[ENABLE]","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/balance_changes/change/enable_new_snow_hazard"}},{"text":" §9[INFO]","hoverEvent":{"action":"show_text","contents":"Enables a hazard that possibly blocks the powdered snow maze passageway from\n§oTnT Depth Charge Dive§r --> §oThe Exit§r."}}]
execute if score $dungeon do2.config.bc.snowHazard matches 0 run tellraw @s ["",{"text":"\n§f§lSnow Hazard: "},{"text":"§n§cDISABLED"},{"text":" §7§o(Default: ENABLED)\n"},{"text":"§c[DISABLE]","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/balance_changes/change/disable_new_snow_hazard"}},{"text":" §a[ENABLE]","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/balance_changes/change/enable_new_snow_hazard"}},{"text":" §9[INFO]","hoverEvent":{"action":"show_text","contents":"Enables a hazard that possibly blocks the powdered snow maze passageway from\n§oTnT Depth Charge Dive§r --> §oThe Exit§r."}}]
