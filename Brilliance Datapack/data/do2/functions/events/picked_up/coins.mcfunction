# determine how many coins we need to give them back while clearing them.
execute store result score @s do2.utility.coinsToGive run clear @s iron_nugget{tracked:0b,CustomModelData:1}

# - Start Log -
tag @s add coinPickUpLogTarget
execute as @a[scores={do2.logs.pickups=2..}] if score @p[tag=coinPickUpLogTarget] do2.utility.coinsToGive matches 1 run tellraw @s ["",{"text":"§f[§9B§r]: "},{"selector":"@p[tag=coinPickUpLogTarget]"},{"text":" picked up §b"},{"color":"aqua","score":{"name":"@p[tag=coinPickUpLogTarget]","objective":"do2.utility.coinsToGive"}},{"text":" coin."}]
execute as @a[scores={do2.logs.pickups=2..}] if score @p[tag=coinPickUpLogTarget] do2.utility.coinsToGive matches 2.. run tellraw @s ["",{"text":"§f[§9B§r]: "},{"selector":"@p[tag=coinPickUpLogTarget]"},{"text":" picked up §b"},{"color":"aqua","score":{"name":"@p[tag=coinPickUpLogTarget]","objective":"do2.utility.coinsToGive"}},{"text":" coins."}]
tag @s remove coinPickUpLogTarget
# - End Log -

#cycle giving coins
function do2:events/picked_up/cycle/coins

