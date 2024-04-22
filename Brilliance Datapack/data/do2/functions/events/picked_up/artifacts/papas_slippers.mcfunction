# - Start Log -
tag @s add ppsPickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=ppsPickUpLogTarget]"},{"text":" picked up an artifact. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fID: §9#30\n§fValue: §b10\n§fName: §aPapa's Slippers\n§fLore:\n§o§5Sweet faces to take you sweet places"}]}},{"text":")"}]
tag @s remove ppsPickUpLogTarget
# - End Log -

# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:30} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:30, tracked:1b, display: { Lore: [ '{"text":"Sweet faces to take you sweet places"}'], Name: '{"bold":true,"color":"gold","text":"Papa\'s Slippers (10)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifacts/papas_slippers

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 30
scoreboard players add @s do2.artifacts.PPS 1
scoreboard players set $dungeon do2.utility.artifactValue 10
