# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:33} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:33, tracked:1b, display: {Lore: ['{"text":"Eye protection worthy of a king."}'], Name: '{"bold":true,"color":"gold","text":"Shades of the Dog (9)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifact/shades_of_the_dog

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 33
scoreboard players add @s do2.artifacts.SHD 1
