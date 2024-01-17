# - Start Log -
tag @s add asvPickUpLogTarget
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=asvPickUpLogTarget]"},{"text":" picked up an artifact. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fID: §9#43\n§fValue: §b7\n§fName: §aAxe of the Screamin' Void\n§fLore:\n§o§5A legendary axe that never\nstops shredding."}]}},{"text":")"}]
tag @s remove asvPickUpLogTarget
# - End Log -

# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:43} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:43,tracked:1b, display: { Lore: [ '{"text":"A legendary axe that never"}','{"text":"stops shredding."}'],Name: '{"bold":true,"color":"gold","text":"Axe of the Screamin\' Void (7)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifacts/axe_of_the_screamin_void

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 43
scoreboard players add @s do2.artifacts.ASV 1
