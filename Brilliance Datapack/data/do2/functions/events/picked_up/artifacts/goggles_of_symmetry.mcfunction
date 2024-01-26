# - Start Log -
tag @s add ggsPickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=ggsPickUpLogTarget]"},{"text":" picked up an artifact. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fID: §9#15\n§fValue: §b32\n§fName: §aGoggles of Symmetry\n§fLore:\n§o§5Grants deceptively overpowering combat prowess.\nAlso quite fashionable."}]}},{"text":")"}]
tag @s remove ggsPickUpLogTarget
# - End Log -

# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:15} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:15, tracked:1b, display: {Lore: ['{"text":"Grants deceptively overpowering combat prowess."}','{"text":"Also quite fashionable."}'],Name: '{"bold":true,"color":"gold","text":"Goggles of Symmetry (32)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifacts/goggles_of_symmetry

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 15
scoreboard players add @s do2.artifacts.GGS 1
