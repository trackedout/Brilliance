# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:14} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:14, tracked:1b, display: { Lore: ['{"text":"The one that started it all. Accept no substitutes"}'],Name: '{"bold":true,"color":"gold","text":"The Slab (50)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifact/the_slab

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 14
scoreboard players add @s do2.artifacts.TSL 1
