# - Start Log -
tag @s add gdePickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=gdePickUpLogTarget]"},{"text":" picked up an artifact. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fID: §9#19\n§fValue: §b34\n§fName: §aGolden Eye\n§fLore:\n§o§5iMazing \"I\" iNscribed iNside"}]}},{"text":")"}]
tag @s remove gdePickUpLogTarget
# - End Log -

# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:19} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:19, tracked:1b, display: { Lore: ['{"text":"iMazing \\"I\\" iNscribed iNside"}'],Name: '{"bold":true,"color":"gold","text":"Golden Eye (34)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifacts/golden_eye

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 19
scoreboard players add @s do2.artifacts.GDE 1
scoreboard players set $dungeon do2.run.foundArtifact 19
scoreboard players add $dungeon do2.artifacts.GDE 1
scoreboard players set $dungeon do2.run.artifactValue 34

# Agronet event
function do2:external/agronet/logs/pickups/golden_eye