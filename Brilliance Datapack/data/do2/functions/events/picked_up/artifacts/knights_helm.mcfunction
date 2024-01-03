# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:41} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:41, tracked:1b, display: { Lore: [ '{"text":"Yep. It\'s knightly. Well and good."}'],Name: '{"bold":true,"color":"gold","text":"Knight\'s Helm (23)"}'}} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifact/knights_helm

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 41
scoreboard players add @s do2.artifacts.KNH 1
