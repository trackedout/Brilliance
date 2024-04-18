# Change "received_shulker" to "do2.received_shulker"
execute as @a[tag=do2.received_shulker] run tag @s add do2.received_shulker
execute as @a[tag=do2.received_shulker] run tag @s remove received_shulker


# Count players with the tags
scoreboard players set $dungeon do2.utility.shulkerPlayers 0
tag TangoCam remove do2.received_shulker
tag tangocam remove do2.received_shulker
execute as @a[tag=do2.received_shulker] run scoreboard players add $dungeon do2.utility.shulkerPlayers 1


# -- More than 1 players have the tag. --
# Give the tag to the closest ACTIVE player to the shulker's breaker.
execute if score $dungeon do2.utility.shulkerPlayers matches 2.. positioned -566 114 1980 run tag @p[team=do2.players,name=!tangocam,name=!TangoCam] add do2.received_shulker.temp1
execute if score $dungeon do2.utility.shulkerPlayers matches 2.. if entity @p[tag=do2.received_shulker.temp1] run tellraw @a ["",{"text":"[§9B§r]: §4WARNING!!! §rPlayers: "},{"selector":"@a[tag=do2.received_shulker]","color":"dark_purple"},{"text":" §rHas the tag [§b§odo2.received_shulker§r]. Expected only 1 player to have this tag.\n[§9B§r]: Automatically fixing this...\n[§9B§r]: Only "},{"selector":"@a[tag=do2.received_shulker.temp1]","color":"dark_purple"},{"text":" §rhas tag [§b§odo2.received_shulker§r]."}]
execute if score $dungeon do2.utility.shulkerPlayers matches 2.. if entity @p[tag=do2.received_shulker.temp1] run tag @a[tag=do2.received_shulker] remove do2.received_shulker
execute if score $dungeon do2.utility.shulkerPlayers matches 2.. if entity @p[tag=do2.received_shulker.temp1] run tag @a[tag=do2.received_shulker.temp1] add do2.received_shulker


# Give the tag to RANDOM player since there are NO ACTIVE players
execute if score $dungeon do2.utility.shulkerPlayers matches 2.. unless entity @p[tag=do2.received_shulker.temp1] run tag @r[tag=do2.received_shulker,name=!tangocam,name=!TangoCam] add do2.received_shulker.temp2
execute if score $dungeon do2.utility.shulkerPlayers matches 2.. unless entity @p[tag=do2.received_shulker.temp1] if entity @p[tag=do2.received_shulker.temp2] run tellraw @a ["",{"text":"[§9B§r]: §4WARNING!!! §rPlayers: "},{"selector":"@a[tag=do2.received_shulker]","color":"dark_purple"},{"text":" §rHas the tag [§b§odo2.received_shulker§r]. Expected only 1 player to have this tag.\n[§9B§r]: Automatically fixing this...\n[§9B§r]: §4(§r§oCouldn't find any active players, giving it to random player instead§r§4)§r\n[§9B§r]: Only "},{"selector":"@a[tag=do2.received_shulker.temp2]","color":"dark_purple"},{"text":" §rhas tag [§b§odo2.received_shulker§r]."}]
execute if score $dungeon do2.utility.shulkerPlayers matches 2.. unless entity @p[tag=do2.received_shulker.temp1] if entity @p[tag=do2.received_shulker.temp2] run tag @a[tag=do2.received_shulker] remove do2.received_shulker
execute if score $dungeon do2.utility.shulkerPlayers matches 2.. unless entity @p[tag=do2.received_shulker.temp1] if entity @p[tag=do2.received_shulker.temp2] run tag @a[tag=do2.received_shulker.temp2] add do2.received_shulker
tag @a[tag=do2.received_shulker.temp] remove do2.received_shulker.temp1
tag @a[tag=do2.received_shulker.temp] remove do2.received_shulker.temp2


# -- No players have the tag. --
# Give the tag to the closest ACTIVE player to the shulker's breaker.
execute if score $dungeon do2.utility.shulkerPlayers matches ..0 positioned -566 114 1980 run tag @p[team=do2.players,name=!tangocam,name=!TangoCam] add do2.received_shulker.temp
execute if score $dungeon do2.utility.shulkerPlayers matches ..0 if entity @p[tag=do2.received_shulker.temp1] run tellraw @a ["",{"text":"[§9B§r]: §4WARNING!!! §rNo players has the tag [§b§odo2.received_shulker§r]. Expected only 1 player to have this tag.\n[§9B§r]: Automatically fixing this...\n[§9B§r]: Only "},{"selector":"@a[tag=do2.received_shulker.temp]","color":"dark_purple"},{"text":" §rhas tag [§b§odo2.received_shulker§r]."}]
execute if score $dungeon do2.utility.shulkerPlayers matches ..0 if entity @p[tag=do2.received_shulker.temp1] run tag @a[tag=do2.received_shulker.temp] add do2.received_shulker
# Give the tag to RANDOM player since there are NO ACTIVE players
execute if score $dungeon do2.utility.shulkerPlayers matches ..0 unless entity @p[tag=do2.received_shulker.temp1] run tag @r[name=!tangocam,name=!TangoCam] add do2.received_shulker.temp
execute if score $dungeon do2.utility.shulkerPlayers matches ..0 unless entity @p[tag=do2.received_shulker.temp1] if entity @p[tag=do2.received_shulker.temp2] run tellraw @a ["",{"text":"[§9B§r]: §4WARNING!!! §rNo players has the tag [§b§odo2.received_shulker§r]. Expected only 1 player to have this tag.\n[§9B§r]: Automatically fixing this...\n[§9B§r]: §4(§r§oCouldn't find any active players, giving it to random player instead§r§4)§r\n[§9B§r]: Only "},{"selector":"@a[tag=do2.received_shulker.temp]","color":"dark_purple"},{"text":" §rhas tag [§b§odo2.received_shulker§r]."}]
execute if score $dungeon do2.utility.shulkerPlayers matches ..0 unless entity @p[tag=do2.received_shulker.temp1] if entity @p[tag=do2.received_shulker.temp2] run tag @a[tag=do2.received_shulker.temp] add do2.received_shulker
tag @a[tag=do2.received_shulker.temp] remove do2.received_shulker.temp1
tag @a[tag=do2.received_shulker.temp] remove do2.received_shulker.temp2
