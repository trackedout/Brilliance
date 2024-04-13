execute if score $dungeon do2.config.bc.staircaseEmbers matches 1 run tellraw @s ["",{"text":"\n§f§lStaircase Embers: "},{"text":"§n§aENABLED"},{"text":" §7§o(Default: DISABLED)\n"},{"text":"§c[DISABLE]","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/balance_changes/change/disable_staircase_embers"}},{"text":" §a[ENABLE]","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/balance_changes/change/enable_staircase_embers"}},{"text":" §9[INFO]","hoverEvent":{"action":"show_text","contents":"Enables the dropping of 5 frost embers at the exits of levels 4, 3, and 2 on artifact pickup."}}]
execute if score $dungeon do2.config.bc.staircaseEmbers matches 0 run tellraw @s ["",{"text":"\n§f§lStaircase Embers: "},{"text":"§n§cDISABLED"},{"text":" §7§o(Default: DISABLED)\n"},{"text":"§c[DISABLE]","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/balance_changes/change/disable_staircase_embers"}},{"text":" §a[ENABLE]","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/balance_changes/change/enable_staircase_embers"}},{"text":" §9[INFO]","hoverEvent":{"action":"show_text","contents":"Enables the dropping of 5 frost embers at the exits of levels 4, 3, and 2 on artifact pickup."}}]
