# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:11} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:11, tracked:1b, display: { Lore: [ '{"text":"Let\'s GO!"}'],Name: '{"bold":true,"color":"gold","text":"CF-135 (46)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifact/cf-135

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 11
scoreboard players add @s do2.artifacts.CF1 1
