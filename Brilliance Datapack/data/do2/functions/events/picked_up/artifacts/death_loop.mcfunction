# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:34} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:34, tracked:1b, display: { Lore: [ '{"text":"Causes an neverending stream of comical deaths."}'],Name: '{"bold":true,"color":"gold","text":"Death Loop (13)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifact/death_loop

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 34
scoreboard players add @s do2.artifacts.DLP 1
