# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:10} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:10, tracked:1b, display: { Lore: ['{"text":"Perfect sleeping every time."}'],Name: '{"bold":true,"color":"gold","text":"Pocket Watch of Shreeping (36)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifact/pocket_watch_of_shreeping

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 10
scoreboard players add @s do2.artifacts.PWS 1
