# determine how many crowns we need to give them back while clearing them.
execute store result score @s do2.utility.crownsToGive run clear @s iron_nugget{tracked:0b,CustomModelData:2}

# - Start Log -
tag @s add crownPickUpLogTarget
execute as @a[scores={do2.logs.pickups=2..}] if score @p[tag=crownPickUpLogTarget] do2.utility.crownsToGive matches 1 run tellraw @s ["",{"text":"§f[§9B§r]: "},{"selector":"@p[tag=crownPickUpLogTarget]"},{"text":" picked up §b"},{"color":"aqua","score":{"name":"@p[tag=crownPickUpLogTarget]","objective":"do2.utility.crownsToGive"}},{"text":" crown."}]
execute as @a[scores={do2.logs.pickups=2..}] if score @p[tag=crownPickUpLogTarget] do2.utility.crownsToGive matches 2.. run tellraw @s ["",{"text":"§f[§9B§r]: "},{"selector":"@p[tag=crownPickUpLogTarget]"},{"text":" picked up §b"},{"color":"aqua","score":{"name":"@p[tag=crownPickUpLogTarget]","objective":"do2.utility.crownsToGive"}},{"text":" crowns."}]
tag @s remove crownPickUpLogTarget
# - End Log -


#cycle giving crowns
function do2:events/picked_up/cycle/crowns

