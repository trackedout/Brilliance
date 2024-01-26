# - Start Log -
tag @s add thlPickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=thlPickUpLogTarget]"},{"text":" picked up an artifact. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fID: §9#29\n§fValue: §b12\n§fName: §aTome of the Hills\n§fLore:\n§o§5An infinite source of transparent wisdom."}]}},{"text":")"}]
tag @s remove thlPickUpLogTarget
# - End Log -

# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:29} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:29, tracked:1b, display: { Lore: [ '{"text":"An infinite source of transparent wisdom."}'],Name: '{"bold":true,"color":"gold","text":"Tome of the Hills (12)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifacts/tome_of_the_hills

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 29
scoreboard players add @s do2.artifacts.THL 1
