# Check if they can open the world to CO-OP
scoreboard objectives add do2.temp.canOpenServer dummy
scoreboard players set @s do2.temp.canOpenServer 1
execute unless score $dungeon do2.utility.onServer matches 1 run scoreboard players set @s do2.temp.canOpenServer 0
execute unless entity @s[tag=do2.received_shulker] run scoreboard players set @s do2.temp.canOpenServer 0
execute unless score $dungeon do2.run.active matches 0 run scoreboard players set @s do2.temp.canOpenServer 0
execute unless score @p[tag=do2.received_shulker] do2.utility.runType matches 1 run scoreboard players set @s do2.temp.canOpenServer 0


execute if score @s do2.temp.canOpenServer matches 1 run function do2:external/agronet/game_start
execute if score @s do2.temp.canOpenServer matches 1 run tellraw @s ["",{"text":"SUCCESS! Your CO-OP partner may join via the Spectate NPC in the lobby."}]
execute unless score @s do2.temp.canOpenServer matches 1 run tellraw @s ["",{"text":"You cannot open the world to CO-OP."}]
execute unless score $dungeon do2.utility.onServer matches 1 run tellraw @s ["",{"text":" - This is a feature exclusive to Tracked Out."}]
execute unless score @p[tag=do2.received_shulker] do2.utility.runType matches 1 run tellraw @s ["",{"text":" - This is a feature exclusive to Practice mode."}]
execute unless entity @s[tag=do2.received_shulker] run tellraw @s ["",{"text":" - Only the owner of the instance may open the world to CO-OP"}]
execute unless score $dungeon do2.run.active matches 0 run tellraw @s ["",{"text":" - You may only open to CO-OP before the deck is placed in."}]


scoreboard objectives remove do2.temp.canOpenServer
