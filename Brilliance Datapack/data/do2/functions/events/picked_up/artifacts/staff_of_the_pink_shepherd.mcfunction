# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:44} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:44,tracked:1b} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifact/staff_of_the_pink_shepherd

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 44
scoreboard players add @s do2.artifacts.SPS 1
