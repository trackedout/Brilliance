# - Teleport players. -
# If player is alive, teleport them right now.
execute if entity @s[team=do2.spectators,scores={do2.utility.deathCount=0}] run tp @s -526 114 1980
execute if entity @s[team=!do2.spectators,scores={do2.utility.deathCount=0}] run tp @s -550 113 1982
# If player is dead, teleport them later.
execute unless entity @s[scores={do2.utility.deathCount=1..}] if entity @s[team=do2.spectators] run tag @s add do2.respawnSpectatorSpot
execute unless entity @s[scores={do2.utility.deathCount=1..}] if entity @s[team=!do2.spectators] run tag @s add do2.respawnPlayerSpot

# Proper gamemode
execute unless entity @s[gamemode=survival] unless entity @s[gamemode=adventure] run gamemode adventure

# Reset Team & Tags
team leave @s
tag @s remove do2.running
tag @s remove do2.spectating
tag @s remove do2.ghost
