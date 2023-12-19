# is called when player picks up a bomb
clear @s iron_nugget{untracked:1b,CustomModelData:208} 1

# Give back bomb but TRACKED this time.
give @s minecraft:iron_nugget{untracked:1b,CustomModelData:208,tracked:1b} 1

# revoke the advancement that called it.
advancement revoke @s only do2:utility/picked_up/bombs

# track a bomb pick up
scoreboard players add @s do2.run.items.bombs 1
