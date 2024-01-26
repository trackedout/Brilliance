# determine how many rusty_kits we need to give them back while clearing them.
execute store result score @s do2.utility.kitsToGive run clear @s iron_ingot{tracked:0b,CustomModelData:2}

# - Start Log -
tag @s add kitPickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] if score @p[tag=kitPickUpLogTarget] do2.utility.kitsToGive matches 1 run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=kitPickUpLogTarget]"},{"text":" picked up §b"},{"color":"aqua","score":{"name":"@p[tag=kitPickUpLogTarget]","objective":"do2.utility.kitsToGive"}},{"text":" rusty repair kit."}]
execute as @a[scores={do2.logs.pickups=1..}] unless score @p[tag=kitPickUpLogTarget] do2.utility.kitsToGive matches 1 run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=kitPickUpLogTarget]"},{"text":" picked up §b"},{"color":"aqua","score":{"name":"@p[tag=kitPickUpLogTarget]","objective":"do2.utility.kitsToGive"}},{"text":" rusty repair kits."}]
tag @s remove kitPickUpLogTarget
# - End Log -

#cycle giving rusty_kits
function do2:events/picked_up/cycle/rusty_kits

