# determine how many embers we need to give them back while clearing them.
execute store result score @s do2.utility.embersToGive run clear @s iron_nugget{tracked:0b,CustomModelData:3}

# - Start Log -
tag @s add emberPickUpLogTarget
execute as @a[scores={do2.logs.pickups=2..}] if score @p[tag=emberPickUpLogTarget] do2.utility.embersToGive matches 1 run tellraw @s ["",{"text":"§f[§9B§r]: "},{"selector":"@p[tag=emberPickUpLogTarget]"},{"text":" picked up §b"},{"color":"aqua","score":{"name":"@p[tag=emberPickUpLogTarget]","objective":"do2.utility.embersToGive"}},{"text":" ember."}]
execute as @a[scores={do2.logs.pickups=2..}] if score @p[tag=emberPickUpLogTarget] do2.utility.embersToGive matches 2.. run tellraw @s ["",{"text":"§f[§9B§r]: "},{"selector":"@p[tag=emberPickUpLogTarget]"},{"text":" picked up §b"},{"color":"aqua","score":{"name":"@p[tag=emberPickUpLogTarget]","objective":"do2.utility.embersToGive"}},{"text":" embers."}]
tag @s remove emberPickUpLogTarget
# - End Log -

# Agronet event
function do2:external/agronet/logs/pickups/embers

#cycle giving embers
function do2:events/picked_up/cycle/embers