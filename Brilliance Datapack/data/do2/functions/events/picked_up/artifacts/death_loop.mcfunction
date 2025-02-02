# - Start Log -
tag @s add dlpPickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=dlpPickUpLogTarget]"},{"text":" picked up an artifact. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fID: §9#34\n§fValue: §b13\n§fName: §aDeath Loop\n§fLore:\n§o§5Causes an neverending stream of comical deaths."}]}},{"text":")"}]
tag @s remove dlpPickUpLogTarget
# - End Log -

# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:34} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:34, tracked:1b, display: { Lore: [ '{"text":"Causes an neverending stream of comical deaths."}'],Name: '{"bold":true,"color":"gold","text":"Death Loop (13)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifacts/death_loop

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 34
scoreboard players add @s do2.artifacts.DLP 1
scoreboard players set $dungeon do2.run.foundArtifact 34
scoreboard players add $dungeon do2.artifacts.DLP 1
scoreboard players set $dungeon do2.run.artifactValue 13

# Agronet event
function do2:external/agronet/logs/pickups/death_loop