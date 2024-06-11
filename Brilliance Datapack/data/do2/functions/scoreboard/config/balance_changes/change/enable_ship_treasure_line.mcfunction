execute at @s run playsound minecraft:ui.button.click player @s ~ ~ ~ 1
scoreboard players set $dungeon do2.config.bc.l2ShipTreasureLine 1
setblock -571 40 2014 minecraft:redstone_block

tellraw @s {"text":"Setting §u§lShip's Treasure Line§r to: §aLevel 2's"}
