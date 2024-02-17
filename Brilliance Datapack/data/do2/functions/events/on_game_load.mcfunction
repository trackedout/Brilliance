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
# More than 1 players have the tag.
execute if score $dungeon do2.utility.shulkerPlayers matches 2.. run tag @r[tag=do2.received_shulker] add do2.received_shulker.temp
execute if score $dungeon do2.utility.shulkerPlayers matches 2.. run tellraw @a ["",{"text":"[§9B§r]: §4WARNING!!! §rPlayers: "},{"selector":"@a[tag=do2.received_shulker]","color":"dark_purple"},{"text":" §rHas the tag [§b§odo2.received_shulker§r]. Expected only 1 player to have this tag.\n[§9B§r]: Automatically fixing this...\n[§9B§r]: Only "},{"selector":"@a[tag=do2.received_shulker.temp]","color":"dark_purple"},{"text":" §rhas tag [§b§odo2.received_shulker§r]."}]
execute if score $dungeon do2.utility.shulkerPlayers matches 2.. run tag @a[tag=do2.received_shulker] remove do2.received_shulker
execute if score $dungeon do2.utility.shulkerPlayers matches 2.. run tag @a[tag=do2.received_shulker.temp] add do2.received_shulker
execute if score $dungeon do2.utility.shulkerPlayers matches 2.. run tag @a[tag=do2.received_shulker.temp] remove do2.received_shulker.temp
# No players have the tag
execute if score $dungeon do2.utility.shulkerPlayers matches ..0 run tag @r[name=!tangocam,name=!TangoCam] add do2.received_shulker.temp
execute if score $dungeon do2.utility.shulkerPlayers matches ..0 run tellraw @a ["",{"text":"[§9B§r]: §4WARNING!!! §rNo players has the tag [§b§odo2.received_shulker§r]. Expected only 1 player to have this tag.\n[§9B§r]: Automatically fixing this...\n[§9B§r]: Only "},{"selector":"@a[tag=do2.received_shulker.temp]","color":"dark_purple"},{"text":" §rhas tag [§b§odo2.received_shulker§r]."}]
execute if score $dungeon do2.utility.shulkerPlayers matches ..0 run tag @a[tag=do2.received_shulker.temp] add do2.received_shulker
execute if score $dungeon do2.utility.shulkerPlayers matches ..0 run tag @a[tag=do2.received_shulker.temp] remove do2.received_shulker.temp


# Disable FastReset at first
setblock -542 122 1966 minecraft:glass


# Join Players Bounds: (-565 118 1974) (-542 111 1985)
execute as @a[x=-565,dx=23,y=111,dy=7,z=1974,dz=11] run team join do2.players @s

# Set up spectators
execute as @a[team=!do2.players] run team join do2.spectators @s
execute as @a[team=do2.spectators] run function do2:scoreboard/spectator_per_run

# Fast Reset
execute if score $dungeon do2.config.fastReset matches 1 run function do2:dungeon_setup/fast_reset
setblock -542 122 1966 minecraft:glass

scoreboard players set $dungeon do2.utility.dungeonRepair 1
scoreboard players set $dungeon do2.run.players 0

