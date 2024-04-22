# - Start Log -
tag @s add ofpPickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=ofpPickUpLogTarget]"},{"text":" picked up an artifact. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fID: §9#39\n§fValue: §b38\n§fName: §aAn Old Friend's Pickaxe\n§fLore:\n§o§5Worn down through years of use,\nthis artifact will never be forgotten."}]}},{"text":")"}]
tag @s remove ofpPickUpLogTarget
# - End Log -

# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:39} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:39,tracked:1b, display: {Lore: ['{"text":"Worn down through years of use,"}', '{"text":"this artifact will never be forgotten."}'], Name: '{"bold":true,"color":"gold","text":"An Old Friend\'s Pickaxe (38)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifacts/an_old_friends_pickaxe

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 39
scoreboard players add @s do2.artifacts.OFP 1
scoreboard players set $dungeon do2.utility.artifactValue 38
