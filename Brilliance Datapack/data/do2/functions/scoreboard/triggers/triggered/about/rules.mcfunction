# I've commented out rules we auto enforced and are basic information.
# Uncomment these if ya really want, but I prioritized making all rules visible instead of player's having to open chat to view them all.
# Not to mention the less rules we have displayed, the more likely they'll read them all.
tellraw @s ["",{"text":"§6-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n\n                                  §d§l§nRULES\n"}]
tellraw @s ["",{"text":" - Abide by our "},{"text":"§9§o§nCode of Conduct","clickEvent":{"action":"open_url","value":"https://github.com/trackedout/.github/blob/main/CODE_OF_CONDUCT.md"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to open link."}}}]
#tellraw @s ["",{"text":" - All cards have a number at the top right corner, which represents the maximum number of duplicates (of that card) that your deck can have."}]
#tellraw @s ["",{"text":" - Your deck may contain up to 40 cards."}]
#tellraw @s ["",{"text":" - Do not break or place any blocks."}]
tellraw @s ["",{"text":" - Named mobs are not allowed to be killed. ("},{"text":" §c? ","hoverEvent":{"action":"show_text","contents":{"text":"Mobs that spawn inside the dungeon such as §nslimes§r, §nspiders§r\n§rand §nvexes§r, may however be killed."}}},{"text":")"}]
#tellraw @s ["",{"text":" - You cannot leave the run with artifacts or coins and they must be relinquished before exiting the dungeon."}]
tellraw @s ["",{"text":" - Do not use Freecam, F5 or any other camera modification mod or datapack."}]
tellraw @s ["",{"text":" - Do not enable hitboxes."}]
tellraw @s ["",{"text":"\n§6-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"}]
