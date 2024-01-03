# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:15} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:15, tracked:1b, display: {Lore: ['{"text":"Grants deceptively overpowering combat prowess."}','{"text":"Also quite fashionable."}'],Name: '{"bold":true,"color":"gold","text":"Goggles of Symmetry (32)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifact/goggles_of_symmetry

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 15
scoreboard players add @s do2.artifacts.GGS 1
