# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:29} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:29, tracked:1b, display: { Lore: [ '{"text":"An infinite source of transparent wisdom."}'],Name: '{"bold":true,"color":"gold","text":"Tome of the Hills (12)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifact/tome_of_the_hills

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 29
scoreboard players add @s do2.artifacts.THL 1
