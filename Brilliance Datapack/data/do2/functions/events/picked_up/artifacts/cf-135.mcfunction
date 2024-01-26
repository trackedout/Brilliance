# - Start Log -
tag @s add cf1PickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=cf1PickUpLogTarget]"},{"text":" picked up an artifact. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fID: §9#11\n§fValue: §b46\n§fName: §aCF-135\n§fLore:\n§o§5Let\'s GO!"}]}},{"text":")"}]
tag @s remove cf1PickUpLogTarget
# - End Log -

# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:11} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:11, tracked:1b, display: { Lore: [ '{"text":"Let\'s GO!"}'],Name: '{"bold":true,"color":"gold","text":"CF-135 (46)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifacts/cf-135

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 11
scoreboard players add @s do2.artifacts.CF1 1
