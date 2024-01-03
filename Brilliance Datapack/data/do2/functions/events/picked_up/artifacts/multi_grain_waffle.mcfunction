# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:17} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:17, tracked:1b, display: { Lore: [ '{"text":"Often misspelled. Never duplicated."}'],Name: '{"bold":true,"color":"gold","text":"Multi-Grain Waffle (8)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifact/multi_grain_waffle

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 17
scoreboard players add @s do2.artifacts.MGW 1
