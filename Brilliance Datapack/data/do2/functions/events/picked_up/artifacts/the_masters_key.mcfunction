# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:37} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:37, tracked:1b, display: { Lore: ['{"text":"What could it possibly open? "}'],Name: '{"bold":true,"color":"gold","text":"The Master\'s Key (60)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifact/the_masters_key

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 37
scoreboard players add @s do2.artifacts.MKY 1
