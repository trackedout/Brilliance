# determine how many shard_fragments we need to give them back while clearing them.
execute store result score @s do2.utility.shard_fragmentsToGive run clear @s amethyst_shard{tracked:0b,CustomModelData:1}

# - Start Log -
tag @s add shard_fragmentPickUpLogTarget
execute as @a[scores={do2.logs.pickups=2..}] if score @p[tag=shard_fragmentPickUpLogTarget] do2.utility.shard_fragmentsToGive matches 1 run tellraw @s ["",{"text":"§f[§9B§r]: "},{"selector":"@p[tag=shard_fragmentPickUpLogTarget]"},{"text":" picked up §b"},{"color":"aqua","score":{"name":"@p[tag=shard_fragmentPickUpLogTarget]","objective":"do2.utility.shard_fragmentsToGive"}},{"text":" Shard Fragment."}]
execute as @a[scores={do2.logs.pickups=2..}] if score @p[tag=shard_fragmentPickUpLogTarget] do2.utility.shard_fragmentsToGive matches 2.. run tellraw @s ["",{"text":"§f[§9B§r]: "},{"selector":"@p[tag=shard_fragmentPickUpLogTarget]"},{"text":" picked up §b"},{"color":"aqua","score":{"name":"@p[tag=shard_fragmentPickUpLogTarget]","objective":"do2.utility.shard_fragmentsToGive"}},{"text":" Shard Fragments."}]
tag @s remove shard_fragmentPickUpLogTarget
# - End Log -

# Agronet event
function do2:external/agronet/logs/pickups/shard_fragment

#cycle giving shard_fragments
function do2:events/picked_up/cycle/shard_fragment
