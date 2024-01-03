# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:18} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:18, tracked:1b, display: {Lore: ['{"text":"Gaze in Wonder. It seems to look back at you."}'],Name: '{"bold":true,"color":"gold","text":"Hypnotic Bandana (21)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifact/hypnotic_bandana

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 18
scoreboard players add @s do2.artifacts.HYB 1
