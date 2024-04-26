# - Start Log -
tag @s add mkyPickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=mkyPickUpLogTarget]"},{"text":" picked up an artifact. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fID: §9#37\n§fValue: §b60\n§fName: §aThe Master's Key\n§fLore:\n§o§5What could it possibly open? "}]}},{"text":")"}]
tag @s remove mkyPickUpLogTarget
# - End Log -

# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:37} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:37, tracked:1b, display: { Lore: ['{"text":"What could it possibly open? "}'],Name: '{"bold":true,"color":"gold","text":"The Master\'s Key (60)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifacts/the_masters_key

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 37
scoreboard players add @s do2.artifacts.MKY 1
scoreboard players set $dungeon do2.run.foundArtifact 37
scoreboard players add $dungeon do2.artifacts.MKY 1
scoreboard players set $dungeon do2.run.artifactValue 60
