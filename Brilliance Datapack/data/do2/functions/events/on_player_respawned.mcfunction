# called when player respawns and is now alive in the world

# - Start Log -
tag @s add respawnLogTarget
execute as @a[scores={do2.logs.spam=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=respawnLogTarget]"},{"text":" has respawned."}]
tag @s remove respawnLogTarget
# - End Log -

execute if entity @s[tag=do2.respawnSpectatorSpot] run tp @s -526 114 1980
execute if entity @s[tag=do2.respawnPlayerSpot] run tp @s -550 113 1982

# Reset deathCount
scoreboard players set @s do2.utility.deathCount 0

# remove respawn tag locations.
tag @s remove do2.respawnSpectatorSpot
tag @s remove do2.respawnPlayerSpot
