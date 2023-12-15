# is called when player picks up bone_meal
# player is adventure mode, and can't use regular bone_meal.
clear @s minecraft:bone_meal 1

# Anything else we want to allow bone_meal to be placed on?
give @s minecraft:bone_meal{CanPlaceOn:["cave_vines_plant", "sweet_berry_bush"]} 1

# revoke the advancement that called it.
# so player can additionally make more useable bone_meal
advancement revoke @s only do2:utility/bone_meal_pickup
