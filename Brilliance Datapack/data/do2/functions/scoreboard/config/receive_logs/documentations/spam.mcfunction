tellraw @s ["",{"text":"§4§lLog Spam§r§f:\n"},{"text":"§f","clickEvent":{"action":"run_command","value":"/scoreboard players set @s do2.logs.spam 0"}},{"text":" "},{"text":"§f","clickEvent":{"action":"run_command","value":"/scoreboard players set @s do2.logs.spam 1"},"hoverEvent":{"action":"show_text","contents":{"text":"Receive logs when:\n- A player joins\n- A player dies\n- A player respawns"}}},{"text":" "},{"text":"§f","clickEvent":{"action":"run_command","value":"/scoreboard players set @s do2.logs.spam 2"},"hoverEvent":{"action":"show_text","contents":{"text":"Receive §bLevel 1§r logs as well as when:\n- A game tick occurs\n- A datapack tick occurs\n- A once per 20th tick occurs\n- A once per 100th tick occurs"}}}]