# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:12} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:12, tracked:1b, display: { Lore: [ '{"text":"This macabre device bestows unlimited creativity"}', '{"text":"and sarcasm to its wielder.  Mostly sarcasm."}'],Name: '{"bold":true,"color":"gold","text":"Chisel of the Undead Sculptress (19)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifact/chisel_of_the_undead_sculptress

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 12
scoreboard players add @s do2.artifacts.CUS 1
