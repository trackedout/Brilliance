# determine how many pumpkins we need to give them back while clearing them.
execute store result score @s do2.utility.pumpkinsToGive run clear @s pumpkin{tracked:0b}

# - Start Log -
tag @s add pumpkinPickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] if score @p[tag=pumpkinPickUpLogTarget] do2.utility.pumpkinsToGive matches 1 run tellraw @s ["",{"text":"§f[§9B§r]: "},{"selector":"@p[tag=pumpkinPickUpLogTarget]"},{"text":" picked up §b"},{"color":"aqua","score":{"name":"@p[tag=pumpkinPickUpLogTarget]","objective":"do2.utility.pumpkinsToGive"}},{"text":" halloween pumpkin."}]
execute as @a[scores={do2.logs.pickups=1..}] unless score @p[tag=pumpkinPickUpLogTarget] do2.utility.pumpkinsToGive matches 1 run tellraw @s ["",{"text":"§f[§9B§r]: "},{"selector":"@p[tag=pumpkinPickUpLogTarget]"},{"text":" picked up §b"},{"color":"aqua","score":{"name":"@p[tag=pumpkinPickUpLogTarget]","objective":"do2.utility.pumpkinsToGive"}},{"text":" halloween pumpkins."}]
tag @s remove pumpkinPickUpLogTarget
# - End Log -

#cycle giving pumpkins
function do2:events/picked_up/cycle/halloween_pumpkins
