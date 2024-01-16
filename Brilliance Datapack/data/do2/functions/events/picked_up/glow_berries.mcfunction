# is called when player picks up bone_meal
# player is adventure mode, and can't use regular bone_meal.
clear @s glow_berries{tracked:0b} 1

# Anything else we want to allow bone_meal to be placed on?
give @s minecraft:glow_berries{tracked:1b, display: {Name: '{"text":"❄☠ Glow Berries ☠❄"}'}} 1

# revoke the advancement that called it.
# so player can additionally make more usable bone_meal
advancement revoke @s only do2:utility/picked_up/glow_berries

# track a bone_meal pick up
scoreboard players add @s do2.run.items.glow_berries 1
