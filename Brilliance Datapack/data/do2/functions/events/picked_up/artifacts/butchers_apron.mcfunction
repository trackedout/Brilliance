# - Start Log -
tag @s add bapPickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=bapPickUpLogTarget]"},{"text":" picked up an artifact. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fID: §9#40\n§fValue: §b20\n§fName: §aButcher's Apron\n§fLore:\n§o§5A bloody apron for the venerable gentleman."}]}},{"text":")"}]
tag @s remove bapPickUpLogTarget
# - End Log -

# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:40} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:40, tracked:1b, display: {Lore: ['{"text":"A bloody apron for the venerable gentleman."}'],Name: '{"bold":true,"color":"gold","text":"Butcher\'s Apron (20)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifacts/butchers_apron

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 40
scoreboard players add @s do2.artifacts.BAP 1
