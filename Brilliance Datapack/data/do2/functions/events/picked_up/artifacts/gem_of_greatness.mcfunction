# - Start Log -
tag @s add ggrPickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=ggrPickUpLogTarget]"},{"text":" picked up an artifact. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fID: §9#16\n§fValue: §b40\n§fName: §aGem of Greatness\n§fLore:\n§o§5This gem truly is great."}]}},{"text":")"}]
tag @s remove ggrPickUpLogTarget
# - End Log -

# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:16} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:16, tracked:1b, display: {Lore: ['{"text":"This gem truly is great."}'],Name: '{"bold":true,"color":"gold","text":"Gem of Greatness (40)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifacts/gem_of_greatness

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 16
scoreboard players add @s do2.artifacts.GGR 1
scoreboard players set $dungeon do2.run.foundArtifact 16
scoreboard players add $dungeon do2.artifacts.GGR 1
scoreboard players set $dungeon do2.run.artifactValue 40

# Agronet event
function do2:external/agronet/logs/pickups/gem_of_greatness