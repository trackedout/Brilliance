
tellraw @s ["",{"text":"§6-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"}]

# If staff
execute if entity @s[tag=do2.staff] run tellraw @s ["",{"text":"\n                                 §e§l§nABOUT§r§f\n§fClick on §bLogs §fto customize receiving debug logs."}]
execute unless entity @s[tag=do2.staff] run tellraw @s ["",{"text":"\n                                  §e§l§nABOUT\n"}]

# Display description of rules and version.
tellraw @s ["",{"text":"§fClick on §dRules §fto view the rules of §3Decked Out§f.\n§fClick §aVersion §ffor the version of the §bBrilliance §fdatapack."}]

# Display clickable buttons.
tellraw @s ""
execute if entity @s[tag=do2.staff] run tellraw @s ["",{"text":"§f[§bLOGS§f]","clickEvent":{"action":"run_command","value":"/trigger do2.trigger.about set 100"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to customize §blogs§f."}}},{"text":" "},{"text":"§f[§dRULES§f]","clickEvent":{"action":"run_command","value":"/trigger do2.trigger.about set 301"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to view the §drules§f."}}},{"text":" "},{"text":"§f[§aVERSION§f]","clickEvent":{"action":"run_command","value":"/trigger do2.trigger.about set 302"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to view datapack's §aversion§f."}}}]
execute unless entity @s[tag=do2.staff] run tellraw @s ["",{"text":"§f[§dRULES§f]","clickEvent":{"action":"run_command","value":"/trigger do2.trigger.about set 301"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to view the §drules§f."}}},{"text":" "},{"text":"§f[§aVERSION§f]","clickEvent":{"action":"run_command","value":"/trigger do2.trigger.about set 302"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to view datapack's §aversion§f."}}}]

tellraw @s ["",{"text":"\n§6-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"}]
