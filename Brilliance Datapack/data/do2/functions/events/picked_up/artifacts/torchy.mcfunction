# - Start Log -
tag @s add torchyPickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=torchyPickUpLogTarget]"},{"text":" picked up an artifact. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fID: §9#20\n§fValue: §b24\n§fName: §aCompleted Torchy\n§fLore:\n§o§5No longer is this just a figment. An enchanted torch has now evolved beyond its life of secrecy."}]}},{"text":")"}]
tag @s remove torchyPickUpLogTarget
# - End Log -

# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:45} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:45, tracked:1b, display: {Lore: ['{"text":"No longer is this just a figment."}','{"text":"An enchanted torch has now evolved beyond its life of secrecy."}'], Name: '{"bold":true,"color":"gold","text":"Completed Torchy (24)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifacts/torchy

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 20
scoreboard players add @s do2.artifacts.BED 1
scoreboard players set $dungeon do2.run.foundArtifact 20
scoreboard players add $dungeon do2.artifacts.BED 1
scoreboard players set $dungeon do2.run.artifactValue 24

# Agronet event
function do2:external/agronet/logs/pickups/bionic_eye_of_doom
