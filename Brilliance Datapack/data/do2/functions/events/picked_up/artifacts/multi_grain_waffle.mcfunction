# - Start Log -
tag @s add mgwPickUpLogTarget
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=mgwPickUpLogTarget]"},{"text":" picked up an artifact. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fID: §9#17\n§fValue: §b8\n§fName: §aMulti-Grain Waffle\n§fLore:\n§o§5Often misspelled. Never duplicated."}]}},{"text":")"}]
tag @s remove mgwPickUpLogTarget
# - End Log -

# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:17} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:17, tracked:1b, display: { Lore: [ '{"text":"Often misspelled. Never duplicated."}'],Name: '{"bold":true,"color":"gold","text":"Multi-Grain Waffle (8)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifacts/multi_grain_waffle

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 17
scoreboard players add @s do2.artifacts.MGW 1
