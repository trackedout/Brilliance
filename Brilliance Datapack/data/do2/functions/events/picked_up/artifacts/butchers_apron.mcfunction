# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:40} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:40,tracked:1b} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifact/butchers_apron

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 40
scoreboard players add @s do2.artifacts.BAP 1
