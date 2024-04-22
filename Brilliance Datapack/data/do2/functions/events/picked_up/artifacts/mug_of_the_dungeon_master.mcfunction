# - Start Log -
tag @s add mdmPickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=mdmPickUpLogTarget]"},{"text":" picked up an artifact. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fID: §9#36\n§fValue: §b54\n§fName: §aMug of the Dungeon Master\n§fLore:\n§o§5Drinking from this enlarged chalice is said to\ncause confusion, stuttering, and\nloss of perception."}]}},{"text":")"}]
tag @s remove mdmPickUpLogTarget
# - End Log -

# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:36} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:36, tracked:1b, display: {Lore: ['{"text":"Drinking from this enlarged chalice is said to"}','{"text":"cause confusion, stuttering, and"}','{"text":"loss of perception. "}'],Name: '{"bold":true,"color":"gold","text":"Mug of the Dungeon Master (54)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifacts/mug_of_the_dungeon_master

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 36
scoreboard players add @s do2.artifacts.MDM 1
scoreboard players set $dungeon do2.utility.artifactValue 54
