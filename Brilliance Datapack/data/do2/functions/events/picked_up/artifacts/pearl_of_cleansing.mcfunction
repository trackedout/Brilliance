# - Start Log -
tag @s add pclPickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=pclPickUpLogTarget]"},{"text":" picked up an artifact. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fID: §9#32\n§fValue: §b14\n§fName: §aPearl of Cleansing\n§fLore:\n§o§5Infused with strange alien powers,\nthis pearl can keep anything clean."}]}},{"text":")"}]
tag @s remove pclPickUpLogTarget
# - End Log -

# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:32} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:32, tracked:1b, display: { Lore: [ '{"text":"Infused with strange alien powers,"}', '{"text":"this pearl can keep anything clean."}' ], Name: '{"bold":true,"color":"gold","text":"Pearl of Cleansing (14)"}' }} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifacts/pearl_of_cleansing

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 32
scoreboard players add @s do2.artifacts.PCL 1
scoreboard players set $dungeon do2.run.foundArtifact 32
scoreboard players add $dungeon do2.artifacts.PCL 1
scoreboard players set $dungeon do2.run.artifactValue 14
