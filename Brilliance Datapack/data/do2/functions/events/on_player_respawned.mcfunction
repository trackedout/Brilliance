# called when player respawns and is now alive in the world

# - Start Log -
tag @s add respawnLogTarget
execute as @a[scores={do2.logs.spam=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=respawnLogTarget]"},{"text":" has respawned."}]
tag @s remove respawnLogTarget
# - End Log -

execute if entity @s[tag=do2.respawnSpectatorSpot] unless entity @s[tag=do2.staff] run tp @s -526 114 1980
execute if entity @s[tag=do2.respawnPlayerSpot] unless entity @s[tag=do2.staff] run tp @s -550 113 1982
execute if entity @s[tag=do2.respawnSpectatorSpot] if entity @s[tag=do2.staff] run tellraw @s ["",{"text":"[§9B§r]: You have the tag [§bdo2.staff§r] and has stopped:\n - §5tp "},{"selector":"@s","color":"dark_purple"},{"text":"§5-526 114 1980\n[§9B§r]: Click "},{"text":"§b[here]","clickEvent":{"action":"run_command","value":"/tp @s -526 114 1980"}},{"text":" to run the command anyways."}]
execute if entity @s[tag=do2.respawnPlayerSpot] if entity @s[tag=do2.staff] run tellraw @s ["",{"text":"[§9B§r]: You have the tag [§bdo2.staff§r] and has stopped:\n - §5tp "},{"selector":"@s","color":"dark_purple"},{"text":"§5-550 113 1982\n[§9B§r]: Click "},{"text":"§b[here]","clickEvent":{"action":"run_command","value":"/tp @s -550 113 1982"}},{"text":" to run the command anyways."}]

# Reset deathCount
scoreboard players set @s do2.utility.deathCount 0

# remove respawn tag locations.
tag @s remove do2.respawnSpectatorSpot
tag @s remove do2.respawnPlayerSpot
