# Called when a player submits their artifact

# - Start Log -
tag @s add artifactSubmittedTarget
execute at @s as @a[scores={do2.logs.gamestate=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=artifactSubmittedTarget]"},{"text":" has submitted an artifact."}]
tag @s remove artifactSubmittedTarget
# - End Log -

# Add the artifact value to the player's total, as they haven't picked up the artifact embers yet,
# and when they do, they won't be counted to towards these totals anyway, so we do it here.
scoreboard players operation @s do2.lifetime.escaped.embers += $dungeon do2.run.artifactValue
scoreboard players operation $dungeon do2.lifetime.escaped.embers += $dungeon do2.run.artifactValue
