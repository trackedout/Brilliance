# - Start Log -
tag @s add pwsPickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=pwsPickUpLogTarget]"},{"text":" picked up an artifact. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fID: §9#10\n§fValue: §b36\n§fName: §aPocket Watch of Shreeping\n§fLore:\n§o§5Perfect sleeping every time."}]}},{"text":")"}]
tag @s remove pwsPickUpLogTarget
# - End Log -

# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:10} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:10, tracked:1b, display: { Lore: ['{"text":"Perfect sleeping every time."}'],Name: '{"bold":true,"color":"gold","text":"Pocket Watch of Shreeping (36)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifacts/pocket_watch_of_shreeping

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 10
scoreboard players add @s do2.artifacts.PWS 1
scoreboard players set $dungeon do2.run.foundArtifact 10
scoreboard players add $dungeon do2.artifacts.PWS 1
scoreboard players set $dungeon do2.run.artifactValue 36
