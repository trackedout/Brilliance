# determine how many bone_meals we need to give them back while clearing them.
execute store result score @s do2.utility.bonemealsToGive run clear @s bone_meal{tracked:0b}

# - Start Log -
tag @s add bonemealPickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] if score @p[tag=bonemealPickUpLogTarget] do2.utility.bonemealsToGive matches 1 run tellraw @s ["",{"text":"§f[§9B§r]: "},{"selector":"@p[tag=bonemealPickUpLogTarget]"},{"text":" picked up §b"},{"color":"aqua","score":{"name":"@p[tag=bonemealPickUpLogTarget]","objective":"do2.utility.bonemealsToGive"}},{"text":" bonemeal."}]
execute as @a[scores={do2.logs.pickups=1..}] unless score @p[tag=bonemealPickUpLogTarget] do2.utility.bonemealsToGive matches 1 run tellraw @s ["",{"text":"§f[§9B§r]: "},{"selector":"@p[tag=bonemealPickUpLogTarget]"},{"text":" picked up §b"},{"color":"aqua","score":{"name":"@p[tag=bonemealPickUpLogTarget]","objective":"do2.utility.bonemealsToGive"}},{"text":" bonemeals."}]
tag @s remove bonemealPickUpLogTarget
# - End Log -

#cycle giving bone_meal
function do2:events/picked_up/cycle/bone_meals
