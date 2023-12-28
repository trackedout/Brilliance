# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:31} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:31,tracked:1b} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifact/hidden_stache

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 31
scoreboard players add @s do2.artifacts.HST 1
