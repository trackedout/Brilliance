# - Start Log -
tag @s add hstPickUpLogTarget
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=hstPickUpLogTarget]"},{"text":" picked up an artifact. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fID: §9#31\n§fValue: §b30\n§fName: §aThe Hidden Stache\n§fLore:\n§o§5Hidden inside you'll find an assortment of spoons\nand dapper upper lip hair."}]}},{"text":")"}]
tag @s remove hstPickUpLogTarget
# - End Log -

# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:31} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:31, tracked:1b, display: { Lore: [ '{"text":"Hidden inside you\'ll find an assortment of spoons"}','{"text":"and dapper upper lip hair."}'], Name: '{"bold":true,"color":"gold","text":"The Hidden Stache (30)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifacts/hidden_stache

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 31
scoreboard players add @s do2.artifacts.HST 1
