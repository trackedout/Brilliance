# - Start Log -
tag @s add knhPickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=knhPickUpLogTarget]"},{"text":" picked up an artifact. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fID: §9#41\n§fValue: §b23\n§fName: §aKnight's Helm\n§fLore:\n§o§5Yep. It\'s knightly. Well and good."}]}},{"text":")"}]
tag @s remove knhPickUpLogTarget
# - End Log -

# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:41} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:41, tracked:1b, display: { Lore: [ '{"text":"Yep. It\'s knightly. Well and good."}'],Name: '{"bold":true,"color":"gold","text":"Knight\'s Helm (23)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifacts/knights_helm

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 41
scoreboard players add @s do2.artifacts.KNH 1
scoreboard players set $dungeon do2.utility.artifactValue 23
