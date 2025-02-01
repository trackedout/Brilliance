# called when player respawns and is now alive in the world

# - Start Log -
tag @s add respawnLogTarget
execute as @a[scores={do2.logs.spam=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: "},{"selector":"@p[tag=respawnLogTarget]"},{"text":" has respawned."}]
tag @s remove respawnLogTarget
# - End Log -

execute if score $dungeon do2.config.forceGamemode matches 1 if entity @s[tag=do2.respawnSpectatorSpot] unless entity @s[tag=do2.staff] run tp @s -526 114 1980
execute if score $dungeon do2.config.forceGamemode matches 1 if entity @s[tag=do2.respawnPlayerSpot] unless entity @s[tag=do2.staff] unless entity @s[x=-552,dx=8,y=111,dy=4,z=1977,dz=6] run tp @s -550 113 1982
execute if score $dungeon do2.config.forceGamemode matches 1 if entity @s[tag=do2.respawnSpectatorSpot] if entity @s[tag=do2.staff] run tellraw @s ["",{"text":"§f[§9B§r]: You have the tag [§bdo2.staff§r], and this has stopped:\n - §5tp "},{"selector":"@s","color":"dark_purple"},{"text":"§5-526 114 1980\n§f[§9B§r]: Click "},{"text":"§b[here]","clickEvent":{"action":"run_command","value":"/tp @s -526 114 1980"}},{"text":" to run the command anyway."}]
execute if score $dungeon do2.config.forceGamemode matches 1 if entity @s[tag=do2.respawnPlayerSpot] if entity @s[tag=do2.staff] unless entity @s[x=-552,dx=8,y=111,dy=4,z=1977,dz=6] run tellraw @s ["",{"text":"§f[§9B§r]: You have the tag [§bdo2.staff§r], and this has stopped:\n - §5tp "},{"selector":"@s","color":"dark_purple"},{"text":"§5-550 113 1982\n§f[§9B§r]: Click "},{"text":"§b[here]","clickEvent":{"action":"run_command","value":"/tp @s -550 113 1982"}},{"text":" to run the command anyway."}]

# Reset deathCount
scoreboard players set @s do2.utility.deathCount 0

# remove respawn tag locations.
tag @s remove do2.respawnSpectatorSpot
tag @s remove do2.respawnPlayerSpot

# If player is at PORTAL spawn for some reason
execute positioned -524 103 2167 if entity @s[distance=..10] at @s run tp @s ~ ~ ~ 180 -20

# If player is at LOBBY worldspawn for some reason
execute positioned -547 113 1980 if entity @s[distance=..2] at @s run tp @s ~ ~ ~ 90 0

# Store where player WAS when they died.
scoreboard players operation @s do2.run.death_dungeon_location = @s do2.utility.dungeonLocation

# Agronet event
function do2:external/agronet/logs/spam/on_player_respawned