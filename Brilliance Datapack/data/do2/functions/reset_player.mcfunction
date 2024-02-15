# - Teleport players. -
# If player is alive, teleport them right now.
execute if entity @s[team=do2.spectators,scores={do2.utility.deathCount=0}] unless entity @s[tag=do2.staff] run tp @s -526 114 1980
execute if entity @s[team=!do2.spectators,scores={do2.utility.deathCount=0}] unless entity @s[tag=do2.staff] run tp @s -550 113 1982
# If player is dead, teleport them later.
execute unless entity @s[scores={do2.utility.deathCount=1..}] if entity @s[team=do2.spectators] run tag @s add do2.respawnSpectatorSpot
execute unless entity @s[scores={do2.utility.deathCount=1..}] if entity @s[team=!do2.spectators] run tag @s add do2.respawnPlayerSpot

# Proper gamemode
execute unless entity @s[gamemode=survival] unless entity @s[gamemode=adventure] unless entity @s[tag=do2.staff] run gamemode adventure
execute unless entity @s[gamemode=survival] unless entity @s[gamemode=adventure] if entity @s[tag=do2.staff] run tellraw @s ["",{"text":"[§9B§r]: You have the tag [§bdo2.staff§r] and has stopped:\n - §5gamemode adventure "},{"selector":"@s","color":"dark_purple"},{"text":"\n[§9B§r]: Click "},{"text":"§b[here]","clickEvent":{"action":"run_command","value":"/gamemode adventure @s"}},{"text":" to run the command anyways."}]

# Reset Team & Tags
team leave @s
tag @s remove do2.running
tag @s remove do2.spectating
tag @s remove do2.ghost
