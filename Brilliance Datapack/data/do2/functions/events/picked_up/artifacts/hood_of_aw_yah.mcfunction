# - Start Log -
tag @s add hayPickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=hayPickUpLogTarget]"},{"text":" picked up an artifact. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fID: §9#42\n§fValue: §b6\n§fName: §aHood of Aw'Yah\n§fLore:\n§o§5Wearing this hood may cause uncontrollable giggling."}]}},{"text":")"}]
tag @s remove hayPickUpLogTarget
# - End Log -

# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:42} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:42, tracked:1b, display: { Lore: ['{"text":"Wearing this hood may cause"}','{"text":"uncontrollable giggling."}'],Name: '{"bold":true,"color":"gold","text":"Hood of Aw\'Yah (6)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifacts/hood_of_aw_yah

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 42
scoreboard players add @s do2.artifacts.HAY 1
scoreboard players set $dungeon do2.utility.artifactValue 6
