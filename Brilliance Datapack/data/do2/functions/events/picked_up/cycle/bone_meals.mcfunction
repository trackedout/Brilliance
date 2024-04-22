# Give a tracked bone_meal
give @s minecraft:bone_meal{CanPlaceOn:["cave_vines_plant", "sweet_berry_bush"], tracked:1b, display: {Name: '{"text":"❄☠ Bone Meal ☠❄"}'}}

# track a bone_meal pick up
scoreboard players add @s do2.run.items.bone_meals 1
scoreboard players add $dungeon do2.run.items.bone_meals 1

#track we gave a bone_meal to the players
scoreboard players remove @s do2.utility.bonemealsToGive 1

# If player doesn't have any more bone_meals left to give
# revoke the advancement that called it.
execute if score @s do2.utility.bonemealsToGive matches ..0 run advancement revoke @s only do2:utility/picked_up/bone_meals

# If we still have to give more bone_meals. Cycle it again.
execute if score @s do2.utility.bonemealsToGive matches 1.. run function do2:events/picked_up/cycle/bone_meals
