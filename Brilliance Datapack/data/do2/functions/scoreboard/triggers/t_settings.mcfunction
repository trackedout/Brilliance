scoreboard players set @s do2.trigger.settings 0

execute unless score @p[tag=do2.received_shulker] do2.utility.runType matches 1 run return 0
execute unless score $dungeon do2.run.active matches 0 run return 0

scoreboard players enable @s do2.trigger.settings
tp @s -519 114 1956 90 0

