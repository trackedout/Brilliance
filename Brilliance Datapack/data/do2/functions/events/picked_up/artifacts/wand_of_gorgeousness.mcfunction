# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:35} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:35, tracked:1b, display: { Lore: [ '{"text":"Makes everything gorgeous.  Of course."}'],Name: '{"bold":true,"color":"gold","text":"Wand of Gorgeousness (22)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifact/wand_of_gorgeousness

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 35
scoreboard players add @s do2.artifacts.WGG 1
