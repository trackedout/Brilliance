# - Start Log -
tag @s add bedPickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=bedPickUpLogTarget]"},{"text":" picked up an artifact. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fID: §9#20\n§fValue: §b24\n§fName: §aBionic Eye of Doom\n§fLore:\n§o§5Also Omega. Probably Mega as well."}]}},{"text":")"}]
tag @s remove bedPickUpLogTarget
# - End Log -

# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:20} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:20, tracked:1b, display: {Lore: ['{"text":"Also Omega. Probably Mega as well."}'],Name: '{"bold":true,"color":"gold","text":"Bionic Eye of Doom (24)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifacts/bionic_eye_of_doom

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 20
scoreboard players add @s do2.artifacts.BED 1
