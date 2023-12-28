# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:32} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:32,tracked:1b} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifact/pearl_of_cleansing

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 32
scoreboard players add @s do2.artifacts.PCL 1
