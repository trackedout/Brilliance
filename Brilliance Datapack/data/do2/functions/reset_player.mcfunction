# - Teleport players. -
# If player is alive, teleport them right now.
execute if entity @s[team=do2.spectators,scores={do2.utility.deathCount=0}] unless entity @s[tag=do2.staff] run tp @s -526 114 1980
execute if entity @s[team=!do2.spectators,scores={do2.utility.deathCount=0}] unless entity @s[tag=do2.staff] run tp @s -550 113 1982
execute if entity @s[team=do2.spectators,scores={do2.utility.deathCount=0}] if entity @s[tag=do2.staff] run tellraw @s ["",{"text":"[§9B§r]: You have the tag [§bdo2.staff§r] and has stopped:\n - §5tp "},{"selector":"@s","color":"dark_purple"},{"text":"§5-526 114 1980\n[§9B§r]: Click "},{"text":"§b[here]","clickEvent":{"action":"run_command","value":"/tp @s -526 114 1980"}},{"text":" to run the command anyways."}]
execute if entity @s[team=!do2.spectators,scores={do2.utility.deathCount=0}] if entity @s[tag=do2.staff] run tellraw @s ["",{"text":"[§9B§r]: You have the tag [§bdo2.staff§r] and has stopped:\n - §5tp "},{"selector":"@s","color":"dark_purple"},{"text":"§5-550 113 1982\n[§9B§r]: Click "},{"text":"§b[here]","clickEvent":{"action":"run_command","value":"/tp @s -550 113 1982"}},{"text":" to run the command anyways."}]

# If player is dead, teleport them later.
execute if entity @s[scores={do2.utility.deathCount=1..}] if entity @s[team=do2.spectators] run tag @s add do2.respawnSpectatorSpot
execute if entity @s[scores={do2.utility.deathCount=1..}] if entity @s[team=!do2.spectators] run tag @s add do2.respawnPlayerSpot

# Proper gamemode
execute unless entity @s[gamemode=survival] unless entity @s[gamemode=adventure] unless entity @s[tag=do2.staff] run gamemode adventure
execute unless entity @s[gamemode=survival] unless entity @s[gamemode=adventure] if entity @s[tag=do2.staff] run tellraw @s ["",{"text":"[§9B§r]: You have the tag [§bdo2.staff§r] and has stopped:\n - §5gamemode adventure "},{"selector":"@s","color":"dark_purple"},{"text":"\n[§9B§r]: Click "},{"text":"§b[here]","clickEvent":{"action":"run_command","value":"/gamemode adventure @s"}},{"text":" to run the command anyways."}]

# Reset Team & Tags
team leave @s
tag @s remove do2.won
tag @s remove do2.running
tag @s remove do2.spectating
tag @s remove do2.ghost
