# - Start Log -
tag @s add skaPickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=skaPickUpLogTarget]"},{"text":" picked up an artifact. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fID: §9#38\n§fValue: §b52\n§fName: §aThe Skadoodler\n§fLore:\n§o§5A unique device capable of creating\nunlimited -ificators. Most won't work."}]}},{"text":")"}]
tag @s remove skaPickUpLogTarget
# - End Log -

# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:38} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:38, tracked:1b, display: { Lore: [ '{"text":"A unique device capable of creating"}', '{"text":"unlimited -ificators. Most won\'t work."}'],Name: '{"bold":true,"color":"gold","text":"The Skadoodler (52)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifacts/skadoodler

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 38
scoreboard players add @s do2.artifacts.SKA 1
scoreboard players set $dungeon do2.run.foundArtifact 38
scoreboard players add $dungeon do2.artifacts.SKA 1
scoreboard players set $dungeon do2.run.artifactValue 52

# Agronet event
function do2:external/agronet/logs/pickups/skadoodler