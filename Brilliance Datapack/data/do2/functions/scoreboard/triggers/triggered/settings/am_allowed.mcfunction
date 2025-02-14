# Ran by EACH triggered command, just so they can't attempt to customize settings mid-run.

scoreboard players set @s do2.utility.canChangeSettings 1
execute unless score $dungeon do2.utility.onServer matches 1 run scoreboard players set @s do2.utility.canChangeSettings 0
execute unless score $dungeon do2.run.active matches 0 run scoreboard players set @s do2.utility.canChangeSettings 0
execute unless score @p[tag=do2.received_shulker] do2.utility.runType matches 1 run scoreboard players set @s do2.utility.canChangeSettings 0


execute unless score @s do2.utility.canChangeSettings matches 1 run tellraw @s ["",{"text":"You cannot customize the settings"}]
execute unless score $dungeon do2.utility.onServer matches 1 run tellraw @s ["",{"text":" - This is a feature exclusive to Tracked Out."}]
execute unless score @p[tag=do2.received_shulker] do2.utility.runType matches 1 run tellraw @s ["",{"text":" - This is a feature is exclusive to Practice mode."}]
execute unless score $dungeon do2.run.active matches 0 run tellraw @s ["",{"text":" - You may only customize settings before the deck is placed in."}]

