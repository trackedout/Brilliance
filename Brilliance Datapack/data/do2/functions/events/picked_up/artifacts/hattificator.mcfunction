# - Start Log -
tag @s add hatPickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=hatPickUpLogTarget]"},{"text":" picked up an artifact. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fID: §9#35\n§fValue: §b22\n§fName: §aHattificator #26\n§fLore:\n§o§5Hand knitted with care, this headpiece empowers the wearer with style, confidence, and +2 Charisma. Prerequisites: Must have a shaven noggin."}]}},{"text":")"}]
tag @s remove hatPickUpLogTarget
# - End Log -

# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:46} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:46, tracked:1b, display: {Lore: ['{"text":"Hand knitted with care, this headpiece empowers the wearer with style, confidence, and +2 Charisma."}','{"text":"Prerequisites: Must have a shaven noggin."}'], Name: '{"bold":true,"color":"gold","text":"Hattificator #26 (22)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifacts/hattificator

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 35
scoreboard players add @s do2.artifacts.WGG 1
scoreboard players set $dungeon do2.run.foundArtifact 35
scoreboard players add $dungeon do2.artifacts.WGG 1
scoreboard players set $dungeon do2.run.artifactValue 22

# Agronet event
function do2:external/agronet/logs/pickups/wand_of_gorgeousness
