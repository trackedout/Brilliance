execute if score $dungeon do2.config.bc.l2ShipTreasureLine matches 1 run tellraw @s ["",{"text":"\n§f§lShip's Treasure Line: "},{"text":"§n§aLevel 2's"},{"text":" §7§o(Default: Level 2's)"}]
execute if score $dungeon do2.config.bc.l2ShipTreasureLine matches 0 run tellraw @s ["",{"text":"\n§f§lShip's Treasure Line: "},{"text":"§n§cLevel 1's"},{"text":" §7§o(Default: Level 2's)"}]
tellraw @s ["",{"text":"§f","clickEvent":{"action":"run_command","value":"/trigger do2.trigger.settings set 21"}},{"text":" §f","clickEvent":{"action":"run_command","value":"/trigger do2.trigger.settings set 22"}},{"text":" §f","hoverEvent":{"action":"show_text","contents":"§aLevel 2's§r pirate ship originally dropped treasure §oonly§r while player was on §cLevel 1§r. Changing it to drop on §aLevel 2§r§f, means that treasure drops on the ship §oonly§r while the player is on §aLevel 2§r."}}]
