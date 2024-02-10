# Ran when the shulkerbox is PUT into the system.
# - Start Log -
execute as @a[scores={do2.logs.gamestate=1..}] run tellraw @s ["",{"text":"[§9B§r]: Game has been activated. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§rRedstone line to detect shulker box placing has been activated."}]}},{"text":")"}]
# - End Log -

tag @a remove do2.spectating
tag @a remove do2.running

# Ensure only ONE player has the do2.received_shulker tag
scoreboard players set $dungeon do2.utility.shulkerPlayers 0
tag TangoCam remove do2.received_shulker
tag tangocam remove do2.received_shulker
execute as @a[tag=do2.received_shulker] run scoreboard players add $dungeon do2.utility.shulkerPlayers 1
execute unless score $dungeon do2.utility.shulkerPlayers matches 1 run tag @r[tag=do2.received_shulker] add do2.received_shulker.temp
execute unless score $dungeon do2.utility.shulkerPlayers matches 1 run tellraw @a ["",{"text":"[§9B§r]: §4WARNING!!! Players: "},{"selector":"@a[tag=do2.received_shulker]","color":"dark_purple"},{"text":" §rHas the tag [§b§odo2.received_shulker§r]. Expected only 1 player to have this tag.\n[§9B§r]: Automatically fixing this...\n[§9B§r]: Only "},{"selector":"@a[tag=do2.received_shulker.temp]","color":"dark_purple"},{"text":" §rhas tag [§b§odo2.received_shulker§r]."}]
execute unless score $dungeon do2.utility.shulkerPlayers matches 1 run tag @a[tag=do2.received_shulker] remove do2.received_shulker
execute unless score $dungeon do2.utility.shulkerPlayers matches 1 run tag @a[tag=do2.received_shulker.temp] add do2.received_shulker
execute unless score $dungeon do2.utility.shulkerPlayers matches 1 run tag @a[tag=do2.received_shulker.temp] remove do2.received_shulker.temp

# Join Players Bounds: (-565 118 1974) (-542 111 1985)
execute as @a[x=-565,dx=23,y=111,dy=7,z=1974,dz=11] run team join do2.players @s

# Set up spectators
execute as @s[team=!do2.players] run team join do2.spectators @s
execute as @a[team=do2.spectators] run function do2:scoreboard/spectator_per_run



execute if score $dungeon do2.config.fastReset matches 1 run function do2:dungeon_setup/fast_reset

scoreboard players set $dungeon do2.utility.dungeonRepair 1
scoreboard players set $dungeon do2.run.players 0

