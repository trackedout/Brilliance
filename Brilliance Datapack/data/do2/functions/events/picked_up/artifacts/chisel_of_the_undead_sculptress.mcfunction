# - Start Log -
tag @s add cusPickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=cusPickUpLogTarget]"},{"text":" picked up an artifact. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fID: §9#12\n§fValue: §b19\n§fName: §aChisel of the Undead Sculptress\n§fLore:\n§o§5This macabre device bestows unlimited creativity\nand sarcasm to its wielder.  Mostly sarcasm."}]}},{"text":")"}]
tag @s remove cusPickUpLogTarget
# - End Log -

# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:12} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:12, tracked:1b, display: { Lore: [ '{"text":"This macabre device bestows unlimited creativity"}', '{"text":"and sarcasm to its wielder.  Mostly sarcasm."}'],Name: '{"bold":true,"color":"gold","text":"Chisel of the Undead Sculptress (19)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifacts/chisel_of_the_undead_sculptress

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 12
scoreboard players add @s do2.artifacts.CUS 1
scoreboard players set $dungeon do2.run.foundArtifact 12
scoreboard players add $dungeon do2.artifacts.CUS 1
scoreboard players set $dungeon do2.run.artifactValue 19
