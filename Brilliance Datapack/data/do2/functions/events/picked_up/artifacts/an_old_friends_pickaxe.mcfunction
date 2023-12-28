# is called when player picks up the artifact
clear @s iron_nugget{tracked:0b,CustomModelData:39} 1

# Give back the artifact but TRACKED this time.
give @s minecraft:iron_nugget{CustomModelData:39,tracked:1b} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/artifact/an_old_friends_pickaxe

# track an artifact pick up
scoreboard players set @s do2.run.foundArtifact 39
scoreboard players add @s do2.artifacts.OFP 1
