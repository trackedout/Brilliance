# - Start Log -
tag @s add playerResetLogTarget
execute as @a[scores={do2.logs.datapack_setup=1..}] run tellraw @s ["",{"text":"[§9B§r]: Resetting "},{"selector":"@p[tag=playerResetLogTarget]"},{"text":" gamemode, team, & tags."}]
tag @s remove playerResetLogTarget

# - Teleport players. -
# If player is alive, teleport them right now.
execute if score $dungeon do2.config.forceGamemode matches 1 if entity @s[team=do2.spectators,scores={do2.utility.deathCount=0}] unless entity @s[tag=do2.staff] run tp @s -526 114 1980
execute if score $dungeon do2.config.forceGamemode matches 1 if entity @s[team=!do2.spectators,scores={do2.utility.deathCount=0}] unless entity @s[tag=do2.staff] unless entity @s[x=-552,dx=8,y=111,dy=4,z=1977,dz=6] run tp @s -550 113 1982
execute if score $dungeon do2.config.forceGamemode matches 1 if entity @s[team=do2.spectators,scores={do2.utility.deathCount=0}] if entity @s[tag=do2.staff] run tellraw @s ["",{"text":"[§9B§r]: You have the tag [§bdo2.staff§r] and has stopped:\n - §5tp "},{"selector":"@s","color":"dark_purple"},{"text":"§5-526 114 1980\n[§9B§r]: Click "},{"text":"§b[here]","clickEvent":{"action":"run_command","value":"/tp @s -526 114 1980"}},{"text":" to run the command anyways."}]
execute if score $dungeon do2.config.forceGamemode matches 1 if entity @s[team=!do2.spectators,scores={do2.utility.deathCount=0}] if entity @s[tag=do2.staff] unless entity @s[x=-552,dx=8,y=111,dy=4,z=1977,dz=6] run tellraw @s ["",{"text":"[§9B§r]: You have the tag [§bdo2.staff§r] and has stopped:\n - §5tp "},{"selector":"@s","color":"dark_purple"},{"text":"§5-550 113 1982\n[§9B§r]: Click "},{"text":"§b[here]","clickEvent":{"action":"run_command","value":"/tp @s -550 113 1982"}},{"text":" to run the command anyways."}]

# If player is dead, teleport them later.
execute if score $dungeon do2.config.forceGamemode matches 1 if entity @s[scores={do2.utility.deathCount=1..}] if entity @s[team=do2.spectators] run tag @s add do2.respawnSpectatorSpot
execute if score $dungeon do2.config.forceGamemode matches 1 if entity @s[scores={do2.utility.deathCount=1..}] if entity @s[team=!do2.spectators] run tag @s add do2.respawnPlayerSpot

# Proper gamemode
execute if score $dungeon do2.config.forceGamemode matches 1 unless entity @s[gamemode=adventure] unless entity @s[tag=do2.staff] if score @s do2.utility.oldGamemode matches 0 run gamemode adventure @s
execute if score $dungeon do2.config.forceGamemode matches 1 unless entity @s[gamemode=survival] unless entity @s[tag=do2.staff] if score @s do2.utility.oldGamemode matches 1 run gamemode survival @s
execute if score $dungeon do2.config.forceGamemode matches 1 unless entity @s[gamemode=creative] unless entity @s[tag=do2.staff] if score @s do2.utility.oldGamemode matches 2 run gamemode creative @s
execute if score $dungeon do2.config.forceGamemode matches 1 unless entity @s[gamemode=spectator] unless entity @s[tag=do2.staff] if score @s do2.utility.oldGamemode matches 3 run gamemode spectator @s
# If they are staff
execute if score $dungeon do2.config.forceGamemode matches 1 unless entity @s[gamemode=adventure] if entity @s[tag=do2.staff] if score @s do2.utility.oldGamemode matches 0 run tellraw @s ["",{"text":"[§9B§r]: You have the tag [§bdo2.staff§r] and has stopped:\n - §5gamemode adventure "},{"selector":"@s","color":"dark_purple"},{"text":"\n[§9B§r]: Click "},{"text":"§b[here]","clickEvent":{"action":"run_command","value":"/gamemode adventure @s"}},{"text":" to run the command anyways."}]
execute if score $dungeon do2.config.forceGamemode matches 1 unless entity @s[gamemode=survival] if entity @s[tag=do2.staff] if score @s do2.utility.oldGamemode matches 1 run tellraw @s ["",{"text":"[§9B§r]: You have the tag [§bdo2.staff§r] and has stopped:\n - §5gamemode survival "},{"selector":"@s","color":"dark_purple"},{"text":"\n[§9B§r]: Click "},{"text":"§b[here]","clickEvent":{"action":"run_command","value":"/gamemode survival @s"}},{"text":" to run the command anyways."}]
execute if score $dungeon do2.config.forceGamemode matches 1 unless entity @s[gamemode=creative] if entity @s[tag=do2.staff] if score @s do2.utility.oldGamemode matches 2 run tellraw @s ["",{"text":"[§9B§r]: You have the tag [§bdo2.staff§r] and has stopped:\n - §5gamemode creative "},{"selector":"@s","color":"dark_purple"},{"text":"\n[§9B§r]: Click "},{"text":"§b[here]","clickEvent":{"action":"run_command","value":"/gamemode creative @s"}},{"text":" to run the command anyways."}]
execute if score $dungeon do2.config.forceGamemode matches 1 unless entity @s[gamemode=spectator] if entity @s[tag=do2.staff] if score @s do2.utility.oldGamemode matches 3 run tellraw @s ["",{"text":"[§9B§r]: You have the tag [§bdo2.staff§r] and has stopped:\n - §5gamemode spectator "},{"selector":"@s","color":"dark_purple"},{"text":"\n[§9B§r]: Click "},{"text":"§b[here]","clickEvent":{"action":"run_command","value":"/gamemode spectator @s"}},{"text":" to run the command anyways."}]


# Reset Team & Tags
team leave @s
tag @s remove do2.won
tag @s remove do2.running
tag @s remove do2.spectating
tag @s remove do2.ghost

scoreboard players set @s do2.run.has_died 0
