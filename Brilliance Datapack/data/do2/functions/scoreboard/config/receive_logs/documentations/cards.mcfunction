tellraw @s ["",{"text":"§6§lCards"},{"text":"§r§f:\n"},{"text":"[DISABLE]","color":"dark_red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s do2.logs.cards 0"}},{"text":" "},{"text":"[LEVEL 1]","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set @s do2.logs.cards 1"},"hoverEvent":{"action":"show_text","contents":{"text":"Receive logs when:\n §o- A card is available for purchase\n §o- A card is purchased"}}},{"text":" "},{"text":"[LEVEL 2]","color":"dark_purple","clickEvent":{"action":"run_command","value":"/scoreboard players set @s do2.logs.cards 2"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Receive "},{"text":"Level 1","color":"aqua"},{"text":" logs as well as:\n §o- when a card is played."}]}}]
