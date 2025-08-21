# DATAPACK VERSION NUMBER: 0.15.32
scoreboard players set $dungeon do2.version 01532
tellraw @s ["",{"text":"The §o§n§aBrilliance Datapack§r's version is: [§b0.15.32§r] Check latest version "},{"text":"§o§b§nhere§r","clickEvent":{"action":"open_url","value":"https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/functions/version.mcfunction"}},{"text":"."}]

# Remove config default if versions don't match
execute unless score $dungeon do2.version = $_dungeon do2.version run scoreboard players set $dungeon do2.utility.setNormalScoreDefaults 0
execute unless score $dungeon do2.version = $_dungeon do2.version run scoreboard players set $dungeon do2.utility.setTrackedOutScoreDefaults 0
scoreboard players operation $_dungeon do2.version = $dungeon do2.version
