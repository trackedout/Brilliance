# - Start Log -
tag @s add spsPickUpLogTarget
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=spsPickUpLogTarget]"},{"text":" picked up an artifact. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fID: §9#44\n§fValue: §b48\n§fName: §aStaff of the Pink Shepherd\n§fLore:\n§o§5Honestly... Nobody really knows\nwhat this thing does."}]}},{"text":")"}]
tag @s remove spsPickUpLogTarget
# - End Log -

# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:44} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:44, tracked:1b, display: { Lore: ['{"text":"Honestly... Nobody really knows"}','{"text":"what this thing does."}'],Name: '{"bold":true,"color":"gold","text":"Staff of the Pink Shepherd (48)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifacts/staff_of_the_pink_shepherd

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 44
scoreboard players add @s do2.artifacts.SPS 1
