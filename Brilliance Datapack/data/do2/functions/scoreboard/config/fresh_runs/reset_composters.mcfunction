execute if score $dungeon do2.config.fr.resetComposters matches 1 run tellraw @s ["",{"text":"\n§f§lReset Composters: "},{"text":"§n§aENABLED"},{"text":" §7§o(Default: ENABLED)\n"},{"text":"§c[DISABLE]","clickEvent":{"action":"suggest_command","value":"/scoreboard players set $dungeon do2.config.fr.resetComposters 0"}},{"text":" §a[ENABLE]","clickEvent":{"action":"suggest_command","value":"/scoreboard players set $dungeon do2.config.fr.resetComposters 1"}},{"text":" §9[INFO]","hoverEvent":{"action":"show_text","contents":"§fResets all composters inside the dungeon back to empty. Making bone meal more challenging to acquire."}}]
execute if score $dungeon do2.config.fr.resetComposters matches 0 run tellraw @s ["",{"text":"\n§f§lReset Composters: "},{"text":"§n§cDISABLED"},{"text":" §7§o(Default: ENABLED)\n"},{"text":"§c[DISABLE]","clickEvent":{"action":"suggest_command","value":"/scoreboard players set $dungeon do2.config.fr.resetComposters 0"}},{"text":" §a[ENABLE]","clickEvent":{"action":"suggest_command","value":"/scoreboard players set $dungeon do2.config.fr.resetComposters 1"}},{"text":" §9[INFO]","hoverEvent":{"action":"show_text","contents":"§fResets all composters inside the dungeon back to empty. Making bone meal more challenging to acquire."}}]