# - Start Log -
tag @s add hgtPickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=hgtPickUpLogTarget]"},{"text":" picked up an artifact. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fID: §9#13\n§fValue: §b18\n§fName: §aHorn of the G.O.A.T.\n§fLore:\n§o§5Grants untold knowledge of\nancient, wondrous technologies"}]}},{"text":")"}]
tag @s remove hgtPickUpLogTarget
# - End Log -

# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:13} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:13, tracked:1b, display: {Lore: ['{"text":"Grants untold knowledge of"}','{"text":"ancient, wondrous technologies"}'],Name: '{"bold":true,"color":"gold","text":"Horn of the G.O.A.T. (18)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifacts/horn_of_the_goat

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 13
scoreboard players add @s do2.artifacts.HGT 1
scoreboard players set $dungeon do2.run.foundArtifact 13
scoreboard players add $dungeon do2.artifacts.HGT 1
scoreboard players set $dungeon do2.run.artifactValue 18
