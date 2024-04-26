# - Start Log -
tag @s add shdPickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=shdPickUpLogTarget]"},{"text":" picked up an artifact. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fID: §9#33\n§fValue: §b9\n§fName: §aShades of the Dog\n§fLore:\n§o§5Eye protection worthy of a king."}]}},{"text":")"}]
tag @s remove shdPickUpLogTarget
# - End Log -

# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:33} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:33, tracked:1b, display: {Lore: ['{"text":"Eye protection worthy of a king."}'], Name: '{"bold":true,"color":"gold","text":"Shades of the Dog (9)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifacts/shades_of_the_dog

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 33
scoreboard players add @s do2.artifacts.SHD 1
scoreboard players set $dungeon do2.run.foundArtifact 33
scoreboard players add $dungeon do2.artifacts.SHD 1
scoreboard players set $dungeon do2.run.artifactValue 9
