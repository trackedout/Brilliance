# determine how many glow_berries we need to give them back while clearing them.
execute store result score @s do2.utility.glowberriesToGive run clear @s glow_berries{tracked:0b}

# - Start Log -
tag @s add glowberriesPickUpLogTarget
execute as @a[scores={do2.logs.pickups=2..}] if score @p[tag=glowberriesPickUpLogTarget] do2.utility.glowberriesToGive matches 1 run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=glowberriesPickUpLogTarget]"},{"text":" picked up §b"},{"color":"aqua","score":{"name":"@p[tag=glowberriesPickUpLogTarget]","objective":"do2.utility.glowberriesToGive"}},{"text":" glow berry."}]
execute as @a[scores={do2.logs.pickups=2..}] if score @p[tag=glowberriesPickUpLogTarget] do2.utility.glowberriesToGive matches 2.. run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=glowberriesPickUpLogTarget]"},{"text":" picked up §b"},{"color":"aqua","score":{"name":"@p[tag=glowberriesPickUpLogTarget]","objective":"do2.utility.glowberriesToGive"}},{"text":" glow berries."}]
tag @s remove glowberriesPickUpLogTarget
# - End Log -

# Agronet event
function do2:external/agronet/logs/pickups/glow_berries

#cycle giving glow_berries
function do2:events/picked_up/cycle/glow_berries